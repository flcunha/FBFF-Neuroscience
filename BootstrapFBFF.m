function [fb_act,ff_act,fb_minbound,fb_maxbound,ff_minbound,ff_maxbound,resnorm] = BootstrapFBFF(activity,contrast_list,data_type,perc,delays,num_trials_sess,num_samples)
%This function does a bootstrap over fbff calculations, with number of
%sammples defined by num_samples
    num_picks=size(activity,1);
    num_contrasts=size(activity,2);
    num_tp=size(activity,3);
    
% the first run of fbff calculations is with all sessions being chosen
% once, before the actual bootstrapping with randomized samples takes place
    fb_bstrap=zeros(num_samples,num_tp);
    ff_bstrap=zeros(num_samples,num_tp);
    activity_bstrap=CalcSessTimecourses(activity,num_trials_sess);
	[fb_act,ff_act,resnorm]=CalcFBFF(activity_bstrap,contrast_list,data_type,perc,squeeze(delays));
    fb_bstrap(1,:)=fb_act;
	ff_bstrap(1,:)=ff_act;

    for i=2:num_samples
        activity_bstrap=zeros(num_contrasts,num_tp);
        num_trials_tot=zeros(num_contrasts,num_tp);
        for pick=1:num_picks
            sess=randi([1 num_picks],1);
            a=0;
            while nnz(num_trials_sess(sess,:))==0&&a<200
                sess=randi([1 num_picks],1);
                a=a+1;
            end
            activity_bstrap=activity_bstrap+permute(activity(sess,:,:),[2,3,1]).*repmat(permute(num_trials_sess(sess,:),[2 1]),[1 num_tp]);
            num_trials_tot=num_trials_tot+repmat(permute(num_trials_sess(sess,:),[2 1]),[1 num_tp]);
        end
        activity_bstrap=activity_bstrap./num_trials_tot;
        activity_bstrap(isnan(activity_bstrap))=0;
    	[fb_act,ff_act,resnorm]=CalcFBFF(activity_bstrap,contrast_list,data_type,perc,squeeze(delays));
        fb_bstrap(i,:)=fb_act;
        ff_bstrap(i,:)=ff_act;
    end
    
% Calculates the confidence interval of [0.1:0.9] for ff/fb
% The final values returned will be the average of the confidence interval
    for timep=1:num_tp
        fb_aux=sort(fb_bstrap(:,timep));
        ff_aux=sort(ff_bstrap(:,timep));
        if length(fb_aux)>=3            
            fb_minbound(timep)=fb_aux(max(floor(0.1*length(fb_aux)),2));
            fb_maxbound(timep)=fb_aux(min(ceil(0.9*length(fb_aux)),length(fb_aux)-1));
            ff_minbound(timep)=ff_aux(max(floor(0.1*length(ff_aux)),2));
            ff_maxbound(timep)=ff_aux(min(ceil(0.9*length(ff_aux)),length(ff_aux)-1));
            fb_act(timep)=mean(fb_aux(max(floor(0.1*length(fb_aux)),2):min(ceil(0.9*length(fb_aux)),length(fb_aux)-1)));
            ff_act(timep)=mean(ff_aux(max(floor(0.1*length(ff_aux)),2):min(ceil(0.9*length(ff_aux)),length(ff_aux)-1)));
        else
            fb_minbound(timep)=fb_aux(1);
            fb_maxbound(timep)=fb_aux(end);
            ff_minbound(timep)=ff_aux(1);
            ff_maxbound(timep)=ff_aux(end);
            fb_act(timep)=mean(fb_aux);
            ff_act(timep)=mean(ff_aux);
        end            
    end
end
    
