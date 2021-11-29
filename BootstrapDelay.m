function [list_delays] = BootstrapDelay(sess_timecourses,tp,data_type,num_trials_sess,num_samples)
%This function does a bootstrap over delay calculations, with number of
%sammples defined by num_samples
    num_picks=size(sess_timecourses,1);
    num_contrasts=size(sess_timecourses,2);
    num_depths=size(sess_timecourses,3);
    num_tp=size(sess_timecourses,4);
    num_trials_tot=zeros(num_contrasts,num_depths,num_tp);
    list_delays=zeros(num_contrasts,num_depths,num_tp);

% the first run of delay calculations is with all sessions being chosen
% once, before the actual bootstrapping with randomized samples takes place
    delays_bstrap=zeros(num_samples,num_contrasts,num_depths,num_tp);
%flc     for a=1:size(sess_timecourses,1)
%         for b=1:size(sess_timecourses,2)
%             for c=1:size(sess_timecourses,3)
%                 sess_timecourses(a,b,c,:)=SmoothLFPFast(squeeze(sess_timecourses(a,b,c,:)),tp);
%             end
%         end
%     end
    timecourse_bstrap=CalcSessTimecourses(sess_timecourses,num_trials_sess);
	delays_bstrap(1,:,:,:)=ProcessDelay(timecourse_bstrap,tp,data_type);
    
    for i=2:num_samples
        timecourse_bstrap=zeros(num_contrasts,num_depths,num_tp);
        num_trials_tot=zeros(num_contrasts,num_depths);
        for pick=1:num_picks
            sess=randi([1 num_picks],1);
            timecourse_bstrap=timecourse_bstrap+permute(sess_timecourses(sess,:,:,:),[2,3,4,1]).*repmat(permute(num_trials_sess(sess,:,:),[2 3 1]),[1 1 num_tp]);
            num_trials_tot=num_trials_tot+repmat(permute(num_trials_sess(sess,:,:),[2 3 1]),[1 1 num_tp]);
        end
        timecourse_bstrap=timecourse_bstrap./num_trials_tot;
        delays_bstrap(i,:,:,:)=ProcessDelay(timecourse_bstrap,tp,data_type);
    end
    
    
    
% For each contrast/depth/timepoint, calculates the confidence interval of
% [0.1:0.9]. The final delay returned will be the average of the confidence
% interval
    for ctr=1:num_contrasts
        for dpt=1:num_depths
            for timep=1:num_tp
                delay_aux=sort(squeeze(delays_bstrap(:,ctr,dpt,timep)));
                delay_min=ceil(0.25*length(delay_aux));
                delay_max=max(1,floor(0.75*length(delay_aux)));
                list_delays(ctr,dpt,timep)=round(mean(delay_aux(delay_min:delay_max)));
            end
        end
    end
%     if num_depths==1
%         figure
%         for contrast=1:num_contrasts
%             subplot(2,4,contrast)
%             plot(squeeze(list_delays(contrast,1,:)));
%         end
%     end

end

