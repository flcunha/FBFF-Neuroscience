function [opt_spiketrain,opt_bw] = SmoothSpikeTrainFast(spiketrain_hist,tp,num_trials,opt_bw,smooth_type)
%this function smoothes the spike train with a convolution kernel depending
%on smoothing type (either box or gaussian)
if max(abs(spiketrain_hist))==0
    opt_spiketrain=spiketrain_hist;
    opt_bw=0;
    return
end

if nargin==3
    opt_bw=15;
    smooth_type=0;
end

if nargin==4
    smooth_type=0;
end

opt_bw=floor(opt_bw);
dt=tp(2)-tp(1);
if num_trials==0
    spike_hist=spiketrain_hist;
else
    spike_hist=spiketrain_hist/(num_trials*dt);
end

if smooth_type==1
    kernel=ones(opt_bw*2+1,1)/(opt_bw*2+1);
else
    kernel=gausswin(opt_bw*2+1)/sum(gausswin(opt_bw*2+1));
end
    

opt_spiketrain=transpose(CalcConvolution(transpose(spike_hist),kernel));




