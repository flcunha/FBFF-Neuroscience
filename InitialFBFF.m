%Initializes the variables necessary for FB/FF processing
t_ini=fbff_timeini;
t_fin=fbff_timefin;
Timepoints();
fbff_tp=t_ini:dt:t_fin;
fbff_numtp=length(fbff_tp);
fbff_tpini=1;
fbff_tpfin=fbff_numtp;

%Variables for LFP stimulus onset
num_timepoints=timelock_avg_numtp;
fb_stim_timecourse_lfp=zeros(num_attentions,num_depths,num_timepoints);
ff_stim_timecourse_lfp=zeros(num_attentions,num_depths,num_timepoints);

alld_fb_stim_timecourse_lfp=zeros(num_attentions,num_timepoints);
alld_ff_stim_timecourse_lfp=zeros(num_attentions,num_timepoints);

allatt_fb_stim_timecourse_lfp=zeros(num_depths,num_timepoints);
allatt_ff_stim_timecourse_lfp=zeros(num_depths,num_timepoints);

allatt_alld_fb_stim_timecourse_lfp=zeros(1,num_timepoints);
allatt_alld_ff_stim_timecourse_lfp=zeros(1,num_timepoints);



%Variables for LFP microsaccade onset
num_timepoints=microsaccade_numtp;
fb_ms_timecourse_lfp=zeros(num_attentions,num_depths,num_timepoints);
ff_ms_timecourse_lfp=zeros(num_attentions,num_depths,num_timepoints);

alld_fb_ms_timecourse_lfp=zeros(num_attentions,num_timepoints);
alld_ff_ms_timecourse_lfp=zeros(num_attentions,num_timepoints);

allatt_fb_ms_timecourse_lfp=zeros(num_depths,num_timepoints);
allatt_ff_ms_timecourse_lfp=zeros(num_depths,num_timepoints);

allatt_alld_fb_ms_timecourse_lfp=zeros(1,num_timepoints);
allatt_alld_ff_ms_timecourse_lfp=zeros(1,num_timepoints);

%Variables for LFP stimulus shift onset
num_timepoints=stimshift_numtp;
fb_ss_timecourse_lfp=zeros(num_attentions,num_depths,num_timepoints);
ff_ss_timecourse_lfp=zeros(num_attentions,num_depths,num_timepoints);

alld_fb_ss_timecourse_lfp=zeros(num_attentions,num_timepoints);
alld_ff_ss_timecourse_lfp=zeros(num_attentions,num_timepoints);

allatt_fb_ss_timecourse_lfp=zeros(num_depths,num_timepoints);
allatt_ff_ss_timecourse_lfp=zeros(num_depths,num_timepoints);

allatt_alld_fb_ss_timecourse_lfp=zeros(1,num_timepoints);
allatt_alld_ff_ss_timecourse_lfp=zeros(1,num_timepoints);



%Variables for SPK stimulus onset
num_timepoints=spikes_numtp;
fb_stim_timecourse_spk=zeros(num_attentions,num_depths,num_timepoints);
ff_stim_timecourse_spk=zeros(num_attentions,num_depths,num_timepoints);

alld_fb_stim_timecourse_spk=zeros(num_attentions,num_timepoints);
alld_ff_stim_timecourse_spk=zeros(num_attentions,num_timepoints);

allatt_fb_stim_timecourse_spk=zeros(num_depths,num_timepoints);
allatt_ff_stim_timecourse_spk=zeros(num_depths,num_timepoints);

allatt_alld_fb_stim_timecourse_spk=zeros(1,num_timepoints);
allatt_alld_ff_stim_timecourse_spk=zeros(1,num_timepoints);


%Variables for SPK microsaccade onset
num_timepoints=microsaccade_numtp;
fb_ms_timecourse_spk=zeros(num_attentions,num_depths,num_timepoints);
ff_ms_timecourse_spk=zeros(num_attentions,num_depths,num_timepoints);

alld_fb_ms_timecourse_spk=zeros(num_attentions,num_timepoints);
alld_ff_ms_timecourse_spk=zeros(num_attentions,num_timepoints);


allatt_fb_ms_timecourse_spk=zeros(num_depths,num_timepoints);
allatt_ff_ms_timecourse_spk=zeros(num_depths,num_timepoints);

allatt_alld_fb_ms_timecourse_spk=zeros(1,num_timepoints);
allatt_alld_ff_ms_timecourse_spk=zeros(1,num_timepoints);

%Variables for SPK stimulus shift onset
num_timepoints=stimshift_numtp;
fb_ss_timecourse_spk=zeros(num_attentions,num_depths,num_timepoints);
ff_ss_timecourse_spk=zeros(num_attentions,num_depths,num_timepoints);

alld_fb_ss_timecourse_spk=zeros(num_attentions,num_timepoints);
alld_ff_ss_timecourse_spk=zeros(num_attentions,num_timepoints);


allatt_fb_ss_timecourse_spk=zeros(num_depths,num_timepoints);
allatt_ff_ss_timecourse_spk=zeros(num_depths,num_timepoints);

allatt_alld_fb_ss_timecourse_spk=zeros(1,num_timepoints);
allatt_alld_ff_ss_timecourse_spk=zeros(1,num_timepoints);


%Variables for delays
delays_stim_lfp=zeros(num_attentions,num_contrasts,num_depths,timelock_avg_numtp);
delays_stim_spk=zeros(num_attentions,num_contrasts,num_depths,spikes_numtp);
delays_ms_spk=zeros(num_attentions,num_contrasts,num_depths,microsaccade_numtp);
delays_ms_lfp=zeros(num_attentions,num_contrasts,num_depths,microsaccade_numtp);
delays_ss_spk=zeros(num_attentions,num_contrasts,num_depths,stimshift_numtp);
delays_ss_lfp=zeros(num_attentions,num_contrasts,num_depths,stimshift_numtp);


allatt_delays_stim_lfp=zeros(num_contrasts,num_depths,timelock_avg_numtp);
allatt_delays_stim_spk=zeros(num_contrasts,num_depths,spikes_numtp);
allatt_delays_ms_spk=zeros(num_contrasts,num_depths,microsaccade_numtp);
allatt_delays_ms_lfp=zeros(num_contrasts,num_depths,microsaccade_numtp);
allatt_delays_ss_spk=zeros(num_contrasts,num_depths,stimshift_numtp);
allatt_delays_ss_lfp=zeros(num_contrasts,num_depths,stimshift_numtp);

