function [timecourse] = Smooth2D(timecourse,tp)
%this function smoothes a matrix of timecourses, with a vertical
%bandwidth maximum of 3 (the depth at hand, the one below and the one
%after)
    for timep=1:length(tp)
        kernel_size=max(2,floor(2/25*tp(timep)*1000-2));
        filt_horz_min=min(kernel_size,timep-1);
        filt_horz_max=min(kernel_size,length(tp)-timep);
        for depth=1:size(timecourse,1)
            if depth==1
                filt_vert_min=0;
            else
                filt_vert_min=1;
            end
            if depth==size(timecourse,1)
                filt_vert_max=0;
            else
                filt_vert_max=1;
            end
            timecourse(depth,timep)=sum(sum(timecourse(depth-filt_vert_min:depth+filt_vert_max,timep-filt_horz_min:timep+filt_horz_max)))/((1+filt_horz_min+filt_horz_max)*(1+filt_vert_min+filt_vert_max));
        end
    end    
end
