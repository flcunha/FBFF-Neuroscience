function [timecourses, num_trials] = CalcSessTimecourses(sess_timecourses,num_trials_sess)
%this function receives a timecourse with several sessions, along with an
%indication of amount of trials per sessions, sums all sessions timecourses 
%together weighted by the amount of trials and returns the weighted
%timecourse with all sessions combined
    switch ndims(sess_timecourses)
        case 5
            num_sessions=size(sess_timecourses,1);
            num_attentions=size(sess_timecourses,2);
            num_contrasts=size(sess_timecourses,3);
            num_depths=size(sess_timecourses,4);
            num_tp=size(sess_timecourses,5);
            timecourses=zeros(num_attentions,num_contrasts,num_depths,num_tp);
            s=size(sess_timecourses(:,:,:,:,:));
            for sess=1:num_sessions
                timecourses=timecourses+reshape(sess_timecourses(sess,:,:,:,:).*repmat(num_trials_sess(sess,:,:,:),[1 1 1 1 num_tp]),[s(2:end)]);
            end
            timecourses=timecourses(:,:,:,:)./repmat(reshape(sum(num_trials_sess(:,:,:,:),1),[s(2:end-1)]),[1 1 1 num_tp]);
        case 4
            num_sessions=size(sess_timecourses,1);
            num_contrasts=size(sess_timecourses,2);
            num_depths=size(sess_timecourses,3);
            num_tp=size(sess_timecourses,4);
            timecourses=zeros(num_contrasts,num_depths,num_tp);
            s=size(sess_timecourses);
            for sess=1:num_sessions
                timecourses=timecourses+reshape(sess_timecourses(sess,:,:,:).*repmat(num_trials_sess(sess,:,:),[1 1 1 num_tp]),[s(2:end)]);
            end
            timecourses=timecourses./repmat(reshape(sum(num_trials_sess,1),[size(sum(num_trials_sess,1),2) size(sum(num_trials_sess,1),3)]),[1 1 num_tp]);
        case 3
            num_sessions=size(sess_timecourses,1);
            num_contrasts=size(sess_timecourses,2);
            num_tp=size(sess_timecourses,3);
            timecourses=zeros(num_contrasts,num_tp);
            s=size(sess_timecourses);
            for sess=1:num_sessions
                timecourses=timecourses+reshape(sess_timecourses(sess,:,:).*repmat(num_trials_sess(sess,:),[1 1 num_tp]),[s(2:end)]);
            end
            timecourses=timecourses./repmat(transpose(sum(num_trials_sess,1)),[1 num_tp]);
    end
	timecourses(isnan(timecourses))=0;
	s2=size(num_trials_sess);
    if ndims(num_trials_sess)>2
    	num_trials=reshape(sum(num_trials_sess,1),s2(2:end));
    else
        num_trials=sum(num_trials_sess,1);
    end
end

