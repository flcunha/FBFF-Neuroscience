function [lfp_regtimecourse, first_deriv, second_deriv] = SmoothLFPFast(lfp_timecourse,tp,opt_bw)
%this function smoothes lfp timecourses
    switch nargin
        case 1
            opt_bw=21;
            end_noise=30;
        case 2
            opt_bw=21;
            end_noise=find(tp<0,1,'last');
            if isempty(end_noise)
                end_noise=30;
            end
        case 3
            end_noise=find(tp<0,1,'last');
            if isempty(end_noise)
                end_noise=30;
            end
    end
    lfp_timecourse=lfp_timecourse-mean(lfp_timecourse(1:end_noise));    
    lfp_regtimecourse=smooth(lfp_timecourse,opt_bw,'loess');
    first_deriv=diff(lfp_regtimecourse);
    first_deriv=[first_deriv(1); first_deriv];
    second_deriv=diff(first_deriv);
    second_deriv=[second_deriv(1); second_deriv];
end