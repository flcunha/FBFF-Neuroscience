close all
clear all
fb_peaks=[0.07 60 30; 0.2 20 40; 0.15 85 40; 0.03 78 20];
%fb_peaks(:,2)=fb_peaks(:,2)/2;
%fb_peaks=[];
ff_peaks=[0.06 80 20; 0.09 70 60; 0.125 120 40; 0.2 90 60];
%ff_peaks(:,2)=ff_peaks(:,2)/2;
%ff_peaks=[];
noise_level=20;
contrast_list=[3 5 10 20 40 50 70 100];
contrast_list=fliplr(contrast_list);
num_contrasts=length(contrast_list);
dt=1/1000;
tp=-0.1:dt:0.3;
num_tp=length(tp);
colorm=hot(num_contrasts+7);
data_type=2;
num_printed_examples=0;
num_examples_ppage=5;
num_sessions=100;
delays=zeros(num_contrasts,num_tp);
for timep=130:250
    for contrast=2:num_contrasts
        delays(contrast,timep)=round((contrast-1)*(timep-130)/25);
    end
end
for timep=251:num_tp
    delays(:,timep)=min(num_tp-timep,delays(:,250));
end
%fill the delays matrix

fb_gaussians=zeros(size(fb_peaks,1),num_contrasts,num_tp);
ff_gaussians=zeros(size(ff_peaks,1),num_contrasts,num_tp);
model_fb=zeros(1,num_tp);
model_ff=zeros(1,num_tp);
if noise_level==0
    noise_level=-Inf;
end


noise=wgn(1,num_tp,noise_level);
noise=SmoothLFPFast(noise,tp);
std=400;

for i=1:size(fb_peaks,1)
    for contrast=1:num_contrasts
        tpi=find(abs(tp-fb_peaks(i,1))<10^-6,1,'first');b=fb_peaks(i,2)*transpose(gausswin(1+2*min(num_tp-tpi,tpi-1),std/fb_peaks(i,3)));
        fb_gaussians(i,contrast,:)=[zeros(1,max(0,-1+tpi-(401-tpi)))  b         zeros(1,max(0,1-tpi+(401-tpi)))  ];
%        fb_gaussians(i,contrast,:)=[zeros(1,length(find(tp<fb_peaks(i,1)-fb_peaks(i,3)*dt-10e-6)))  fb_peaks(i,2)*transpose(gausswin(fb_peaks(i,3)*2+1))           zeros(1,length(find(tp>fb_peaks(i,1)+fb_peaks(i,3)*dt+10e-6)))];
    end
end

for i=1:size(ff_peaks,1)
    for contrast=1:num_contrasts
        tpi=find(abs(tp-ff_peaks(i,1))<10^-6,1,'first');b=ff_peaks(i,2)*log(contrast_list(contrast)+1)/log(max(contrast_list)+1)*transpose(gausswin(1+2*min(num_tp-tpi,tpi-1),std/ff_peaks(i,3)));
        ff_gaussians(i,contrast,:)=[zeros(1,max(0,-1+tpi-(401-tpi)))  b         zeros(1,max(0,1-tpi+(401-tpi)))  ];
%        ff_gaussians(i,contrast,:)=[zeros(1,length(find(tp<ff_peaks(i,1)-ff_peaks(i,3)*dt-10e-6)))  ff_peaks(i,2)*log(contrast_list(contrast)+1)/log(max(contrast_list)+1)*transpose(gausswin(ff_peaks(i,3)*2+1))           zeros(1,length(find(tp>ff_peaks(i,1)+ff_peaks(i,3)*dt+10e-6)))];
    end
end
timecourses=zeros(num_sessions,num_contrasts,1,num_tp);
ff_timecourses=zeros(num_contrasts,1,num_tp);
fb_timecourses=zeros(num_contrasts,1,num_tp);
fb_timecourses=squeeze(sum(fb_gaussians,1));
for session=1:num_sessions
    for contrast=1:num_contrasts
        for timep=1:num_tp
            if timep+delays(contrast,timep)>num_tp
                ff_timecourses(contrast,timep)=sum(ff_gaussians(:,contrast,num_tp));
            else
                ff_timecourses(contrast,timep)=sum(ff_gaussians(:,contrast,timep-delays(contrast,timep)));
            end
        end
    end
