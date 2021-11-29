function [fb_act,ff_act,resnorm] = CalcFBFF(activity,contrast_list,data_type,perc,delay)
    initParams=zeros(1,size(activity,2)*2);
	minParams=-Inf(1,size(activity,2)*2);
    maxParams=Inf(1,size(activity,2)*2);
%    minParams(1:length(minParams)/2)=0;%flc1
%    maxParams(1:length(minParams)/2)=0;
	maxiter = inf;
    optimParams = optimset('MaxIter',maxiter,'Display','off');
    [params resnorm residual exitflag output lambda jacobian] = lsqnonlin(@FitData,initParams,minParams,maxParams,optimParams,perc,delay,activity);
    fb_act=params(1:length(params)/2);
    ff_act=params(length(params)/2+1:length(params));
end
