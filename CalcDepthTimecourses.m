function [timecourses, num_trials] = CalcDepthTimecourses(depth_timecourses,num_trials_depth)
%this function receives a timecourse with several depths, along with an
%indication of amount of trials per depth, sums all depth timecourses 
%together weighted by the amount of trials and returns the weighted
%timecourse with all depths combined
    switch ndims(depth_timecourses)
        case 3
            num_contrasts=size(depth_timecourses,1);
            num_depths=size(depth_timecourses,2);
            num_tp=size(depth_timecourses,3);
            timecourses=zeros(num_contrasts,num_tp);
            s=size(depth_timecourses);
            for depth=1:num_depths
                timecourses=timecourses+reshape(depth_timecourses(:,depth,:).*repmat(num_trials_depth(:,depth),[1 1 num_tp]),[s(1) s(end)]);
            end
            timecourses=timecourses(:,:)./repmat(squeeze(sum(num_trials_depth(:,:),2)),[1 num_tp]);
        case 4
            num_attentions=size(depth_timecourses,1);
            num_contrasts=size(depth_timecourses,2);
            num_depths=size(depth_timecourses,3);
            num_tp=size(depth_timecourses,4);
            timecourses=zeros(num_attentions,num_contrasts,num_tp);
            s=size(depth_timecourses(:,:,:,:));
            for depth=1:num_depths
                timecourses=timecourses+reshape(depth_timecourses(:,:,depth,:).*repmat(num_trials_depth(:,:,depth),[1 1 1 num_tp]),[s(1:2) s(end)]);
            end
            timecourses=timecourses(:,:,:)./repmat(reshape(sum(num_trials_depth(:,:,:),3),[s(1:2)]),[1 1 num_tp]);
        case 5
            num_sessions=size(depth_timecourses,1);
            num_attentions=size(depth_timecourses,2);
            num_contrasts=size(depth_timecourses,3);
            num_depths=size(depth_timecourses,4);
            num_tp=size(depth_timecourses,5);
            timecourses=zeros(num_sessions,num_attentions,num_contrasts,num_tp);
            s=size(depth_timecourses(:,:,:,:,:));
            for depth=1:num_depths
                timecourses=timecourses+reshape(depth_timecourses(:,:,:,depth,:).*repmat(num_trials_depth(:,:,:,depth),[1 1 1 1 num_tp]),[s(1:3) s(end)]);
            end
            timecourses=timecourses(:,:,:,:)./repmat(reshape(sum(num_trials_depth(:,:,:,:),4),s(1:3)),[1 1 1 num_tp]);
    end
    timecourses(isnan(timecourses))=0;
	s2=size(num_trials_depth);
    if ndims(num_trials_depth)>2
    	num_trials=reshape(sum(num_trials_depth,ndims(num_trials_depth)),s2(1:end-1));
    else
        num_trials=sum(num_trials_depth,ndims(num_trials_depth));
    end
end