end
for session=1:num_sessions
    for contrast=1:num_contrasts
        noise=wgn(1,num_tp,noise_level);
        noise=SmoothLFPFast(noise,tp);
        timecourses(session,contrast,1,:)=ff_timecourses(contrast,:)+fb_timecourses(contrast,:)+transpose(noise);
    end
end

ff_timecourses_aux(1,:,1,:)=ff_timecourses;
[avgc0, perc]=CalcDataProg(ff_timecourses_aux,1,tp);    
idelay=1;
num_trials_sess(:,:,1)=ones(num_sessions,num_contrasts,1);
iexample=0;
%model_delays=delays;
[~,model_delays,~,~,model_fb,model_ff,~,~,~,~,restot] = ProcessFBFF(timecourses,tp,contrast_list,data_type,idelay,num_trials_sess,iexample,avgc0,perc);


model_fb=smooth(model_fb,11,'moving');
model_ff=smooth(model_ff,11,'moving');

timecourses=timecourses(1,:,1,:);
timecourses=squeeze(timecourses);

figure
    
subplot(3,3,7)
if data_type==1
    model_fb_adj=model_fb;
    for j=1:num_tp
        model_fb_adj(j)=sum(model_fb(1:j));
    end
    model_fb=model_fb_adj;
    plot(tp,model_fb,'color',[0 0 0.5],'LineWidth',2);hold on;
else
    plot(tp,model_fb,'color',[0 0 0.5],'LineWidth',2);hold on;
end
title('Model Feedback Values');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on

subplot(3,3,8)
if data_type==1
    model_ff_adj=model_ff;
    for j=1:num_tp
        model_ff_adj(j)=sum(model_ff(1:j));
    end
    model_ff=model_ff_adj;
    plot(tp,model_ff,'color',[0 0 0.5],'LineWidth',2);hold on;
else
    plot(tp,model_ff,'color',[0 0 0.5],'LineWidth',2);hold on;
end
title('Model Feedforward Values');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on


subplot(3,3,1)
% for i=1:num_contrasts
% %    plot(tp,[0 abs(diff(fb_timecourses(i,:)))],'Color',colorm(i,:));hold on
%     plot(tp,fb_timecourses(i,:),'Color',colorm(i,:));hold on
% end
plot(tp,fb_timecourses(1,:),'color',[0 0 0.5],'LineWidth',2);hold on
title('Simulated FB Data');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on

subplot(3,3,2)
% for i=1:num_contrasts
%     plot(tp,ff_timecourses(i,:),'Color',colorm(i,:));hold on
% end
plot(tp,ff_timecourses(1,:),'color',[0 0 0.5],'LineWidth',2);hold on
title('Simulated FF Data');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on

subplot(3,3,3)
for i=1:num_contrasts
    plot(tp,delays(i,:),'Color',colorm(i,:));hold on
end
title('Simulated Delays Data');
xlabel('Time (ms)');
ylabel('Delays');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on


subplot(3,2,3)
for i=1:num_contrasts
    plot(tp,ff_timecourses(i,:)+fb_timecourses(i,:),'Color',colorm(i,:));hold on
end
title('Simulated Data Without noise = FB Data + FF Data');
xlabel('Time (ms)');
ylabel('Activity');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on

subplot(3,2,4)
for i=1:num_contrasts
    plot(tp,timecourses(i,:),'Color',colorm(i,:));hold on
end
title('Simulated Data = FB Data + FF Data + Noise');
xlabel('Time (ms)');
ylabel('Activity');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on

subplot(3,3,9)
for i=1:num_contrasts
    plot(tp,model_delays(i,:),'Color',colorm(i,:));hold on
end
title('Model Delays Data');
xlabel('Time (ms)');
ylabel('Delays');
axis([tp(1),tp(end),0,1])
axis 'auto y'
grid on


return


