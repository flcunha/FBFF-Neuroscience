function [delay_timecourse_adj] = AdjustDelay(delay_timecourse,tp)
%this function smoothes the delays obtained, preventing delay mistakes
%on individual timepoints.
%Example #1: If the array of delays originally goes (15,15,15,16,4,16,16,17),
%the timepoint with delay 4 will be adjusted to 16.
    t50=find(abs(tp-0.05)<10e-6);
    t65=find(abs(tp-0.065)<10e-6);
    delay_timecourse_adj=delay_timecourse;
    a=sort(delay_timecourse(t50:t65));
    delay_ini=floor(mean(a(5:end-4)));
    delay_curr=0;
    num_jumps=0;
    ini=0;
    for timep=1:length(tp)
        delay=delay_timecourse_adj(timep);
        if tp(timep)<0.03
            delay_timecourse_adj(timep)=0;
        else
            if ini==1
                if (delay<50 && delay-delay_curr>=0 && abs(delay_curr-delay)<max(4,floor(num_jumps/2)))||(delay-delay_curr<0 && abs(delay_curr-delay)<4)
                    delay_curr=delay;
                else
                    delay_timecourse_adj(timep)=delay_curr;
                    num_jumps=num_jumps+1;
                end
            else
                if abs(delay-delay_ini)<=3
                    ini=1;
                    delay_curr=delay;
                else
                    delay_timecourse_adj(timep)=0;
                end
            end
        end
    end
end
