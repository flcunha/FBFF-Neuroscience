function [list_delays,list_delays_depth,fb_timecourse,ff_timecourse,alld_fb_timecourse,alld_ff_timecourse,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max,resnorm] = ProcessFBFF(sess_timecourses,tp,contrast_list,data_type,idelay,num_trials_sess,iexample,avgc0,perc)
%this function will calculate all the fb/ff information for a specific set
%of timecourses, one for each contrast.
    num_samples_alld=10;
    num_samples=1;
    num_samples_delay_alld=100;
    num_samples_delay=1;
    sess_timecourses(isnan(sess_timecourses))=0;
    num_sessions=size(sess_timecourses,1);
    [timecourses, num_trials]=CalcSessTimecourses(sess_timecourses,num_trials_sess);
    [depth_timecourses, ~]=CalcDepthTimecourses(timecourses,num_trials);
    [depth_timecourses_full, num_trials_depth_full]=CalcDepthTimecourses(sess_timecourses,num_trials_sess);
    s=size(depth_timecourses_full);
    depth_timecourses_full=reshape(depth_timecourses_full,[s(1:end-1) 1 s(end)]);
    num_trials_depth_full=reshape(num_trials_depth_full,[size(num_trials_depth_full) 1]);
    window_left=15;
    window_right=15;
    num_contrasts=size(timecourses,1);
    num_depths=size(timecourses,2);
    num_tp=size(timecourses,3);
    list_delays=zeros(num_contrasts,num_depths,num_tp);
    list_delays_depth=zeros(num_contrasts,1,num_tp);
    fb_timecourse=zeros(num_depths,num_tp);
    ff_timecourse=zeros(num_depths,num_tp);
    alld_fb_timecourse=zeros(1,num_tp);
    alld_ff_timecourse=zeros(1,num_tp);
    alld_fb_min=zeros(1,num_tp);
    alld_fb_max=zeros(1,num_tp);
    alld_ff_min=zeros(1,num_tp);
    alld_ff_max=zeros(1,num_tp);
    tp_zero=find(tp<0,1,'last');
    if tp(1)<-0.02
        baseline=0;
    else
        baseline=0.02;
    end
    
%this will plot some examples during the calculation to validate the steps
%being made.
    if iexample==1
        good=0;
        num_printed_examples=0;
        num_examples_ppage=5;
        num_examples=3*num_examples_ppage;
        num_maxpicks=100*num_examples;
        list_time=zeros(1,num_examples);
        list_depth=zeros(1,num_examples);
        num_picks=0;
        while good<num_examples
            time_rand=randi([find(tp>=0.06,1,'first') find(tp<=0.15,1,'last')],1);
            depth_rand=randi([1 size(timecourses,2)],1);
            if num_picks>num_maxpicks || (sum(sum(abs(timecourses(:,depth_rand,time_rand-10:time_rand+10))))>0 && (isempty(find(abs(list_depth-depth_rand)<=1,1)) || num_examples>size(timecourses,2)/2))
                good=good+1;
                list_time(good)=time_rand;
                list_depth(good)=depth_rand;
            end
            num_picks=num_picks+1;
        end
    end
    
%...Then we calculate the delays of the timecourses...
%    tic
    if idelay==1
      list_delays_depth=BootstrapDelay(depth_timecourses_full,tp,data_type,num_trials_depth_full,num_samples_delay_alld);
      list_delays=BootstrapDelay(sess_timecourses,tp,data_type,num_trials_sess,num_samples_delay);
    end    
    
    %...Then we calculate the fb/ff for all depths combined...
    tic
    if data_type==2
        for session=1:num_sessions
            for contrast=1:num_contrasts
                depth_timecourses_full(session,contrast,1,:)=depth_timecourses_full(session,contrast,1,:)-mean(depth_timecourses_full(session,contrast,1,1:find(tp<baseline,1,'last')));            
                for depth=1:num_depths
                    sess_timecourses(session,contrast,depth,:)=sess_timecourses(session,contrast,depth,:)-mean(sess_timecourses(session,contrast,depth,1:find(tp<baseline,1,'last')));
                end
            end
        end
    end
    s=size(depth_timecourses_full);
    [fb_act,ff_act,fb_min,fb_max,ff_min,ff_max,resnorm]=BootstrapFBFF(reshape(depth_timecourses_full,[s(1:2) s(4)]),contrast_list,data_type,perc,list_delays_depth,num_trials_depth_full,num_samples_alld);
	alld_fb_timecourse=fb_act;
	alld_ff_timecourse=ff_act;
    alld_fb_min=fb_min;
    alld_ff_min=ff_min;
    alld_fb_max=fb_max;
    alld_ff_max=ff_max;

%...Then we calculate the fb/ff per depth...
%    tic
    for depth=1:num_depths
        tc=sess_timecourses(:,:,depth,:);
        s=size(tc);
        [fb_act,ff_act,~,~,~,~,resnorm]=BootstrapFBFF(reshape(tc,[s(1:2) s(4)]),contrast_list,data_type,perc,list_delays(:,depth,:),squeeze(num_trials_sess(:,:,depth)),num_samples);
        fb_timecourse(depth,:)=fb_act;
        ff_timecourse(depth,:)=ff_act;
    end

%smoothes all values obtained, with either 1D or 2D smoothing
    ff_timecourse=Smooth2D(ff_timecourse,tp);
    fb_timecourse=Smooth2D(fb_timecourse,tp);
    alld_ff_timecourse=smooth(alld_ff_timecourse,11,'moving');
    alld_fb_timecourse=smooth(alld_fb_timecourse,11,'moving');
    alld_fb_min=smooth(alld_fb_min,11,'moving');
    alld_fb_max=smooth(alld_fb_max,11,'moving');
    alld_ff_min=smooth(alld_ff_min,11,'moving');
    alld_ff_max=smooth(alld_ff_max,11,'moving');
end

