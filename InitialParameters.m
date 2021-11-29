
contrasts_okkie=[0.9999  0.6788  0.3998  0.2403  0.1382  0.0846  0.0487  0.0304]*100;

contrasts_spock=[0.7364 0.5452 0.3739 0.2669 0.1867  0.1271  0.0852 0.0730 0.0609 0.0487]*100;

if exist('max_sessions','var')==0
    max_sessions=150;
end

if exist('ini_session','var')==0
    ini_session=1;
end

if exist('mini_session','var')==0
    mini_session=0;
end

eye_channels_hold={'AD61' 'AD62'}; %% one volt is one degree

contrast_label=[{'Contrast1'},{'Contrast2'},{'Contrast3'},{'Contrast4'},{'Contrast5'},{'Contrast6'},{'Contrast7'},{'Contrast8'},{'Contrast9'},{'Contrast10'},{'Contrast11'},{'Contrast12'}];

num_electrodes=16;

num_attentions=2;
dt=0.001; %unit: seconds (1 milisecond)
sampl_freq=1000;

%definition of time variables
if strcmp(region,'V4')
    spikes_timeini=-0.1;
    spikes_timefin=0.4;
    timelock_avg_timeini=-0.1;
    timelock_avg_timefin=0.4;
    latency_timeini=0;
    latency_timefin=0.4;
    ms_search_timeini=0.4;
    ms_search_timefin=0.9;
    ms_reject_timeini=0;
    ms_reject_timefin=0.4;
    ss_search_timeini=0.4;
    ss_search_timefin=0.9;
    ss_reject_timeini=0;
    ss_reject_timefin=0.4;
    microsaccade_timeini=-0.1;
    microsaccade_timefin=0.4;
    stimshift_timeini=-0.1;
    stimshift_timefin=0.4;
    fbff_timeini=-0.1;
    fbff_timefin=0.4;
else
    spikes_timeini=-0.1;
    spikes_timefin=0.3;
    timelock_avg_timeini=-0.1;
    timelock_avg_timefin=0.3;
    latency_timeini=0;
    latency_timefin=0.3;
    ms_search_timeini=0.3;
    ms_search_timefin=0.8;
    ms_reject_timeini=0;
    ms_reject_timefin=0.3;
    ss_search_timeini=0.3;
    ss_search_timefin=0.8;
    ss_reject_timeini=0;
    ss_reject_timefin=0.3;
    microsaccade_timeini=-0.1;
    microsaccade_timefin=0.3;
    stimshift_timeini=-0.1;
    stimshift_timefin=0.3;
    fbff_timeini=-0.1;
    fbff_timefin=0.3;
end
bins=[1 10 20 50 100];
fano_timeini=-0.5;
fano_timefin=0.8;
isi_timeini=-0.5;
isi_timefin=0.8;
max_isi=150;
min_timeini=min([ms_search_timeini,latency_timeini,timelock_avg_timeini,spikes_timeini,fbff_timeini]);
max_timefin=max([ms_search_timefin,latency_timefin,timelock_avg_timefin,spikes_timefin,fbff_timefin]);

max_bootstrap_int=15;
peak_lims=[30 100;85 120;150 200];

spiketrain_bw=20;
ms_spk_bw=30;
ms_lfp_bw=41;
ss_spk_bw=30;
ss_lfp_bw=41;
lfp_bw=41;
