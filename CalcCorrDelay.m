function corr = CalcCorrDelay(params,timecourse1,timecoursei)
    num_tp=length(timecourse1);
    timecourse_aux=zeros(1,num_tp);
    for timep=1:num_tp
        p=params(timep)-floor(params(timep));
        n=floor(params(timep));
        if timep-n-1>0
            timecourse_aux(timep)=(1-p)*timecourse1(timep-n)+p*timecourse1(timep-n-1);
        else
            timecourse_aux(timep)=timecourse1(timep-n);
        end            
    end
    corr=timecourse_aux-timecoursei;
end

