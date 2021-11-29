function [delay] = CalcDelay(timecourse1,timecoursei,delay_ini)
%this function will cycle through all contrasts/possible delays, to
%calculate the optimal delay (the one that minimizes the error) between the
%reference timecourse (highest contrast) and the timecourses with delay
%(other contrasts)
    
    num_delta=length(timecoursei)-length(timecourse1);
    corr_list=zeros(1,num_delta+1);
    for i=1:num_delta+1
       corr_list(i)=CalcCorr(timecourse1,timecoursei(i:i+length(timecourse1)-1));
    end
    [~,delay]=max(corr_list);
    delay=delay-1+delay_ini;
end
