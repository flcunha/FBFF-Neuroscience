%Loads the files for each pair region/monkey to be plotted consecutively
V1_Okkie_LFP_dmin=5;
V1_Okkie_LFP_dmax=23;
V4_Okkie_LFP_dmin=1;
V4_Okkie_LFP_dmax=25;
V1_Okkie_SPK_dmin=3;
V1_Okkie_SPK_dmax=24;
V4_Okkie_SPK_dmin=4;
V4_Okkie_SPK_dmax=25;

V1_Spock_LFP_dmin=5;
V1_Spock_LFP_dmax=23;
V4_Spock_LFP_dmin=6;
V4_Spock_LFP_dmax=25;
V1_Spock_SPK_dmin=4;
V1_Spock_SPK_dmax=26;
V4_Spock_SPK_dmin=6;
V4_Spock_SPK_dmax=25;


filename=['V1Okkie_LFP_STIM_FBFFData.mat'];
load(filename)
V1Okkie_stim_lfp_fb=fb_stim_timecourse_lfp;
V1Okkie_stim_lfp_ff=ff_stim_timecourse_lfp;
V1Okkie_stim_lfp_fb_alld=alld_fb_stim_timecourse_lfp;
V1Okkie_stim_lfp_ff_alld=alld_ff_stim_timecourse_lfp;
V1Okkie_stim_lfp_fb_min_alld=alld_fb_stim_timecourse_min_lfp;
V1Okkie_stim_lfp_fb_max_alld=alld_fb_stim_timecourse_max_lfp;
V1Okkie_stim_lfp_ff_min_alld=alld_ff_stim_timecourse_min_lfp;
V1Okkie_stim_lfp_ff_max_alld=alld_ff_stim_timecourse_max_lfp;
V1Okkie_stim_lfp_fb_allatt=allatt_fb_stim_timecourse_lfp;
V1Okkie_stim_lfp_ff_allatt=allatt_ff_stim_timecourse_lfp;
V1Okkie_stim_lfp_fb_alld_allatt=allatt_alld_fb_stim_timecourse_lfp;
V1Okkie_stim_lfp_ff_alld_allatt=allatt_alld_ff_stim_timecourse_lfp;
V1Okkie_stim_lfp_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_lfp;
V1Okkie_stim_lfp_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_lfp;
V1Okkie_stim_lfp_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_lfp;
V1Okkie_stim_lfp_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_lfp;
V1Okkie_stim_lfp_tp=tp;
V1Okkie_stim_lfp_timecourse=timecourse;
V1Okkie_stim_lfp_timecourse_allatt=timecourse_allatt;

filename=['V1Spock_LFP_STIM_FBFFData.mat'];
load(filename)
V1Spock_stim_lfp_fb=fb_stim_timecourse_lfp;
V1Spock_stim_lfp_ff=ff_stim_timecourse_lfp;
V1Spock_stim_lfp_fb_alld=alld_fb_stim_timecourse_lfp;
V1Spock_stim_lfp_ff_alld=alld_ff_stim_timecourse_lfp;
V1Spock_stim_lfp_fb_min_alld=alld_fb_stim_timecourse_min_lfp;
V1Spock_stim_lfp_fb_max_alld=alld_fb_stim_timecourse_max_lfp;
V1Spock_stim_lfp_ff_min_alld=alld_ff_stim_timecourse_min_lfp;
V1Spock_stim_lfp_ff_max_alld=alld_ff_stim_timecourse_max_lfp;
V1Spock_stim_lfp_fb_allatt=allatt_fb_stim_timecourse_lfp;
V1Spock_stim_lfp_ff_allatt=allatt_ff_stim_timecourse_lfp;
V1Spock_stim_lfp_fb_alld_allatt=allatt_alld_fb_stim_timecourse_lfp;
V1Spock_stim_lfp_ff_alld_allatt=allatt_alld_ff_stim_timecourse_lfp;
V1Spock_stim_lfp_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_lfp;
V1Spock_stim_lfp_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_lfp;
V1Spock_stim_lfp_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_lfp;
V1Spock_stim_lfp_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_lfp;
V1Spock_stim_lfp_tp=tp;
V1Spock_stim_lfp_timecourse=timecourse;
V1Spock_stim_lfp_timecourse_allatt=timecourse_allatt;

filename=['V4Okkie_LFP_STIM_FBFFData.mat'];
load(filename)
V4Okkie_stim_lfp_fb=fb_stim_timecourse_lfp;
V4Okkie_stim_lfp_ff=ff_stim_timecourse_lfp;
V4Okkie_stim_lfp_fb_alld=alld_fb_stim_timecourse_lfp;
V4Okkie_stim_lfp_ff_alld=alld_ff_stim_timecourse_lfp;
V4Okkie_stim_lfp_fb_min_alld=alld_fb_stim_timecourse_min_lfp;
V4Okkie_stim_lfp_fb_max_alld=alld_fb_stim_timecourse_max_lfp;
V4Okkie_stim_lfp_ff_min_alld=alld_ff_stim_timecourse_min_lfp;
V4Okkie_stim_lfp_ff_max_alld=alld_ff_stim_timecourse_max_lfp;
V4Okkie_stim_lfp_fb_allatt=allatt_fb_stim_timecourse_lfp;
V4Okkie_stim_lfp_ff_allatt=allatt_ff_stim_timecourse_lfp;
V4Okkie_stim_lfp_fb_alld_allatt=allatt_alld_fb_stim_timecourse_lfp;
V4Okkie_stim_lfp_ff_alld_allatt=allatt_alld_ff_stim_timecourse_lfp;
V4Okkie_stim_lfp_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_lfp;
V4Okkie_stim_lfp_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_lfp;
V4Okkie_stim_lfp_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_lfp;
V4Okkie_stim_lfp_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_lfp;
V4Okkie_stim_lfp_tp=tp;
V4Okkie_stim_lfp_timecourse=timecourse;
V4Okkie_stim_lfp_timecourse_allatt=timecourse_allatt;


filename=['V4Spock_LFP_STIM_FBFFData.mat'];
load(filename)
V4Spock_stim_lfp_fb=fb_stim_timecourse_lfp;
V4Spock_stim_lfp_ff=ff_stim_timecourse_lfp;
V4Spock_stim_lfp_fb_alld=alld_fb_stim_timecourse_lfp;
V4Spock_stim_lfp_ff_alld=alld_ff_stim_timecourse_lfp;
V4Spock_stim_lfp_fb_min_alld=alld_fb_stim_timecourse_min_lfp;
V4Spock_stim_lfp_fb_max_alld=alld_fb_stim_timecourse_max_lfp;
V4Spock_stim_lfp_ff_min_alld=alld_ff_stim_timecourse_min_lfp;
V4Spock_stim_lfp_ff_max_alld=alld_ff_stim_timecourse_max_lfp;
V4Spock_stim_lfp_fb_allatt=allatt_fb_stim_timecourse_lfp;
V4Spock_stim_lfp_ff_allatt=allatt_ff_stim_timecourse_lfp;
V4Spock_stim_lfp_fb_alld_allatt=allatt_alld_fb_stim_timecourse_lfp;
V4Spock_stim_lfp_ff_alld_allatt=allatt_alld_ff_stim_timecourse_lfp;
V4Spock_stim_lfp_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_lfp;
V4Spock_stim_lfp_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_lfp;
V4Spock_stim_lfp_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_lfp;
V4Spock_stim_lfp_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_lfp;
V4Spock_stim_lfp_tp=tp;
V4Spock_stim_lfp_timecourse=timecourse;
V4Spock_stim_lfp_timecourse_allatt=timecourse_allatt;

filename=['V1Okkie_SPK_STIM_FBFFData.mat'];
load(filename)
V1Okkie_stim_spk_fb=fb_stim_timecourse_spk;
V1Okkie_stim_spk_ff=ff_stim_timecourse_spk;
V1Okkie_stim_spk_fb_alld=alld_fb_stim_timecourse_spk;
V1Okkie_stim_spk_ff_alld=alld_ff_stim_timecourse_spk;
V1Okkie_stim_spk_fb_min_alld=alld_fb_stim_timecourse_min_spk;
V1Okkie_stim_spk_fb_max_alld=alld_fb_stim_timecourse_max_spk;
V1Okkie_stim_spk_ff_min_alld=alld_ff_stim_timecourse_min_spk;
V1Okkie_stim_spk_ff_max_alld=alld_ff_stim_timecourse_max_spk;
V1Okkie_stim_spk_fb_allatt=allatt_fb_stim_timecourse_spk;
V1Okkie_stim_spk_ff_allatt=allatt_ff_stim_timecourse_spk;
V1Okkie_stim_spk_fb_alld_allatt=allatt_alld_fb_stim_timecourse_spk;
V1Okkie_stim_spk_ff_alld_allatt=allatt_alld_ff_stim_timecourse_spk;
V1Okkie_stim_spk_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_spk;
V1Okkie_stim_spk_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_spk;
V1Okkie_stim_spk_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_spk;
V1Okkie_stim_spk_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_spk;
V1Okkie_stim_spk_tp=tp;
V1Okkie_stim_spk_timecourse=timecourse;
V1Okkie_stim_spk_timecourse_allatt=timecourse_allatt;

filename=['V1Spock_SPK_STIM_FBFFData.mat'];
load(filename)
V1Spock_stim_spk_fb=fb_stim_timecourse_spk;
V1Spock_stim_spk_ff=ff_stim_timecourse_spk;
V1Spock_stim_spk_fb_alld=alld_fb_stim_timecourse_spk;
V1Spock_stim_spk_ff_alld=alld_ff_stim_timecourse_spk;
V1Spock_stim_spk_fb_min_alld=alld_fb_stim_timecourse_min_spk;
V1Spock_stim_spk_fb_max_alld=alld_fb_stim_timecourse_max_spk;
V1Spock_stim_spk_ff_min_alld=alld_ff_stim_timecourse_min_spk;
V1Spock_stim_spk_ff_max_alld=alld_ff_stim_timecourse_max_spk;
V1Spock_stim_spk_fb_allatt=allatt_fb_stim_timecourse_spk;
V1Spock_stim_spk_ff_allatt=allatt_ff_stim_timecourse_spk;
V1Spock_stim_spk_fb_alld_allatt=allatt_alld_fb_stim_timecourse_spk;
V1Spock_stim_spk_ff_alld_allatt=allatt_alld_ff_stim_timecourse_spk;
V1Spock_stim_spk_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_spk;
V1Spock_stim_spk_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_spk;
V1Spock_stim_spk_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_spk;
V1Spock_stim_spk_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_spk;
V1Spock_stim_spk_tp=tp;
V1Spock_stim_spk_timecourse=timecourse;
V1Spock_stim_spk_timecourse_allatt=timecourse_allatt;

filename=['V4Okkie_SPK_STIM_FBFFData.mat'];
load(filename)
V4Okkie_stim_spk_fb=fb_stim_timecourse_spk;
V4Okkie_stim_spk_ff=ff_stim_timecourse_spk;
V4Okkie_stim_spk_fb_alld=alld_fb_stim_timecourse_spk;
V4Okkie_stim_spk_ff_alld=alld_ff_stim_timecourse_spk;
V4Okkie_stim_spk_fb_min_alld=alld_fb_stim_timecourse_min_spk;
V4Okkie_stim_spk_fb_max_alld=alld_fb_stim_timecourse_max_spk;
V4Okkie_stim_spk_ff_min_alld=alld_ff_stim_timecourse_min_spk;
V4Okkie_stim_spk_ff_max_alld=alld_ff_stim_timecourse_max_spk;
V4Okkie_stim_spk_fb_allatt=allatt_fb_stim_timecourse_spk;
V4Okkie_stim_spk_ff_allatt=allatt_ff_stim_timecourse_spk;
V4Okkie_stim_spk_fb_alld_allatt=allatt_alld_fb_stim_timecourse_spk;
V4Okkie_stim_spk_ff_alld_allatt=allatt_alld_ff_stim_timecourse_spk;
V4Okkie_stim_spk_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_spk;
V4Okkie_stim_spk_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_spk;
V4Okkie_stim_spk_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_spk;
V4Okkie_stim_spk_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_spk;
V4Okkie_stim_spk_tp=tp;
V4Okkie_stim_spk_timecourse=timecourse;
V4Okkie_stim_spk_timecourse_allatt=timecourse_allatt;

filename=['V4Spock_SPK_STIM_FBFFData.mat'];
load(filename)
V4Spock_stim_spk_fb=fb_stim_timecourse_spk;
V4Spock_stim_spk_ff=ff_stim_timecourse_spk;
V4Spock_stim_spk_fb_alld=alld_fb_stim_timecourse_spk;
V4Spock_stim_spk_ff_alld=alld_ff_stim_timecourse_spk;
V4Spock_stim_spk_fb_min_alld=alld_fb_stim_timecourse_min_spk;
V4Spock_stim_spk_fb_max_alld=alld_fb_stim_timecourse_max_spk;
V4Spock_stim_spk_ff_min_alld=alld_ff_stim_timecourse_min_spk;
V4Spock_stim_spk_ff_max_alld=alld_ff_stim_timecourse_max_spk;
V4Spock_stim_spk_fb_allatt=allatt_fb_stim_timecourse_spk;
V4Spock_stim_spk_ff_allatt=allatt_ff_stim_timecourse_spk;
V4Spock_stim_spk_fb_alld_allatt=allatt_alld_fb_stim_timecourse_spk;
V4Spock_stim_spk_ff_alld_allatt=allatt_alld_ff_stim_timecourse_spk;
V4Spock_stim_spk_fb_min_alld_allatt=allatt_alld_fb_stim_timecourse_min_spk;
V4Spock_stim_spk_fb_max_alld_allatt=allatt_alld_fb_stim_timecourse_max_spk;
V4Spock_stim_spk_ff_min_alld_allatt=allatt_alld_ff_stim_timecourse_min_spk;
V4Spock_stim_spk_ff_max_alld_allatt=allatt_alld_ff_stim_timecourse_max_spk;
V4Spock_stim_spk_tp=tp;
V4Spock_stim_spk_timecourse=timecourse;
V4Spock_stim_spk_timecourse_allatt=timecourse_allatt;

filename=['V1Okkie_LFP_MS_FBFFData.mat'];
load(filename)
V1Okkie_ms_lfp_fb=fb_ms_timecourse_lfp;
V1Okkie_ms_lfp_ff=ff_ms_timecourse_lfp;
V1Okkie_ms_lfp_fb_alld=alld_fb_ms_timecourse_lfp;
V1Okkie_ms_lfp_ff_alld=alld_ff_ms_timecourse_lfp;
V1Okkie_ms_lfp_fb_min_alld=alld_fb_ms_timecourse_min_lfp;
V1Okkie_ms_lfp_fb_max_alld=alld_fb_ms_timecourse_max_lfp;
V1Okkie_ms_lfp_ff_min_alld=alld_ff_ms_timecourse_min_lfp;
V1Okkie_ms_lfp_ff_max_alld=alld_ff_ms_timecourse_max_lfp;
V1Okkie_ms_lfp_fb_allatt=allatt_fb_ms_timecourse_lfp;
V1Okkie_ms_lfp_ff_allatt=allatt_ff_ms_timecourse_lfp;
V1Okkie_ms_lfp_fb_alld_allatt=allatt_alld_fb_ms_timecourse_lfp;
V1Okkie_ms_lfp_ff_alld_allatt=allatt_alld_ff_ms_timecourse_lfp;
V1Okkie_ms_lfp_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_lfp;
V1Okkie_ms_lfp_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_lfp;
V1Okkie_ms_lfp_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_lfp;
V1Okkie_ms_lfp_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_lfp;
V1Okkie_ms_lfp_tp=tp;
V1Okkie_ms_lfp_timecourse=timecourse;
V1Okkie_ms_lfp_timecourse_allatt=timecourse_allatt;

filename=['V1Spock_LFP_MS_FBFFData.mat'];
load(filename)
V1Spock_ms_lfp_fb=fb_ms_timecourse_lfp;
V1Spock_ms_lfp_ff=ff_ms_timecourse_lfp;
V1Spock_ms_lfp_fb_alld=alld_fb_ms_timecourse_lfp;
V1Spock_ms_lfp_ff_alld=alld_ff_ms_timecourse_lfp;
V1Spock_ms_lfp_fb_min_alld=alld_fb_ms_timecourse_min_lfp;
V1Spock_ms_lfp_fb_max_alld=alld_fb_ms_timecourse_max_lfp;
V1Spock_ms_lfp_ff_min_alld=alld_ff_ms_timecourse_min_lfp;
V1Spock_ms_lfp_ff_max_alld=alld_ff_ms_timecourse_max_lfp;
V1Spock_ms_lfp_fb_allatt=allatt_fb_ms_timecourse_lfp;
V1Spock_ms_lfp_ff_allatt=allatt_ff_ms_timecourse_lfp;
V1Spock_ms_lfp_fb_alld_allatt=allatt_alld_fb_ms_timecourse_lfp;
V1Spock_ms_lfp_ff_alld_allatt=allatt_alld_ff_ms_timecourse_lfp;
V1Spock_ms_lfp_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_lfp;
V1Spock_ms_lfp_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_lfp;
V1Spock_ms_lfp_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_lfp;
V1Spock_ms_lfp_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_lfp;
V1Spock_ms_lfp_tp=tp;
V1Spock_ms_lfp_timecourse=timecourse;
V1Spock_ms_lfp_timecourse_allatt=timecourse_allatt;

filename=['V4Okkie_LFP_MS_FBFFData.mat'];
load(filename)
V4Okkie_ms_lfp_fb=fb_ms_timecourse_lfp;
V4Okkie_ms_lfp_ff=ff_ms_timecourse_lfp;
V4Okkie_ms_lfp_fb_alld=alld_fb_ms_timecourse_lfp;
V4Okkie_ms_lfp_ff_alld=alld_ff_ms_timecourse_lfp;
V4Okkie_ms_lfp_fb_min_alld=alld_fb_ms_timecourse_min_lfp;
V4Okkie_ms_lfp_fb_max_alld=alld_fb_ms_timecourse_max_lfp;
V4Okkie_ms_lfp_ff_min_alld=alld_ff_ms_timecourse_min_lfp;
V4Okkie_ms_lfp_ff_max_alld=alld_ff_ms_timecourse_max_lfp;
V4Okkie_ms_lfp_fb_allatt=allatt_fb_ms_timecourse_lfp;
V4Okkie_ms_lfp_ff_allatt=allatt_ff_ms_timecourse_lfp;
V4Okkie_ms_lfp_fb_alld_allatt=allatt_alld_fb_ms_timecourse_lfp;
V4Okkie_ms_lfp_ff_alld_allatt=allatt_alld_ff_ms_timecourse_lfp;
V4Okkie_ms_lfp_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_lfp;
V4Okkie_ms_lfp_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_lfp;
V4Okkie_ms_lfp_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_lfp;
V4Okkie_ms_lfp_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_lfp;
V4Okkie_ms_lfp_tp=tp;
V4Okkie_ms_lfp_timecourse=timecourse;
V4Okkie_ms_lfp_timecourse_allatt=timecourse_allatt;

filename=['V4Spock_LFP_MS_FBFFData.mat'];
load(filename)
V4Spock_ms_lfp_fb=fb_ms_timecourse_lfp;
V4Spock_ms_lfp_ff=ff_ms_timecourse_lfp;
V4Spock_ms_lfp_fb_alld=alld_fb_ms_timecourse_lfp;
V4Spock_ms_lfp_ff_alld=alld_ff_ms_timecourse_lfp;
V4Spock_ms_lfp_fb_min_alld=alld_fb_ms_timecourse_min_lfp;
V4Spock_ms_lfp_fb_max_alld=alld_fb_ms_timecourse_max_lfp;
V4Spock_ms_lfp_ff_min_alld=alld_ff_ms_timecourse_min_lfp;
V4Spock_ms_lfp_ff_max_alld=alld_ff_ms_timecourse_max_lfp;
V4Spock_ms_lfp_fb_allatt=allatt_fb_ms_timecourse_lfp;
V4Spock_ms_lfp_ff_allatt=allatt_ff_ms_timecourse_lfp;
V4Spock_ms_lfp_fb_alld_allatt=allatt_alld_fb_ms_timecourse_lfp;
V4Spock_ms_lfp_ff_alld_allatt=allatt_alld_ff_ms_timecourse_lfp;
V4Spock_ms_lfp_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_lfp;
V4Spock_ms_lfp_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_lfp;
V4Spock_ms_lfp_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_lfp;
V4Spock_ms_lfp_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_lfp;
V4Spock_ms_lfp_tp=tp;
V4Spock_ms_lfp_timecourse=timecourse;
V4Spock_ms_lfp_timecourse_allatt=timecourse_allatt;

filename=['V1Okkie_SPK_MS_FBFFData.mat'];
load(filename)
V1Okkie_ms_spk_fb=fb_ms_timecourse_spk;
V1Okkie_ms_spk_ff=ff_ms_timecourse_spk;
V1Okkie_ms_spk_fb_alld=alld_fb_ms_timecourse_spk;
V1Okkie_ms_spk_ff_alld=alld_ff_ms_timecourse_spk;
V1Okkie_ms_spk_fb_min_alld=alld_fb_ms_timecourse_min_spk;
V1Okkie_ms_spk_fb_max_alld=alld_fb_ms_timecourse_max_spk;
V1Okkie_ms_spk_ff_min_alld=alld_ff_ms_timecourse_min_spk;
V1Okkie_ms_spk_ff_max_alld=alld_ff_ms_timecourse_max_spk;
V1Okkie_ms_spk_fb_allatt=allatt_fb_ms_timecourse_spk;
V1Okkie_ms_spk_ff_allatt=allatt_ff_ms_timecourse_spk;
V1Okkie_ms_spk_fb_alld_allatt=allatt_alld_fb_ms_timecourse_spk;
V1Okkie_ms_spk_ff_alld_allatt=allatt_alld_ff_ms_timecourse_spk;
V1Okkie_ms_spk_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_spk;
V1Okkie_ms_spk_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_spk;
V1Okkie_ms_spk_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_spk;
V1Okkie_ms_spk_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_spk;
V1Okkie_ms_spk_tp=tp;
V1Okkie_ms_spk_timecourse=timecourse;
V1Okkie_ms_spk_timecourse_allatt=timecourse_allatt;

filename=['V1Spock_SPK_MS_FBFFData.mat'];
load(filename)
V1Spock_ms_spk_fb=fb_ms_timecourse_spk;
V1Spock_ms_spk_ff=ff_ms_timecourse_spk;
V1Spock_ms_spk_fb_alld=alld_fb_ms_timecourse_spk;
V1Spock_ms_spk_ff_alld=alld_ff_ms_timecourse_spk;
V1Spock_ms_spk_fb_min_alld=alld_fb_ms_timecourse_min_spk;
V1Spock_ms_spk_fb_max_alld=alld_fb_ms_timecourse_max_spk;
V1Spock_ms_spk_ff_min_alld=alld_ff_ms_timecourse_min_spk;
V1Spock_ms_spk_ff_max_alld=alld_ff_ms_timecourse_max_spk;
V1Spock_ms_spk_fb_allatt=allatt_fb_ms_timecourse_spk;
V1Spock_ms_spk_ff_allatt=allatt_ff_ms_timecourse_spk;
V1Spock_ms_spk_fb_alld_allatt=allatt_alld_fb_ms_timecourse_spk;
V1Spock_ms_spk_ff_alld_allatt=allatt_alld_ff_ms_timecourse_spk;
V1Spock_ms_spk_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_spk;
V1Spock_ms_spk_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_spk;
V1Spock_ms_spk_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_spk;
V1Spock_ms_spk_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_spk;
V1Spock_ms_spk_tp=tp;
V1Spock_ms_spk_timecourse=timecourse;
V1Spock_ms_spk_timecourse_allatt=timecourse_allatt;

filename=['V4Okkie_SPK_MS_FBFFData.mat'];
load(filename)
V4Okkie_ms_spk_fb=fb_ms_timecourse_spk;
V4Okkie_ms_spk_ff=ff_ms_timecourse_spk;
V4Okkie_ms_spk_fb_alld=alld_fb_ms_timecourse_spk;
V4Okkie_ms_spk_ff_alld=alld_ff_ms_timecourse_spk;
V4Okkie_ms_spk_fb_min_alld=alld_fb_ms_timecourse_min_spk;
V4Okkie_ms_spk_fb_max_alld=alld_fb_ms_timecourse_max_spk;
V4Okkie_ms_spk_ff_min_alld=alld_ff_ms_timecourse_min_spk;
V4Okkie_ms_spk_ff_max_alld=alld_ff_ms_timecourse_max_spk;
V4Okkie_ms_spk_fb_allatt=allatt_fb_ms_timecourse_spk;
V4Okkie_ms_spk_ff_allatt=allatt_ff_ms_timecourse_spk;
V4Okkie_ms_spk_fb_alld_allatt=allatt_alld_fb_ms_timecourse_spk;
V4Okkie_ms_spk_ff_alld_allatt=allatt_alld_ff_ms_timecourse_spk;
V4Okkie_ms_spk_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_spk;
V4Okkie_ms_spk_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_spk;
V4Okkie_ms_spk_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_spk;
V4Okkie_ms_spk_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_spk;
V4Okkie_ms_spk_tp=tp;
V4Okkie_ms_spk_timecourse=timecourse;
V4Okkie_ms_spk_timecourse_allatt=timecourse_allatt;

filename=['V4Spock_SPK_MS_FBFFData.mat'];
load(filename)
V4Spock_ms_spk_fb=fb_ms_timecourse_spk;
V4Spock_ms_spk_ff=ff_ms_timecourse_spk;
V4Spock_ms_spk_fb_alld=alld_fb_ms_timecourse_spk;
V4Spock_ms_spk_ff_alld=alld_ff_ms_timecourse_spk;
V4Spock_ms_spk_fb_min_alld=alld_fb_ms_timecourse_min_spk;
V4Spock_ms_spk_fb_max_alld=alld_fb_ms_timecourse_max_spk;
V4Spock_ms_spk_ff_min_alld=alld_ff_ms_timecourse_min_spk;
V4Spock_ms_spk_ff_max_alld=alld_ff_ms_timecourse_max_spk;
V4Spock_ms_spk_fb_allatt=allatt_fb_ms_timecourse_spk;
V4Spock_ms_spk_ff_allatt=allatt_ff_ms_timecourse_spk;
V4Spock_ms_spk_fb_alld_allatt=allatt_alld_fb_ms_timecourse_spk;
V4Spock_ms_spk_ff_alld_allatt=allatt_alld_ff_ms_timecourse_spk;
V4Spock_ms_spk_fb_min_alld_allatt=allatt_alld_fb_ms_timecourse_min_spk;
V4Spock_ms_spk_fb_max_alld_allatt=allatt_alld_fb_ms_timecourse_max_spk;
V4Spock_ms_spk_ff_min_alld_allatt=allatt_alld_ff_ms_timecourse_min_spk;
V4Spock_ms_spk_ff_max_alld_allatt=allatt_alld_ff_ms_timecourse_max_spk;
V4Spock_ms_spk_tp=tp;
V4Spock_ms_spk_timecourse=timecourse;
V4Spock_ms_spk_timecourse_allatt=timecourse_allatt;



filename=['V1Okkie_LFP_SS_FBFFData.mat'];
load(filename)
V1Okkie_ss_lfp_fb=fb_ss_timecourse_lfp;
V1Okkie_ss_lfp_ff=ff_ss_timecourse_lfp;
V1Okkie_ss_lfp_fb_alld=alld_fb_ss_timecourse_lfp;
V1Okkie_ss_lfp_ff_alld=alld_ff_ss_timecourse_lfp;
V1Okkie_ss_lfp_fb_min_alld=alld_fb_ss_timecourse_min_lfp;
V1Okkie_ss_lfp_fb_max_alld=alld_fb_ss_timecourse_max_lfp;
V1Okkie_ss_lfp_ff_min_alld=alld_ff_ss_timecourse_min_lfp;
V1Okkie_ss_lfp_ff_max_alld=alld_ff_ss_timecourse_max_lfp;
V1Okkie_ss_lfp_fb_allatt=allatt_fb_ss_timecourse_lfp;
V1Okkie_ss_lfp_ff_allatt=allatt_ff_ss_timecourse_lfp;
V1Okkie_ss_lfp_fb_alld_allatt=allatt_alld_fb_ss_timecourse_lfp;
V1Okkie_ss_lfp_ff_alld_allatt=allatt_alld_ff_ss_timecourse_lfp;
V1Okkie_ss_lfp_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_lfp;
V1Okkie_ss_lfp_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_lfp;
V1Okkie_ss_lfp_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_lfp;
V1Okkie_ss_lfp_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_lfp;
V1Okkie_ss_lfp_tp=tp;
V1Okkie_ss_lfp_timecourse=timecourse;
V1Okkie_ss_lfp_timecourse_allatt=timecourse_allatt;

filename=['V1Spock_LFP_SS_FBFFData.mat'];
load(filename)
V1Spock_ss_lfp_fb=fb_ss_timecourse_lfp;
V1Spock_ss_lfp_ff=ff_ss_timecourse_lfp;
V1Spock_ss_lfp_fb_alld=alld_fb_ss_timecourse_lfp;
V1Spock_ss_lfp_ff_alld=alld_ff_ss_timecourse_lfp;
V1Spock_ss_lfp_fb_min_alld=alld_fb_ss_timecourse_min_lfp;
V1Spock_ss_lfp_fb_max_alld=alld_fb_ss_timecourse_max_lfp;
V1Spock_ss_lfp_ff_min_alld=alld_ff_ss_timecourse_min_lfp;
V1Spock_ss_lfp_ff_max_alld=alld_ff_ss_timecourse_max_lfp;
V1Spock_ss_lfp_fb_allatt=allatt_fb_ss_timecourse_lfp;
V1Spock_ss_lfp_ff_allatt=allatt_ff_ss_timecourse_lfp;
V1Spock_ss_lfp_fb_alld_allatt=allatt_alld_fb_ss_timecourse_lfp;
V1Spock_ss_lfp_ff_alld_allatt=allatt_alld_ff_ss_timecourse_lfp;
V1Spock_ss_lfp_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_lfp;
V1Spock_ss_lfp_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_lfp;
V1Spock_ss_lfp_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_lfp;
V1Spock_ss_lfp_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_lfp;
V1Spock_ss_lfp_tp=tp;
V1Spock_ss_lfp_timecourse=timecourse;
V1Spock_ss_lfp_timecourse_allatt=timecourse_allatt;

filename=['V4Okkie_LFP_SS_FBFFData.mat'];
load(filename)
V4Okkie_ss_lfp_fb=fb_ss_timecourse_lfp;
V4Okkie_ss_lfp_ff=ff_ss_timecourse_lfp;
V4Okkie_ss_lfp_fb_alld=alld_fb_ss_timecourse_lfp;
V4Okkie_ss_lfp_ff_alld=alld_ff_ss_timecourse_lfp;
V4Okkie_ss_lfp_fb_min_alld=alld_fb_ss_timecourse_min_lfp;
V4Okkie_ss_lfp_fb_max_alld=alld_fb_ss_timecourse_max_lfp;
V4Okkie_ss_lfp_ff_min_alld=alld_ff_ss_timecourse_min_lfp;
V4Okkie_ss_lfp_ff_max_alld=alld_ff_ss_timecourse_max_lfp;
V4Okkie_ss_lfp_fb_allatt=allatt_fb_ss_timecourse_lfp;
V4Okkie_ss_lfp_ff_allatt=allatt_ff_ss_timecourse_lfp;
V4Okkie_ss_lfp_fb_alld_allatt=allatt_alld_fb_ss_timecourse_lfp;
V4Okkie_ss_lfp_ff_alld_allatt=allatt_alld_ff_ss_timecourse_lfp;
V4Okkie_ss_lfp_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_lfp;
V4Okkie_ss_lfp_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_lfp;
V4Okkie_ss_lfp_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_lfp;
V4Okkie_ss_lfp_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_lfp;
V4Okkie_ss_lfp_tp=tp;
V4Okkie_ss_lfp_timecourse=timecourse;
V4Okkie_ss_lfp_timecourse_allatt=timecourse_allatt;

filename=['V4Spock_LFP_SS_FBFFData.mat'];
load(filename)
V4Spock_ss_lfp_fb=fb_ss_timecourse_lfp;
V4Spock_ss_lfp_ff=ff_ss_timecourse_lfp;
V4Spock_ss_lfp_fb_alld=alld_fb_ss_timecourse_lfp;
V4Spock_ss_lfp_ff_alld=alld_ff_ss_timecourse_lfp;
V4Spock_ss_lfp_fb_min_alld=alld_fb_ss_timecourse_min_lfp;
V4Spock_ss_lfp_fb_max_alld=alld_fb_ss_timecourse_max_lfp;
V4Spock_ss_lfp_ff_min_alld=alld_ff_ss_timecourse_min_lfp;
V4Spock_ss_lfp_ff_max_alld=alld_ff_ss_timecourse_max_lfp;
V4Spock_ss_lfp_fb_allatt=allatt_fb_ss_timecourse_lfp;
V4Spock_ss_lfp_ff_allatt=allatt_ff_ss_timecourse_lfp;
V4Spock_ss_lfp_fb_alld_allatt=allatt_alld_fb_ss_timecourse_lfp;
V4Spock_ss_lfp_ff_alld_allatt=allatt_alld_ff_ss_timecourse_lfp;
V4Spock_ss_lfp_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_lfp;
V4Spock_ss_lfp_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_lfp;
V4Spock_ss_lfp_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_lfp;
V4Spock_ss_lfp_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_lfp;
V4Spock_ss_lfp_tp=tp;
V4Spock_ss_lfp_timecourse=timecourse;
V4Spock_ss_lfp_timecourse_allatt=timecourse_allatt;

filename=['V1Okkie_SPK_SS_FBFFData.mat'];
load(filename)
V1Okkie_ss_spk_fb=fb_ss_timecourse_spk;
V1Okkie_ss_spk_ff=ff_ss_timecourse_spk;
V1Okkie_ss_spk_fb_alld=alld_fb_ss_timecourse_spk;
V1Okkie_ss_spk_ff_alld=alld_ff_ss_timecourse_spk;
V1Okkie_ss_spk_fb_min_alld=alld_fb_ss_timecourse_min_spk;
V1Okkie_ss_spk_fb_max_alld=alld_fb_ss_timecourse_max_spk;
V1Okkie_ss_spk_ff_min_alld=alld_ff_ss_timecourse_min_spk;
V1Okkie_ss_spk_ff_max_alld=alld_ff_ss_timecourse_max_spk;
V1Okkie_ss_spk_fb_allatt=allatt_fb_ss_timecourse_spk;
V1Okkie_ss_spk_ff_allatt=allatt_ff_ss_timecourse_spk;
V1Okkie_ss_spk_fb_alld_allatt=allatt_alld_fb_ss_timecourse_spk;
V1Okkie_ss_spk_ff_alld_allatt=allatt_alld_ff_ss_timecourse_spk;
V1Okkie_ss_spk_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_spk;
V1Okkie_ss_spk_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_spk;
V1Okkie_ss_spk_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_spk;
V1Okkie_ss_spk_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_spk;
V1Okkie_ss_spk_tp=tp;
V1Okkie_ss_spk_timecourse=timecourse;
V1Okkie_ss_spk_timecourse_allatt=timecourse_allatt;

filename=['V1Spock_SPK_SS_FBFFData.mat'];
load(filename)
V1Spock_ss_spk_fb=fb_ss_timecourse_spk;
V1Spock_ss_spk_ff=ff_ss_timecourse_spk;
V1Spock_ss_spk_fb_alld=alld_fb_ss_timecourse_spk;
V1Spock_ss_spk_ff_alld=alld_ff_ss_timecourse_spk;
V1Spock_ss_spk_fb_min_alld=alld_fb_ss_timecourse_min_spk;
V1Spock_ss_spk_fb_max_alld=alld_fb_ss_timecourse_max_spk;
V1Spock_ss_spk_ff_min_alld=alld_ff_ss_timecourse_min_spk;
V1Spock_ss_spk_ff_max_alld=alld_ff_ss_timecourse_max_spk;
V1Spock_ss_spk_fb_allatt=allatt_fb_ss_timecourse_spk;
V1Spock_ss_spk_ff_allatt=allatt_ff_ss_timecourse_spk;
V1Spock_ss_spk_fb_alld_allatt=allatt_alld_fb_ss_timecourse_spk;
V1Spock_ss_spk_ff_alld_allatt=allatt_alld_ff_ss_timecourse_spk;
V1Spock_ss_spk_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_spk;
V1Spock_ss_spk_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_spk;
V1Spock_ss_spk_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_spk;
V1Spock_ss_spk_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_spk;
V1Spock_ss_spk_tp=tp;
V1Spock_ss_spk_timecourse=timecourse;
V1Spock_ss_spk_timecourse_allatt=timecourse_allatt;

filename=['V4Okkie_SPK_SS_FBFFData.mat'];
load(filename)
V4Okkie_ss_spk_fb=fb_ss_timecourse_spk;
V4Okkie_ss_spk_ff=ff_ss_timecourse_spk;
V4Okkie_ss_spk_fb_alld=alld_fb_ss_timecourse_spk;
V4Okkie_ss_spk_ff_alld=alld_ff_ss_timecourse_spk;
V4Okkie_ss_spk_fb_min_alld=alld_fb_ss_timecourse_min_spk;
V4Okkie_ss_spk_fb_max_alld=alld_fb_ss_timecourse_max_spk;
V4Okkie_ss_spk_ff_min_alld=alld_ff_ss_timecourse_min_spk;
V4Okkie_ss_spk_ff_max_alld=alld_ff_ss_timecourse_max_spk;
V4Okkie_ss_spk_fb_allatt=allatt_fb_ss_timecourse_spk;
V4Okkie_ss_spk_ff_allatt=allatt_ff_ss_timecourse_spk;
V4Okkie_ss_spk_fb_alld_allatt=allatt_alld_fb_ss_timecourse_spk;
V4Okkie_ss_spk_ff_alld_allatt=allatt_alld_ff_ss_timecourse_spk;
V4Okkie_ss_spk_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_spk;
V4Okkie_ss_spk_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_spk;
V4Okkie_ss_spk_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_spk;
V4Okkie_ss_spk_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_spk;
V4Okkie_ss_spk_tp=tp;
V4Okkie_ss_spk_timecourse=timecourse;
V4Okkie_ss_spk_timecourse_allatt=timecourse_allatt;

filename=['V4Spock_SPK_SS_FBFFData.mat'];
load(filename)
V4Spock_ss_spk_fb=fb_ss_timecourse_spk;
V4Spock_ss_spk_ff=ff_ss_timecourse_spk;
V4Spock_ss_spk_fb_alld=alld_fb_ss_timecourse_spk;
V4Spock_ss_spk_ff_alld=alld_ff_ss_timecourse_spk;
V4Spock_ss_spk_fb_min_alld=alld_fb_ss_timecourse_min_spk;
V4Spock_ss_spk_fb_max_alld=alld_fb_ss_timecourse_max_spk;
V4Spock_ss_spk_ff_min_alld=alld_ff_ss_timecourse_min_spk;
V4Spock_ss_spk_ff_max_alld=alld_ff_ss_timecourse_max_spk;
V4Spock_ss_spk_fb_allatt=allatt_fb_ss_timecourse_spk;
V4Spock_ss_spk_ff_allatt=allatt_ff_ss_timecourse_spk;
V4Spock_ss_spk_fb_alld_allatt=allatt_alld_fb_ss_timecourse_spk;
V4Spock_ss_spk_ff_alld_allatt=allatt_alld_ff_ss_timecourse_spk;
V4Spock_ss_spk_fb_min_alld_allatt=allatt_alld_fb_ss_timecourse_min_spk;
V4Spock_ss_spk_fb_max_alld_allatt=allatt_alld_fb_ss_timecourse_max_spk;
V4Spock_ss_spk_ff_min_alld_allatt=allatt_alld_ff_ss_timecourse_min_spk;
V4Spock_ss_spk_ff_max_alld_allatt=allatt_alld_ff_ss_timecourse_max_spk;
V4Spock_ss_spk_tp=tp;
V4Spock_ss_spk_timecourse=timecourse;
V4Spock_ss_spk_timecourse_allatt=timecourse_allatt;


figure
subplot(2,4,1)

fill([V1Okkie_stim_lfp_tp/dt,fliplr(V1Okkie_stim_lfp_tp)/dt],[transpose(V1Okkie_stim_lfp_ff_min_alld_allatt),fliplr(transpose(V1Okkie_stim_lfp_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Okkie_ms_lfp_tp/dt,fliplr(V1Okkie_ms_lfp_tp)/dt],[transpose(V1Okkie_ms_lfp_ff_min_alld_allatt),fliplr(transpose(V1Okkie_ms_lfp_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Okkie_ss_lfp_tp/dt,fliplr(V1Okkie_ss_lfp_tp)/dt],[transpose(V1Okkie_ss_lfp_ff_min_alld_allatt),fliplr(transpose(V1Okkie_ss_lfp_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_lfp_tp/dt,V1Okkie_ss_lfp_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_lfp_tp/dt,V1Okkie_ss_lfp_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Okkie_ss_lfp_tp/dt,V1Okkie_ss_lfp_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;

title('Okkie Feedforward LFP');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,2)

fill([V1Spock_stim_lfp_tp/dt,fliplr(V1Spock_stim_lfp_tp)/dt],[transpose(V1Spock_stim_lfp_ff_min_alld_allatt),fliplr(transpose(V1Spock_stim_lfp_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Spock_ms_lfp_tp/dt,fliplr(V1Spock_ms_lfp_tp)/dt],[transpose(V1Spock_ms_lfp_ff_min_alld_allatt),fliplr(transpose(V1Spock_ms_lfp_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Spock_ss_lfp_tp/dt,fliplr(V1Spock_ss_lfp_tp)/dt],[transpose(V1Spock_ss_lfp_ff_min_alld_allatt),fliplr(transpose(V1Spock_ss_lfp_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Spock_ss_lfp_tp/dt,V1Spock_ss_lfp_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_lfp_tp/dt,V1Spock_ss_lfp_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_lfp_tp/dt,V1Spock_ss_lfp_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedforward LFP');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,3)

fill([V1Okkie_stim_lfp_tp/dt,fliplr(V1Okkie_stim_lfp_tp)/dt],[transpose(V1Okkie_stim_lfp_fb_min_alld_allatt),fliplr(transpose(V1Okkie_stim_lfp_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Okkie_ms_lfp_tp/dt,fliplr(V1Okkie_ms_lfp_tp)/dt],[transpose(V1Okkie_ms_lfp_fb_min_alld_allatt),fliplr(transpose(V1Okkie_ms_lfp_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Okkie_ss_lfp_tp/dt,fliplr(V1Okkie_ss_lfp_tp)/dt],[transpose(V1Okkie_ss_lfp_fb_min_alld_allatt),fliplr(transpose(V1Okkie_ss_lfp_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Okkie_ss_lfp_tp/dt,V1Okkie_ss_lfp_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_lfp_tp/dt,V1Okkie_ss_lfp_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_lfp_tp/dt,V1Okkie_ss_lfp_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedback LFP');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,4)

fill([V1Spock_stim_lfp_tp/dt,fliplr(V1Spock_stim_lfp_tp)/dt],[transpose(V1Spock_stim_lfp_fb_min_alld_allatt),fliplr(transpose(V1Spock_stim_lfp_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Spock_ms_lfp_tp/dt,fliplr(V1Spock_ms_lfp_tp)/dt],[transpose(V1Spock_ms_lfp_fb_min_alld_allatt),fliplr(transpose(V1Spock_ms_lfp_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Spock_ss_lfp_tp/dt,fliplr(V1Spock_ss_lfp_tp)/dt],[transpose(V1Spock_ss_lfp_fb_min_alld_allatt),fliplr(transpose(V1Spock_ss_lfp_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Spock_ss_lfp_tp/dt,V1Spock_ss_lfp_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_lfp_tp/dt,V1Spock_ss_lfp_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_lfp_tp/dt,V1Spock_ss_lfp_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedback LFP');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,5)

fill([V1Okkie_stim_spk_tp/dt,fliplr(V1Okkie_stim_spk_tp)/dt],[transpose(V1Okkie_stim_spk_ff_min_alld_allatt),fliplr(transpose(V1Okkie_stim_spk_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Okkie_ms_spk_tp/dt,fliplr(V1Okkie_ms_spk_tp)/dt],[transpose(V1Okkie_ms_spk_ff_min_alld_allatt),fliplr(transpose(V1Okkie_ms_spk_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Okkie_ss_spk_tp/dt,fliplr(V1Okkie_ss_spk_tp)/dt],[transpose(V1Okkie_ss_spk_ff_min_alld_allatt),fliplr(transpose(V1Okkie_ss_spk_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Okkie_ss_spk_tp/dt,V1Okkie_ss_spk_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_spk_tp/dt,V1Okkie_ss_spk_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_spk_tp/dt,V1Okkie_ss_spk_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedforward Spikes');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,6)

fill([V1Spock_stim_spk_tp/dt,fliplr(V1Spock_stim_spk_tp)/dt],[transpose(V1Spock_stim_spk_ff_min_alld_allatt),fliplr(transpose(V1Spock_stim_spk_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Spock_ms_spk_tp/dt,fliplr(V1Spock_ms_spk_tp)/dt],[transpose(V1Spock_ms_spk_ff_min_alld_allatt),fliplr(transpose(V1Spock_ms_spk_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Spock_ss_spk_tp/dt,fliplr(V1Spock_ss_spk_tp)/dt],[transpose(V1Spock_ss_spk_ff_min_alld_allatt),fliplr(transpose(V1Spock_ss_spk_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Spock_ss_spk_tp/dt,V1Spock_ss_spk_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_spk_tp/dt,V1Spock_ss_spk_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_spk_tp/dt,V1Spock_ss_spk_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedforward Spikes');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,7)

fill([V1Okkie_stim_spk_tp/dt,fliplr(V1Okkie_stim_spk_tp)/dt],[transpose(V1Okkie_stim_spk_fb_min_alld_allatt),fliplr(transpose(V1Okkie_stim_spk_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Okkie_ms_spk_tp/dt,fliplr(V1Okkie_ms_spk_tp)/dt],[transpose(V1Okkie_ms_spk_fb_min_alld_allatt),fliplr(transpose(V1Okkie_ms_spk_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Okkie_ss_spk_tp/dt,fliplr(V1Okkie_ss_spk_tp)/dt],[transpose(V1Okkie_ss_spk_fb_min_alld_allatt),fliplr(transpose(V1Okkie_ss_spk_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Okkie_ss_spk_tp/dt,V1Okkie_ss_spk_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_spk_tp/dt,V1Okkie_ss_spk_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Okkie_ss_spk_tp/dt,V1Okkie_ss_spk_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedback Spikes');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,8)

fill([V1Spock_stim_spk_tp/dt,fliplr(V1Spock_stim_spk_tp)/dt],[transpose(V1Spock_stim_spk_fb_min_alld_allatt),fliplr(transpose(V1Spock_stim_spk_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V1Spock_ms_spk_tp/dt,fliplr(V1Spock_ms_spk_tp)/dt],[transpose(V1Spock_ms_spk_fb_min_alld_allatt),fliplr(transpose(V1Spock_ms_spk_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V1Spock_ss_spk_tp/dt,fliplr(V1Spock_ss_spk_tp)/dt],[transpose(V1Spock_ss_spk_fb_min_alld_allatt),fliplr(transpose(V1Spock_ss_spk_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_spk_tp/dt,V1Spock_ss_spk_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Spock_ss_spk_tp/dt,V1Spock_ss_spk_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V1Spock_ss_spk_tp/dt,V1Spock_ss_spk_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;

title('Spock Feedback Spikes');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V1 Feedback/Feedforward Analysis. All Attention Conditions','t');
legend('Stimulus','Microsaccade','Stimulus Shift');










figure
subplot(2,4,1)

fill([V4Okkie_stim_lfp_tp/dt,fliplr(V4Okkie_stim_lfp_tp)/dt],[transpose(V4Okkie_stim_lfp_ff_min_alld_allatt),fliplr(transpose(V4Okkie_stim_lfp_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Okkie_ms_lfp_tp/dt,fliplr(V4Okkie_ms_lfp_tp)/dt],[transpose(V4Okkie_ms_lfp_ff_min_alld_allatt),fliplr(transpose(V4Okkie_ms_lfp_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Okkie_ss_lfp_tp/dt,fliplr(V4Okkie_ss_lfp_tp)/dt],[transpose(V4Okkie_ss_lfp_ff_min_alld_allatt),fliplr(transpose(V4Okkie_ss_lfp_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Okkie_ss_lfp_tp/dt,V4Okkie_ss_lfp_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_lfp_tp/dt,V4Okkie_ss_lfp_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_lfp_tp/dt,V4Okkie_ss_lfp_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedforward LFP');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,2)

fill([V4Spock_stim_lfp_tp/dt,fliplr(V4Spock_stim_lfp_tp)/dt],[transpose(V4Spock_stim_lfp_ff_min_alld_allatt),fliplr(transpose(V4Spock_stim_lfp_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Spock_ms_lfp_tp/dt,fliplr(V4Spock_ms_lfp_tp)/dt],[transpose(V4Spock_ms_lfp_ff_min_alld_allatt),fliplr(transpose(V4Spock_ms_lfp_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Spock_ss_lfp_tp/dt,fliplr(V4Spock_ss_lfp_tp)/dt],[transpose(V4Spock_ss_lfp_ff_min_alld_allatt),fliplr(transpose(V4Spock_ss_lfp_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Spock_ss_lfp_tp/dt,V4Spock_ss_lfp_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_lfp_tp/dt,V4Spock_ss_lfp_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_lfp_tp/dt,V4Spock_ss_lfp_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedforward LFP');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,3)

fill([V4Okkie_stim_lfp_tp/dt,fliplr(V4Okkie_stim_lfp_tp)/dt],[transpose(V4Okkie_stim_lfp_fb_min_alld_allatt),fliplr(transpose(V4Okkie_stim_lfp_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Okkie_ms_lfp_tp/dt,fliplr(V4Okkie_ms_lfp_tp)/dt],[transpose(V4Okkie_ms_lfp_fb_min_alld_allatt),fliplr(transpose(V4Okkie_ms_lfp_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Okkie_ss_lfp_tp/dt,fliplr(V4Okkie_ss_lfp_tp)/dt],[transpose(V4Okkie_ss_lfp_fb_min_alld_allatt),fliplr(transpose(V4Okkie_ss_lfp_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Okkie_ss_lfp_tp/dt,V4Okkie_ss_lfp_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_lfp_tp/dt,V4Okkie_ss_lfp_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_lfp_tp/dt,V4Okkie_ss_lfp_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedback LFP');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,4)

fill([V4Spock_stim_lfp_tp/dt,fliplr(V4Spock_stim_lfp_tp)/dt],[transpose(V4Spock_stim_lfp_fb_min_alld_allatt),fliplr(transpose(V4Spock_stim_lfp_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Spock_ms_lfp_tp/dt,fliplr(V4Spock_ms_lfp_tp)/dt],[transpose(V4Spock_ms_lfp_fb_min_alld_allatt),fliplr(transpose(V4Spock_ms_lfp_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Spock_ss_lfp_tp/dt,fliplr(V4Spock_ss_lfp_tp)/dt],[transpose(V4Spock_ss_lfp_fb_min_alld_allatt),fliplr(transpose(V4Spock_ss_lfp_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Spock_ss_lfp_tp/dt,V4Spock_ss_lfp_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_lfp_tp/dt,V4Spock_ss_lfp_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_lfp_tp/dt,V4Spock_ss_lfp_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedback LFP');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,5)

fill([V4Okkie_stim_spk_tp/dt,fliplr(V4Okkie_stim_spk_tp)/dt],[transpose(V4Okkie_stim_spk_ff_min_alld_allatt),fliplr(transpose(V4Okkie_stim_spk_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Okkie_ms_spk_tp/dt,fliplr(V4Okkie_ms_spk_tp)/dt],[transpose(V4Okkie_ms_spk_ff_min_alld_allatt),fliplr(transpose(V4Okkie_ms_spk_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Okkie_ss_spk_tp/dt,fliplr(V4Okkie_ss_spk_tp)/dt],[transpose(V4Okkie_ss_spk_ff_min_alld_allatt),fliplr(transpose(V4Okkie_ss_spk_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Okkie_ss_spk_tp/dt,V4Okkie_ss_spk_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_spk_tp/dt,V4Okkie_ss_spk_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_spk_tp/dt,V4Okkie_ss_spk_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedforward Spikes');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,6)

fill([V4Spock_stim_spk_tp/dt,fliplr(V4Spock_stim_spk_tp)/dt],[transpose(V4Spock_stim_spk_ff_min_alld_allatt),fliplr(transpose(V4Spock_stim_spk_ff_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Spock_ms_spk_tp/dt,fliplr(V4Spock_ms_spk_tp)/dt],[transpose(V4Spock_ms_spk_ff_min_alld_allatt),fliplr(transpose(V4Spock_ms_spk_ff_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Spock_ss_spk_tp/dt,fliplr(V4Spock_ss_spk_tp)/dt],[transpose(V4Spock_ss_spk_ff_min_alld_allatt),fliplr(transpose(V4Spock_ss_spk_ff_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_ff_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_ff_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Spock_ss_spk_tp/dt,V4Spock_ss_spk_ff_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_ff_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_ff_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_ff_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_ff_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_spk_tp/dt,V4Spock_ss_spk_ff_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_spk_tp/dt,V4Spock_ss_spk_ff_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedforward Spikes');
xlabel('Time (ms)');
ylabel('FF Activity');
axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,7)

fill([V4Okkie_stim_spk_tp/dt,fliplr(V4Okkie_stim_spk_tp)/dt],[transpose(V4Okkie_stim_spk_fb_min_alld_allatt),fliplr(transpose(V4Okkie_stim_spk_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Okkie_ms_spk_tp/dt,fliplr(V4Okkie_ms_spk_tp)/dt],[transpose(V4Okkie_ms_spk_fb_min_alld_allatt),fliplr(transpose(V4Okkie_ms_spk_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Okkie_ss_spk_tp/dt,fliplr(V4Okkie_ss_spk_tp)/dt],[transpose(V4Okkie_ss_spk_fb_min_alld_allatt),fliplr(transpose(V4Okkie_ss_spk_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Okkie_ss_spk_tp/dt,V4Okkie_ss_spk_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_spk_tp/dt,V4Okkie_ss_spk_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Okkie_ss_spk_tp/dt,V4Okkie_ss_spk_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Okkie Feedback Spikes');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,4,8)

fill([V4Spock_stim_spk_tp/dt,fliplr(V4Spock_stim_spk_tp)/dt],[transpose(V4Spock_stim_spk_fb_min_alld_allatt),fliplr(transpose(V4Spock_stim_spk_fb_max_alld_allatt))],[0.9 0.9 1],'EdgeColor','none');hold on;
fill([V4Spock_ms_spk_tp/dt,fliplr(V4Spock_ms_spk_tp)/dt],[transpose(V4Spock_ms_spk_fb_min_alld_allatt),fliplr(transpose(V4Spock_ms_spk_fb_max_alld_allatt))],[1 0.9 0.9],'EdgeColor','none');hold on;
fill([V4Spock_ss_spk_tp/dt,fliplr(V4Spock_ss_spk_tp)/dt],[transpose(V4Spock_ss_spk_fb_min_alld_allatt),fliplr(transpose(V4Spock_ss_spk_fb_max_alld_allatt))],[0.9 1 0.9],'EdgeColor','none');hold on;
plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_fb_alld_allatt,'color',[0 0 0.5],'LineWidth',2);hold on;
plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_fb_alld_allatt,'color',[0.5 0 0],'LineWidth',2);hold on;
plot(V4Spock_ss_spk_tp/dt,V4Spock_ss_spk_fb_alld_allatt,'color',[0 0.5 0],'LineWidth',2);hold on;
plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_fb_min_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_fb_max_alld_allatt,'color',[0 0 0.8],'LineWidth',0.5);hold on;
plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_fb_min_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_fb_max_alld_allatt,'color',[0.8 0 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_spk_tp/dt,V4Spock_ss_spk_fb_min_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;
plot(V4Spock_ss_spk_tp/dt,V4Spock_ss_spk_fb_max_alld_allatt,'color',[0 0.8 0],'LineWidth',0.5);hold on;

title('Spock Feedback Spikes');
xlabel('Time (ms)');
ylabel('FB Activity');
axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V4 Feedback/Feedforward Analysis. All Attention Conditions','t');
legend('Stimulus','Microsaccade','Stimulus Shift');



figure
a=subplot(2,6,1);
clims = [min(min(V1Okkie_stim_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_stim_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_stim_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_stim_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V1Spock_stim_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_stim_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_stim_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_stim_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V1Okkie_ms_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_ms_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ms_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_ms_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V1Spock_ms_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_ms_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ms_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_ms_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on


a=subplot(2,6,5);
clims = [min(min(V1Okkie_ss_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_ss_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ss_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_ss_lfp_ff_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
title('Okkie Shift Stimulus')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V1Spock_ss_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_ss_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ss_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_ss_lfp_ff_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
title('Spock Shift Stimulus')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V1Okkie_stim_lfp_timecourse,2)
    plot(V1Okkie_stim_lfp_tp/dt,squeeze(mean(V1Okkie_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V1Spock_stim_lfp_timecourse,2)
    plot(V1Spock_stim_lfp_tp/dt,squeeze(mean(V1Spock_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V1Okkie_ms_lfp_timecourse,2)
    plot(V1Okkie_ms_lfp_tp/dt,squeeze(mean(V1Okkie_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Okkie_ms_lfp_tp(1)/dt,V1Okkie_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V1Spock_ms_lfp_timecourse,2)
    plot(V1Spock_ms_lfp_tp/dt,squeeze(mean(V1Spock_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Spock_ms_lfp_tp(1)/dt,V1Spock_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V1Okkie_ss_lfp_timecourse,2)
    plot(V1Okkie_ss_lfp_tp/dt,squeeze(mean(V1Okkie_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Okkie_ss_lfp_tp(1)/dt,V1Okkie_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V1Spock_ss_lfp_timecourse,2)
    plot(V1Spock_ss_lfp_tp/dt,squeeze(mean(V1Spock_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Spock_ss_lfp_tp(1)/dt,V1Spock_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V1 LFP Feedforward. All Attention Conditions','t');


figure
a=subplot(2,6,1);
clims = [min(min(V1Okkie_stim_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_stim_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_stim_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_stim_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V1Spock_stim_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_stim_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_stim_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_stim_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V1Okkie_ms_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_ms_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ms_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_ms_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V1Spock_ms_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_ms_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ms_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_ms_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,5);
clims = [min(min(V1Okkie_ss_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_ss_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ss_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_ss_lfp_fb_allatt(V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V1Spock_ss_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_ss_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ss_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_ss_lfp_fb_allatt(V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V1Okkie_stim_lfp_timecourse,2)
    plot(V1Okkie_stim_lfp_tp/dt,squeeze(mean(V1Okkie_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V1Spock_stim_lfp_timecourse,2)
    plot(V1Spock_stim_lfp_tp/dt,squeeze(mean(V1Spock_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V1Okkie_ms_lfp_timecourse,2)
    plot(V1Okkie_ms_lfp_tp/dt,squeeze(mean(V1Okkie_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Okkie_ms_lfp_tp(1)/dt,V1Okkie_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V1Spock_ms_lfp_timecourse,2)
    plot(V1Spock_ms_lfp_tp/dt,squeeze(mean(V1Spock_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Spock_ms_lfp_tp(1)/dt,V1Spock_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V1 LFP Feedback. All Attention Conditions','t');



subplot(2,6,11)
for contrast=1:size(V1Okkie_ss_lfp_timecourse,2)
    plot(V1Okkie_ss_lfp_tp/dt,squeeze(mean(V1Okkie_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Okkie_ss_lfp_tp(1)/dt,V1Okkie_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V1Spock_ss_lfp_timecourse,2)
    plot(V1Spock_ss_lfp_tp/dt,squeeze(mean(V1Spock_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V1Spock_ss_lfp_tp(1)/dt,V1Spock_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V1 LFP Feedback. All Attention Conditions','t');

figure
a=subplot(2,6,1);
clims = [min(min(V4Okkie_stim_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_stim_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_stim_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_stim_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V4Spock_stim_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_stim_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_stim_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_stim_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V4Okkie_ms_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_ms_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ms_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_ms_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V4Spock_ms_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_ms_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ms_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_ms_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,5);
clims = [min(min(V4Okkie_ss_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_ss_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ss_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_ss_lfp_ff_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
title('Okkie Stimulus Shift')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V4Spock_ss_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_ss_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ss_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_ss_lfp_ff_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
title('Spock Stimulus Shift')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V4Okkie_stim_lfp_timecourse,2)
    plot(V4Okkie_stim_lfp_tp/dt,squeeze(mean(V4Okkie_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V4Spock_stim_lfp_timecourse,2)
    plot(V4Spock_stim_lfp_tp/dt,squeeze(mean(V4Spock_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V4Okkie_ms_lfp_timecourse,2)
    plot(V4Okkie_ms_lfp_tp/dt,squeeze(mean(V4Okkie_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Okkie_ms_lfp_tp(1)/dt,V4Okkie_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V4Spock_ms_lfp_timecourse,2)
    plot(V4Spock_ms_lfp_tp/dt,squeeze(mean(V4Spock_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Spock_ms_lfp_tp(1)/dt,V4Spock_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V4Okkie_ss_lfp_timecourse,2)
    plot(V4Okkie_ss_lfp_tp/dt,squeeze(mean(V4Okkie_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Okkie_ss_lfp_tp(1)/dt,V4Okkie_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V4Spock_ss_lfp_timecourse,2)
    plot(V4Spock_ss_lfp_tp/dt,squeeze(mean(V4Spock_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Spock_ss_lfp_tp(1)/dt,V4Spock_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V4 LFP Feedforward. All Attention Conditions','t');


figure
a=subplot(2,6,1);
clims = [min(min(V4Okkie_stim_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_stim_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_stim_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_stim_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V4Spock_stim_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_stim_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_stim_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_stim_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V4Okkie_ms_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_ms_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ms_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_ms_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V4Spock_ms_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_ms_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ms_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_ms_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on


a=subplot(2,6,5);
clims = [min(min(V4Okkie_ss_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_ss_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ss_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_ss_lfp_fb_allatt(V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V4Spock_ss_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_ss_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ss_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_ss_lfp_fb_allatt(V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V4Okkie_stim_lfp_timecourse,2)
    plot(V4Okkie_stim_lfp_tp/dt,squeeze(mean(V4Okkie_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V4Spock_stim_lfp_timecourse,2)
    plot(V4Spock_stim_lfp_tp/dt,squeeze(mean(V4Spock_stim_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V4Okkie_ms_lfp_timecourse,2)
    plot(V4Okkie_ms_lfp_tp/dt,squeeze(mean(V4Okkie_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Okkie_ms_lfp_tp(1)/dt,V4Okkie_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V4Spock_ms_lfp_timecourse,2)
    plot(V4Spock_ms_lfp_tp/dt,squeeze(mean(V4Spock_ms_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Spock_ms_lfp_tp(1)/dt,V4Spock_ms_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V4Okkie_ss_lfp_timecourse,2)
    plot(V4Okkie_ss_lfp_tp/dt,squeeze(mean(V4Okkie_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Okkie_ss_lfp_tp(1)/dt,V4Okkie_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V4Spock_ss_lfp_timecourse,2)
    plot(V4Spock_ss_lfp_tp/dt,squeeze(mean(V4Spock_ss_lfp_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Average LFP (V)');
axis([V4Spock_ss_lfp_tp(1)/dt,V4Spock_ss_lfp_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V4 LFP Feedback. All Attention Conditions','t');
























figure
a=subplot(2,6,1);
clims = [min(min(V1Okkie_stim_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_stim_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_stim_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_stim_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V1Spock_stim_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_stim_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_stim_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_stim_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V1Okkie_ms_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_ms_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ms_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_ms_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V1Spock_ms_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_ms_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ms_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_ms_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,5);
clims = [min(min(V1Okkie_ss_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_ss_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ss_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_ss_spk_ff_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V1Spock_ss_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_ss_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ss_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_ss_spk_ff_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V1Okkie_stim_spk_timecourse,2)
    plot(V1Okkie_stim_spk_tp/dt,squeeze(mean(V1Okkie_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V1Spock_stim_spk_timecourse,2)
    plot(V1Spock_stim_spk_tp/dt,squeeze(mean(V1Spock_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V1Okkie_ms_spk_timecourse,2)
    plot(V1Okkie_ms_spk_tp/dt,squeeze(mean(V1Okkie_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Okkie_ms_spk_tp(1)/dt,V1Okkie_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V1Spock_ms_spk_timecourse,2)
    plot(V1Spock_ms_spk_tp/dt,squeeze(mean(V1Spock_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Spock_ms_spk_tp(1)/dt,V1Spock_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V1Okkie_ss_spk_timecourse,2)
    plot(V1Okkie_ss_spk_tp/dt,squeeze(mean(V1Okkie_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Okkie_ss_spk_tp(1)/dt,V1Okkie_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V1Spock_ss_spk_timecourse,2)
    plot(V1Spock_ss_spk_tp/dt,squeeze(mean(V1Spock_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Spock_ss_spk_tp(1)/dt,V1Spock_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V1 Spikes Feedforward. All Attention Conditions','t');


















figure
a=subplot(2,6,1);
clims = [min(min(V1Okkie_stim_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_stim_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_stim_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_stim_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V1Spock_stim_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_stim_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_stim_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_stim_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V1Okkie_ms_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_ms_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ms_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_ms_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V1Spock_ms_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_ms_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ms_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_ms_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,5);
clims = [min(min(V1Okkie_ss_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_ss_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Okkie_ss_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_ss_spk_fb_allatt(V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V1Spock_ss_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_ss_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V1Spock_ss_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_ss_spk_fb_allatt(V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V1Okkie_stim_spk_timecourse,2)
    plot(V1Okkie_stim_spk_tp/dt,squeeze(mean(V1Okkie_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V1Spock_stim_spk_timecourse,2)
    plot(V1Spock_stim_spk_tp/dt,squeeze(mean(V1Spock_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V1Okkie_ms_spk_timecourse,2)
    plot(V1Okkie_ms_spk_tp/dt,squeeze(mean(V1Okkie_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Okkie_ms_spk_tp(1)/dt,V1Okkie_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V1Spock_ms_spk_timecourse,2)
    plot(V1Spock_ms_spk_tp/dt,squeeze(mean(V1Spock_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Spock_ms_spk_tp(1)/dt,V1Spock_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V1Okkie_ss_spk_timecourse,2)
    plot(V1Okkie_ss_spk_tp/dt,squeeze(mean(V1Okkie_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Okkie_ss_spk_tp(1)/dt,V1Okkie_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V1Spock_ss_spk_timecourse,2)
    plot(V1Spock_ss_spk_tp/dt,squeeze(mean(V1Spock_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V1Spock_ss_spk_tp(1)/dt,V1Spock_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V1 Spikes Feedback. All Attention Conditions','t');

















figure
a=subplot(2,6,1);
clims = [min(min(V4Okkie_stim_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_stim_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_stim_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_stim_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V4Spock_stim_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_stim_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_stim_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_stim_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V4Okkie_ms_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_ms_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ms_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_ms_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V4Spock_ms_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_ms_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ms_spk_tp/dt,1:V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_ms_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,5);
clims = [min(min(V4Okkie_ss_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_ss_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ss_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_ss_spk_ff_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V4Spock_ss_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_ss_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ss_spk_tp/dt,1:V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_ss_spk_ff_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V4Okkie_stim_spk_timecourse,2)
    plot(V4Okkie_stim_spk_tp/dt,squeeze(mean(V4Okkie_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V4Spock_stim_spk_timecourse,2)
    plot(V4Spock_stim_spk_tp/dt,squeeze(mean(V4Spock_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V4Okkie_ms_spk_timecourse,2)
    plot(V4Okkie_ms_spk_tp/dt,squeeze(mean(V4Okkie_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Okkie_ms_spk_tp(1)/dt,V4Okkie_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V4Spock_ms_spk_timecourse,2)
    plot(V4Spock_ms_spk_tp/dt,squeeze(mean(V4Spock_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Spock_ms_spk_tp(1)/dt,V4Spock_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V4Okkie_ss_spk_timecourse,2)
    plot(V4Okkie_ss_spk_tp/dt,squeeze(mean(V4Okkie_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Okkie_ss_spk_tp(1)/dt,V4Okkie_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V4Spock_ss_spk_timecourse,2)
    plot(V4Spock_ss_spk_tp/dt,squeeze(mean(V4Spock_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Spock_ss_spk_tp(1)/dt,V4Spock_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V4 Spikes Feedforward. All Attention Conditions','t');


























figure
a=subplot(2,6,1);
clims = [min(min(V4Okkie_stim_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_stim_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_stim_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_stim_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
title('Okkie Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,2);
clims = [min(min(V4Spock_stim_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_stim_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_stim_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_stim_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
title('Spock Stimulus Onset')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,3);
clims = [min(min(V4Okkie_ms_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_ms_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ms_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_ms_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,4);
clims = [min(min(V4Spock_ms_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_ms_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ms_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_ms_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,5);
clims = [min(min(V4Okkie_ss_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_ss_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Okkie_ss_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_ss_spk_fb_allatt(V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
title('Okkie Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

a=subplot(2,6,6);
clims = [min(min(V4Spock_ss_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_ss_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
if clims==[0 0]
    clims=[0 1];
end
imagesc(V4Spock_ss_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_ss_spk_fb_allatt(V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
title('Spock Microsaccade')
xlabel('time (ms)')
ylabel('deep electrode        -        shallow electrode')
colorbar('northoutside')
colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
grid on

subplot(2,6,7)
for contrast=1:size(V4Okkie_stim_spk_timecourse,2)
    plot(V4Okkie_stim_spk_tp/dt,squeeze(mean(V4Okkie_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,8)
for contrast=1:size(V4Spock_stim_spk_timecourse,2)
    plot(V4Spock_stim_spk_tp/dt,squeeze(mean(V4Spock_stim_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,9)
for contrast=1:size(V4Okkie_ms_spk_timecourse,2)
    plot(V4Okkie_ms_spk_tp/dt,squeeze(mean(V4Okkie_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Okkie_ms_spk_tp(1)/dt,V4Okkie_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,10)
for contrast=1:size(V4Spock_ms_spk_timecourse,2)
    plot(V4Spock_ms_spk_tp/dt,squeeze(mean(V4Spock_ms_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Spock_ms_spk_tp(1)/dt,V4Spock_ms_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,11)
for contrast=1:size(V4Okkie_ss_spk_timecourse,2)
    plot(V4Okkie_ss_spk_tp/dt,squeeze(mean(V4Okkie_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Okkie_ss_spk_tp(1)/dt,V4Okkie_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

subplot(2,6,12)
for contrast=1:size(V4Spock_ss_spk_timecourse,2)
    plot(V4Spock_ss_spk_tp/dt,squeeze(mean(V4Spock_ss_spk_timecourse_allatt(contrast,:,:))),'Color',colorm(contrast,:));hold on
end
%    title('Stimulus Onset');
xlabel('Time (s)');
ylabel('Spikes/sec');
axis([V4Spock_ss_spk_tp(1)/dt,V4Spock_ss_spk_tp(end)/dt,0,1])
axis 'auto y'
grid on

SupLabel('V4 Spikes Feedback. All Attention Conditions','t');



for attention=1:size(V1Okkie_stim_lfp_ff_min_alld,1)
    figure
    subplot(2,4,1)
    
    fill([V1Okkie_stim_lfp_tp/dt,fliplr(V1Okkie_stim_lfp_tp)/dt],[V1Okkie_stim_lfp_ff_min_alld(attention,:),fliplr(V1Okkie_stim_lfp_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Okkie_ms_lfp_tp/dt,fliplr(V1Okkie_ms_lfp_tp)/dt],[V1Okkie_ms_lfp_ff_min_alld(attention,:),fliplr(V1Okkie_ms_lfp_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,2)
    
    fill([V1Spock_stim_lfp_tp/dt,fliplr(V1Spock_stim_lfp_tp)/dt],[V1Spock_stim_lfp_ff_min_alld(attention,:),fliplr(V1Spock_stim_lfp_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Spock_ms_lfp_tp/dt,fliplr(V1Spock_ms_lfp_tp)/dt],[V1Spock_ms_lfp_ff_min_alld(attention,:),fliplr(V1Spock_ms_lfp_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,3)
    
    fill([V1Okkie_stim_lfp_tp/dt,fliplr(V1Okkie_stim_lfp_tp)/dt],[V1Okkie_stim_lfp_fb_min_alld(attention,:),fliplr(V1Okkie_stim_lfp_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Okkie_ms_lfp_tp/dt,fliplr(V1Okkie_ms_lfp_tp)/dt],[V1Okkie_ms_lfp_fb_min_alld(attention,:),fliplr(V1Okkie_ms_lfp_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_stim_lfp_tp/dt,V1Okkie_stim_lfp_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,V1Okkie_ms_lfp_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,4)
    
    fill([V1Spock_stim_lfp_tp/dt,fliplr(V1Spock_stim_lfp_tp)/dt],[V1Spock_stim_lfp_fb_min_alld(attention,:),fliplr(V1Spock_stim_lfp_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Spock_ms_lfp_tp/dt,fliplr(V1Spock_ms_lfp_tp)/dt],[V1Spock_ms_lfp_fb_min_alld(attention,:),fliplr(V1Spock_ms_lfp_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_stim_lfp_tp/dt,V1Spock_stim_lfp_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_lfp_tp/dt,V1Spock_ms_lfp_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,5)
    
    fill([V1Okkie_stim_spk_tp/dt,fliplr(V1Okkie_stim_spk_tp)/dt],[V1Okkie_stim_spk_ff_min_alld(attention,:),fliplr(V1Okkie_stim_spk_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Okkie_ms_spk_tp/dt,fliplr(V1Okkie_ms_spk_tp)/dt],[V1Okkie_ms_spk_ff_min_alld(attention,:),fliplr(V1Okkie_ms_spk_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    
    fill([V1Spock_stim_spk_tp/dt,fliplr(V1Spock_stim_spk_tp)/dt],[V1Spock_stim_spk_ff_min_alld(attention,:),fliplr(V1Spock_stim_spk_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Spock_ms_spk_tp/dt,fliplr(V1Spock_ms_spk_tp)/dt],[V1Spock_ms_spk_ff_min_alld(attention,:),fliplr(V1Spock_ms_spk_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    
    fill([V1Okkie_stim_spk_tp/dt,fliplr(V1Okkie_stim_spk_tp)/dt],[V1Okkie_stim_spk_fb_min_alld(attention,:),fliplr(V1Okkie_stim_spk_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Okkie_ms_spk_tp/dt,fliplr(V1Okkie_ms_spk_tp)/dt],[V1Okkie_ms_spk_fb_min_alld(attention,:),fliplr(V1Okkie_ms_spk_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_stim_spk_tp/dt,V1Okkie_stim_spk_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Okkie_ms_spk_tp/dt,V1Okkie_ms_spk_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    
    fill([V1Spock_stim_spk_tp/dt,fliplr(V1Spock_stim_spk_tp)/dt],[V1Spock_stim_spk_fb_min_alld(attention,:),fliplr(V1Spock_stim_spk_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V1Spock_ms_spk_tp/dt,fliplr(V1Spock_ms_spk_tp)/dt],[V1Spock_ms_spk_fb_min_alld(attention,:),fliplr(V1Spock_ms_spk_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_stim_spk_tp/dt,V1Spock_stim_spk_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V1Spock_ms_spk_tp/dt,V1Spock_ms_spk_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V1 Feedback/Feedforward Analysis. Attention: ' num2str(attention)],'t');
    legend('Stimulus','Microsaccade');
end

if size(V1Okkie_stim_lfp_ff_min_alld,1)==2
    figure
    subplot(2,4,1)
    
    plot(V1Okkie_stim_lfp_tp/dt,abs(V1Okkie_stim_lfp_ff_alld(1,:))-abs(V1Okkie_stim_lfp_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,abs(V1Okkie_ms_lfp_ff_alld(1,:))-abs(V1Okkie_ms_lfp_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    title('Okkie Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,2)
    
    plot(V1Spock_stim_lfp_tp/dt,abs(V1Spock_stim_lfp_ff_alld(1,:))-abs(V1Spock_stim_lfp_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_lfp_tp/dt,abs(V1Spock_ms_lfp_ff_alld(1,:))-abs(V1Spock_ms_lfp_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,3)
    
    plot(V1Okkie_stim_lfp_tp/dt,abs(V1Okkie_stim_lfp_fb_alld(1,:))-abs(V1Okkie_stim_lfp_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_lfp_tp/dt,abs(V1Okkie_ms_lfp_fb_alld(1,:))-abs(V1Okkie_ms_lfp_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Okkie Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,4)
    
    plot(V1Spock_stim_lfp_tp/dt,abs(V1Spock_stim_lfp_fb_alld(1,:))-abs(V1Spock_stim_lfp_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_lfp_tp/dt,abs(V1Spock_ms_lfp_fb_alld(1,:))-abs(V1Spock_ms_lfp_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,5)
    
    plot(V1Okkie_stim_spk_tp/dt,abs(V1Okkie_stim_spk_ff_alld(1,:))-abs(V1Okkie_stim_spk_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_spk_tp/dt,abs(V1Okkie_ms_spk_ff_alld(1,:))-abs(V1Okkie_ms_spk_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Okkie Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    
    plot(V1Spock_stim_spk_tp/dt,abs(V1Spock_stim_spk_ff_alld(1,:))-abs(V1Spock_stim_spk_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_spk_tp/dt,abs(V1Spock_ms_spk_ff_alld(1,:))-abs(V1Spock_ms_spk_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    
    plot(V1Okkie_stim_spk_tp/dt,abs(V1Okkie_stim_spk_fb_alld(1,:))-abs(V1Okkie_stim_spk_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Okkie_ms_spk_tp/dt,abs(V1Okkie_ms_spk_fb_alld(1,:))-abs(V1Okkie_ms_spk_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Okkie Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    
    plot(V1Spock_stim_spk_tp/dt,abs(V1Spock_stim_spk_fb_alld(1,:))-abs(V1Spock_stim_spk_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V1Spock_ms_spk_tp/dt,abs(V1Spock_ms_spk_fb_alld(1,:))-abs(V1Spock_ms_spk_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V1 Feedback/Feedforward Analysis. Attentional Differences.','t');
    legend('Stimulus','Microsaccade');
end

for attention=1:size(V4Okkie_stim_lfp_ff_min_alld,1)
    figure
    subplot(2,4,1)
    
    fill([V4Okkie_stim_lfp_tp/dt,fliplr(V4Okkie_stim_lfp_tp)/dt],[V4Okkie_stim_lfp_ff_min_alld(attention,:),fliplr(V4Okkie_stim_lfp_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Okkie_ms_lfp_tp/dt,fliplr(V4Okkie_ms_lfp_tp)/dt],[V4Okkie_ms_lfp_ff_min_alld(attention,:),fliplr(V4Okkie_ms_lfp_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,2)
    
    fill([V4Spock_stim_lfp_tp/dt,fliplr(V4Spock_stim_lfp_tp)/dt],[V4Spock_stim_lfp_ff_min_alld(attention,:),fliplr(V4Spock_stim_lfp_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Spock_ms_lfp_tp/dt,fliplr(V4Spock_ms_lfp_tp)/dt],[V4Spock_ms_lfp_ff_min_alld(attention,:),fliplr(V4Spock_ms_lfp_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,3)
    
    fill([V4Okkie_stim_lfp_tp/dt,fliplr(V4Okkie_stim_lfp_tp)/dt],[V4Okkie_stim_lfp_fb_min_alld(attention,:),fliplr(V4Okkie_stim_lfp_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Okkie_ms_lfp_tp/dt,fliplr(V4Okkie_ms_lfp_tp)/dt],[V4Okkie_ms_lfp_fb_min_alld(attention,:),fliplr(V4Okkie_ms_lfp_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_stim_lfp_tp/dt,V4Okkie_stim_lfp_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,V4Okkie_ms_lfp_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,4)
    
    fill([V4Spock_stim_lfp_tp/dt,fliplr(V4Spock_stim_lfp_tp)/dt],[V4Spock_stim_lfp_fb_min_alld(attention,:),fliplr(V4Spock_stim_lfp_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Spock_ms_lfp_tp/dt,fliplr(V4Spock_ms_lfp_tp)/dt],[V4Spock_ms_lfp_fb_min_alld(attention,:),fliplr(V4Spock_ms_lfp_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_stim_lfp_tp/dt,V4Spock_stim_lfp_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_lfp_tp/dt,V4Spock_ms_lfp_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,5)
    
    fill([V4Okkie_stim_spk_tp/dt,fliplr(V4Okkie_stim_spk_tp)/dt],[V4Okkie_stim_spk_ff_min_alld(attention,:),fliplr(V4Okkie_stim_spk_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Okkie_ms_spk_tp/dt,fliplr(V4Okkie_ms_spk_tp)/dt],[V4Okkie_ms_spk_ff_min_alld(attention,:),fliplr(V4Okkie_ms_spk_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    
    fill([V4Spock_stim_spk_tp/dt,fliplr(V4Spock_stim_spk_tp)/dt],[V4Spock_stim_spk_ff_min_alld(attention,:),fliplr(V4Spock_stim_spk_ff_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Spock_ms_spk_tp/dt,fliplr(V4Spock_ms_spk_tp)/dt],[V4Spock_ms_spk_ff_min_alld(attention,:),fliplr(V4Spock_ms_spk_ff_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_ff_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_ff_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_ff_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_ff_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_ff_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_ff_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    
    fill([V4Okkie_stim_spk_tp/dt,fliplr(V4Okkie_stim_spk_tp)/dt],[V4Okkie_stim_spk_fb_min_alld(attention,:),fliplr(V4Okkie_stim_spk_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Okkie_ms_spk_tp/dt,fliplr(V4Okkie_ms_spk_tp)/dt],[V4Okkie_ms_spk_fb_min_alld(attention,:),fliplr(V4Okkie_ms_spk_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_stim_spk_tp/dt,V4Okkie_stim_spk_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Okkie_ms_spk_tp/dt,V4Okkie_ms_spk_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Okkie Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    
    fill([V4Spock_stim_spk_tp/dt,fliplr(V4Spock_stim_spk_tp)/dt],[V4Spock_stim_spk_fb_min_alld(attention,:),fliplr(V4Spock_stim_spk_fb_max_alld(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([V4Spock_ms_spk_tp/dt,fliplr(V4Spock_ms_spk_tp)/dt],[V4Spock_ms_spk_fb_min_alld(attention,:),fliplr(V4Spock_ms_spk_fb_max_alld(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_fb_alld(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_fb_alld(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_fb_min_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_stim_spk_tp/dt,V4Spock_stim_spk_fb_max_alld(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_fb_min_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(V4Spock_ms_spk_tp/dt,V4Spock_ms_spk_fb_max_alld(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    
    title('Spock Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V4 Feedback/Feedforward Analysis. Attention: ' num2str(attention)],'t');
    legend('Stimulus','Microsaccade');
end

if size(V4Okkie_stim_lfp_ff_min_alld,1)==2
    figure
    subplot(2,4,1)
    
    plot(V4Okkie_stim_lfp_tp/dt,abs(V4Okkie_stim_lfp_ff_alld(1,:))-abs(V4Okkie_stim_lfp_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,abs(V4Okkie_ms_lfp_ff_alld(1,:))-abs(V4Okkie_ms_lfp_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    title('Okkie Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,2)
    
    plot(V4Spock_stim_lfp_tp/dt,abs(V4Spock_stim_lfp_ff_alld(1,:))-abs(V4Spock_stim_lfp_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_lfp_tp/dt,abs(V4Spock_ms_lfp_ff_alld(1,:))-abs(V4Spock_ms_lfp_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,3)
    
    plot(V4Okkie_stim_lfp_tp/dt,abs(V4Okkie_stim_lfp_fb_alld(1,:))-abs(V4Okkie_stim_lfp_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_lfp_tp/dt,abs(V4Okkie_ms_lfp_fb_alld(1,:))-abs(V4Okkie_ms_lfp_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Okkie Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,4)
    
    plot(V4Spock_stim_lfp_tp/dt,abs(V4Spock_stim_lfp_fb_alld(1,:))-abs(V4Spock_stim_lfp_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_lfp_tp/dt,abs(V4Spock_ms_lfp_fb_alld(1,:))-abs(V4Spock_ms_lfp_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedback LFP');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,5)
    
    plot(V4Okkie_stim_spk_tp/dt,abs(V4Okkie_stim_spk_ff_alld(1,:))-abs(V4Okkie_stim_spk_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_spk_tp/dt,abs(V4Okkie_ms_spk_ff_alld(1,:))-abs(V4Okkie_ms_spk_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Okkie Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    
    plot(V4Spock_stim_spk_tp/dt,abs(V4Spock_stim_spk_ff_alld(1,:))-abs(V4Spock_stim_spk_ff_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_spk_tp/dt,abs(V4Spock_ms_spk_ff_alld(1,:))-abs(V4Spock_ms_spk_ff_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    
    plot(V4Okkie_stim_spk_tp/dt,abs(V4Okkie_stim_spk_fb_alld(1,:))-abs(V4Okkie_stim_spk_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Okkie_ms_spk_tp/dt,abs(V4Okkie_ms_spk_fb_alld(1,:))-abs(V4Okkie_ms_spk_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Okkie Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    
    plot(V4Spock_stim_spk_tp/dt,abs(V4Spock_stim_spk_fb_alld(1,:))-abs(V4Spock_stim_spk_fb_alld(2,:)),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(V4Spock_ms_spk_tp/dt,abs(V4Spock_ms_spk_fb_alld(1,:))-abs(V4Spock_ms_spk_fb_alld(2,:)),'color',[0.5 0 0],'LineWidth',2);hold on;
    
    title('Spock Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('FB Activity');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V4 Feedback/Feedforward Analysis. Attentional Differences.','t');
    legend('Stimulus','Microsaccade');
end

for attention=1:size(V1Okkie_stim_lfp_ff,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V1Okkie_stim_lfp_ff(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_stim_lfp_ff(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_stim_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_stim_lfp_ff(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V1Spock_stim_lfp_ff(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_stim_lfp_ff(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_stim_lfp_ff(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V1Okkie_ms_lfp_ff(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_ms_lfp_ff(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_ms_lfp_ff(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V1Spock_ms_lfp_ff(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_ms_lfp_ff(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_ms_lfp_ff(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_lfp_timecourse,2)
        plot(V1Okkie_stim_lfp_tp/dt,squeeze(mean(V1Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_lfp_timecourse,2)
        plot(V1Spock_stim_lfp_tp/dt,squeeze(mean(V1Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_lfp_timecourse,2)
        plot(V1Okkie_ms_lfp_tp/dt,squeeze(mean(V1Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_ms_lfp_tp(1)/dt,V1Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_lfp_timecourse,2)
        plot(V1Spock_ms_lfp_tp/dt,squeeze(mean(V1Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_ms_lfp_tp(1)/dt,V1Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V1 LFP Feedforward. Attention: ' num2str(attention)],'t');
end


if size(V1Okkie_stim_lfp_ff,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V1Okkie_stim_lfp_ff(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_stim_lfp_ff(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))) max(max(abs(V1Okkie_stim_lfp_ff(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_stim_lfp_ff(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V1Okkie_stim_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(abs(V1Okkie_stim_lfp_ff(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_stim_lfp_ff(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V1Spock_stim_lfp_ff(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_stim_lfp_ff(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))) max(max(abs(V1Spock_stim_lfp_ff(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_stim_lfp_ff(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(abs(V1Spock_stim_lfp_ff(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_stim_lfp_ff(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V1Okkie_ms_lfp_ff(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_ms_lfp_ff(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))) max(max(abs(V1Okkie_ms_lfp_ff(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_ms_lfp_ff(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(abs(V1Okkie_ms_lfp_ff(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_ms_lfp_ff(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V1Spock_ms_lfp_ff(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_ms_lfp_ff(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))) max(max(abs(V1Spock_ms_lfp_ff(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_ms_lfp_ff(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(abs(V1Spock_ms_lfp_ff(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_ms_lfp_ff(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_lfp_timecourse,2)
        plot(V1Okkie_stim_lfp_tp/dt,squeeze(mean(V1Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_lfp_timecourse,2)
        plot(V1Spock_stim_lfp_tp/dt,squeeze(mean(V1Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_lfp_timecourse,2)
        plot(V1Okkie_ms_lfp_tp/dt,squeeze(mean(V1Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_ms_lfp_tp(1)/dt,V1Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_lfp_timecourse,2)
        plot(V1Spock_ms_lfp_tp/dt,squeeze(mean(V1Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_ms_lfp_tp(1)/dt,V1Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V1 LFP Feedforward. Attentional Difference.','t');
end


for attention=1:size(V1Okkie_stim_lfp_fb,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V1Okkie_stim_lfp_fb(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_stim_lfp_fb(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_stim_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_stim_lfp_fb(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V1Spock_stim_lfp_fb(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_stim_lfp_fb(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_stim_lfp_fb(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V1Okkie_ms_lfp_fb(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))) max(max(V1Okkie_ms_lfp_fb(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(V1Okkie_ms_lfp_fb(attention,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V1Spock_ms_lfp_fb(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))) max(max(V1Spock_ms_lfp_fb(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(V1Spock_ms_lfp_fb(attention,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_lfp_timecourse,2)
        plot(V1Okkie_stim_lfp_tp/dt,squeeze(mean(V1Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_lfp_timecourse,2)
        plot(V1Spock_stim_lfp_tp/dt,squeeze(mean(V1Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_lfp_timecourse,2)
        plot(V1Okkie_ms_lfp_tp/dt,squeeze(mean(V1Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_ms_lfp_tp(1)/dt,V1Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_lfp_timecourse,2)
        plot(V1Spock_ms_lfp_tp/dt,squeeze(mean(V1Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_ms_lfp_tp(1)/dt,V1Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V1 LFP Feedback. Attention: ' num2str(attention)],'t');
end


if size(V1Okkie_stim_lfp_fb,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V1Okkie_stim_lfp_fb(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_stim_lfp_fb(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))) max(max(abs(V1Okkie_stim_lfp_fb(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_stim_lfp_fb(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V1Okkie_stim_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(abs(V1Okkie_stim_lfp_fb(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_stim_lfp_fb(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V1Spock_stim_lfp_fb(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_stim_lfp_fb(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))) max(max(abs(V1Spock_stim_lfp_fb(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_stim_lfp_fb(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(abs(V1Spock_stim_lfp_fb(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_stim_lfp_fb(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V1Okkie_ms_lfp_fb(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_ms_lfp_fb(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:)))) max(max(abs(V1Okkie_ms_lfp_fb(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_ms_lfp_fb(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_lfp_tp/dt,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,squeeze(abs(V1Okkie_ms_lfp_fb(1,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))-abs(V1Okkie_ms_lfp_fb(2,V1_Okkie_LFP_dmin:V1_Okkie_LFP_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V1Spock_ms_lfp_fb(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_ms_lfp_fb(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:)))) max(max(abs(V1Spock_ms_lfp_fb(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_ms_lfp_fb(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_lfp_tp/dt,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,squeeze(abs(V1Spock_ms_lfp_fb(1,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))-abs(V1Spock_ms_lfp_fb(2,V1_Spock_LFP_dmin:V1_Spock_LFP_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_lfp_timecourse,2)
        plot(V1Okkie_stim_lfp_tp/dt,squeeze(mean(V1Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_stim_lfp_tp(1)/dt,V1Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_lfp_timecourse,2)
        plot(V1Spock_stim_lfp_tp/dt,squeeze(mean(V1Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_stim_lfp_tp(1)/dt,V1Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_lfp_timecourse,2)
        plot(V1Okkie_ms_lfp_tp/dt,squeeze(mean(V1Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Okkie_ms_lfp_tp(1)/dt,V1Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_lfp_timecourse,2)
        plot(V1Spock_ms_lfp_tp/dt,squeeze(mean(V1Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V1Spock_ms_lfp_tp(1)/dt,V1Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V1 LFP Feedback. Attentional Difference.','t');
end

for attention=1:size(V4Okkie_stim_lfp_ff,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V4Okkie_stim_lfp_ff(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_stim_lfp_ff(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_stim_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_stim_lfp_ff(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V4Spock_stim_lfp_ff(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_stim_lfp_ff(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_stim_lfp_ff(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V4Okkie_ms_lfp_ff(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_ms_lfp_ff(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_ms_lfp_ff(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V4Spock_ms_lfp_ff(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_ms_lfp_ff(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_ms_lfp_ff(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_lfp_timecourse,2)
        plot(V4Okkie_stim_lfp_tp/dt,squeeze(mean(V4Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_lfp_timecourse,2)
        plot(V4Spock_stim_lfp_tp/dt,squeeze(mean(V4Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_lfp_timecourse,2)
        plot(V4Okkie_ms_lfp_tp/dt,squeeze(mean(V4Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_ms_lfp_tp(1)/dt,V4Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_lfp_timecourse,2)
        plot(V4Spock_ms_lfp_tp/dt,squeeze(mean(V4Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_ms_lfp_tp(1)/dt,V4Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V4 LFP Feedforward. Attention: ' num2str(attention)],'t');
end


if size(V4Okkie_stim_lfp_ff,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V4Okkie_stim_lfp_ff(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_stim_lfp_ff(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))) max(max(abs(V4Okkie_stim_lfp_ff(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_stim_lfp_ff(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V4Okkie_stim_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(abs(V4Okkie_stim_lfp_ff(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_stim_lfp_ff(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V4Spock_stim_lfp_ff(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_stim_lfp_ff(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))) max(max(abs(V4Spock_stim_lfp_ff(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_stim_lfp_ff(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(abs(V4Spock_stim_lfp_ff(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_stim_lfp_ff(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V4Okkie_ms_lfp_ff(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_ms_lfp_ff(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))) max(max(abs(V4Okkie_ms_lfp_ff(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_ms_lfp_ff(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(abs(V4Okkie_ms_lfp_ff(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_ms_lfp_ff(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V4Spock_ms_lfp_ff(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_ms_lfp_ff(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))) max(max(abs(V4Spock_ms_lfp_ff(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_ms_lfp_ff(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(abs(V4Spock_ms_lfp_ff(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_ms_lfp_ff(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_lfp_timecourse,2)
        plot(V4Okkie_stim_lfp_tp/dt,squeeze(mean(V4Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_lfp_timecourse,2)
        plot(V4Spock_stim_lfp_tp/dt,squeeze(mean(V4Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_lfp_timecourse,2)
        plot(V4Okkie_ms_lfp_tp/dt,squeeze(mean(V4Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_ms_lfp_tp(1)/dt,V4Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_lfp_timecourse,2)
        plot(V4Spock_ms_lfp_tp/dt,squeeze(mean(V4Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_ms_lfp_tp(1)/dt,V4Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V4 LFP Feedforward. Attentional difference.','t');
end

for attention=1:size(V4Okkie_stim_lfp_fb,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V4Okkie_stim_lfp_fb(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_stim_lfp_fb(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_stim_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_stim_lfp_fb(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V4Spock_stim_lfp_fb(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_stim_lfp_fb(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_stim_lfp_fb(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V4Okkie_ms_lfp_fb(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))) max(max(V4Okkie_ms_lfp_fb(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(V4Okkie_ms_lfp_fb(attention,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V4Spock_ms_lfp_fb(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))) max(max(V4Spock_ms_lfp_fb(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(V4Spock_ms_lfp_fb(attention,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_lfp_timecourse,2)
        plot(V4Okkie_stim_lfp_tp/dt,squeeze(mean(V4Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_lfp_timecourse,2)
        plot(V4Spock_stim_lfp_tp/dt,squeeze(mean(V4Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_lfp_timecourse,2)
        plot(V4Okkie_ms_lfp_tp/dt,squeeze(mean(V4Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_ms_lfp_tp(1)/dt,V4Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_lfp_timecourse,2)
        plot(V4Spock_ms_lfp_tp/dt,squeeze(mean(V4Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_ms_lfp_tp(1)/dt,V4Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V4 LFP Feedback. Attention: ' num2str(attention)],'t');
end


if size(V4Okkie_stim_lfp_fb,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V4Okkie_stim_lfp_fb(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_stim_lfp_fb(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))) max(max(abs(V4Okkie_stim_lfp_fb(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_stim_lfp_fb(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V4Okkie_stim_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(abs(V4Okkie_stim_lfp_fb(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_stim_lfp_fb(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V4Spock_stim_lfp_fb(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_stim_lfp_fb(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))) max(max(abs(V4Spock_stim_lfp_fb(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_stim_lfp_fb(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(abs(V4Spock_stim_lfp_fb(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_stim_lfp_fb(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V4Okkie_ms_lfp_fb(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_ms_lfp_fb(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:)))) max(max(abs(V4Okkie_ms_lfp_fb(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_ms_lfp_fb(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_lfp_tp/dt,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,squeeze(abs(V4Okkie_ms_lfp_fb(1,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))-abs(V4Okkie_ms_lfp_fb(2,V4_Okkie_LFP_dmin:V4_Okkie_LFP_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V4Spock_ms_lfp_fb(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_ms_lfp_fb(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:)))) max(max(abs(V4Spock_ms_lfp_fb(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_ms_lfp_fb(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_lfp_tp/dt,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,squeeze(abs(V4Spock_ms_lfp_fb(1,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))-abs(V4Spock_ms_lfp_fb(2,V4_Spock_LFP_dmin:V4_Spock_LFP_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_lfp_timecourse,2)
        plot(V4Okkie_stim_lfp_tp/dt,squeeze(mean(V4Okkie_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_stim_lfp_tp(1)/dt,V4Okkie_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_lfp_timecourse,2)
        plot(V4Spock_stim_lfp_tp/dt,squeeze(mean(V4Spock_stim_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_stim_lfp_tp(1)/dt,V4Spock_stim_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_lfp_timecourse,2)
        plot(V4Okkie_ms_lfp_tp/dt,squeeze(mean(V4Okkie_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Okkie_ms_lfp_tp(1)/dt,V4Okkie_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_lfp_timecourse,2)
        plot(V4Spock_ms_lfp_tp/dt,squeeze(mean(V4Spock_ms_lfp_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([V4Spock_ms_lfp_tp(1)/dt,V4Spock_ms_lfp_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V4 LFP Feedback. Attentional difference.','t');
end

for attention=1:size(V1Okkie_stim_spk_ff,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V1Okkie_stim_spk_ff(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_stim_spk_ff(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_stim_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_stim_spk_ff(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V1Spock_stim_spk_ff(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_stim_spk_ff(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_stim_spk_ff(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V1Okkie_ms_spk_ff(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_ms_spk_ff(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_ms_spk_ff(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V1Spock_ms_spk_ff(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_ms_spk_ff(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_ms_spk_ff(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_spk_timecourse,2)
        plot(V1Okkie_stim_spk_tp/dt,squeeze(mean(V1Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_spk_timecourse,2)
        plot(V1Spock_stim_spk_tp/dt,squeeze(mean(V1Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_spk_timecourse,2)
        plot(V1Okkie_ms_spk_tp/dt,squeeze(mean(V1Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Okkie_ms_spk_tp(1)/dt,V1Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_spk_timecourse,2)
        plot(V1Spock_ms_spk_tp/dt,squeeze(mean(V1Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Spock_ms_spk_tp(1)/dt,V1Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V1 Spikes Feedforward. Attention: ' num2str(attention)],'t');
end

if size(V1Okkie_stim_spk_ff,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V1Okkie_stim_spk_ff(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_stim_spk_ff(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))) max(max(abs(V1Okkie_stim_spk_ff(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_stim_spk_ff(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V1Okkie_stim_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(abs(V1Okkie_stim_spk_ff(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_stim_spk_ff(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V1Spock_stim_spk_ff(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_stim_spk_ff(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))) max(max(abs(V1Spock_stim_spk_ff(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_stim_spk_ff(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(abs(V1Spock_stim_spk_ff(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_stim_spk_ff(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V1Okkie_ms_spk_ff(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_ms_spk_ff(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))) max(max(abs(V1Okkie_ms_spk_ff(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_ms_spk_ff(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(abs(V1Okkie_ms_spk_ff(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_ms_spk_ff(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V1Spock_ms_spk_ff(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_ms_spk_ff(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))) max(max(abs(V1Spock_ms_spk_ff(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_ms_spk_ff(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(abs(V1Spock_ms_spk_ff(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_ms_spk_ff(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_spk_timecourse,2)
        plot(V1Okkie_stim_spk_tp/dt,squeeze(mean(V1Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_spk_timecourse,2)
        plot(V1Spock_stim_spk_tp/dt,squeeze(mean(V1Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_spk_timecourse,2)
        plot(V1Okkie_ms_spk_tp/dt,squeeze(mean(V1Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Okkie_ms_spk_tp(1)/dt,V1Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_spk_timecourse,2)
        plot(V1Spock_ms_spk_tp/dt,squeeze(mean(V1Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Spock_ms_spk_tp(1)/dt,V1Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V1 SPK Feedforward. Attentional Difference.','t');
end

for attention=1:size(V1Okkie_stim_spk_fb,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V1Okkie_stim_spk_fb(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_stim_spk_fb(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_stim_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_stim_spk_fb(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V1Spock_stim_spk_fb(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_stim_spk_fb(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_stim_spk_fb(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V1Okkie_ms_spk_fb(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))) max(max(V1Okkie_ms_spk_fb(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(V1Okkie_ms_spk_fb(attention,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V1Spock_ms_spk_fb(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))) max(max(V1Spock_ms_spk_fb(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(V1Spock_ms_spk_fb(attention,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_spk_timecourse,2)
        plot(V1Okkie_stim_spk_tp/dt,squeeze(mean(V1Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_spk_timecourse,2)
        plot(V1Spock_stim_spk_tp/dt,squeeze(mean(V1Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_spk_timecourse,2)
        plot(V1Okkie_ms_spk_tp/dt,squeeze(mean(V1Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Okkie_ms_spk_tp(1)/dt,V1Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_spk_timecourse,2)
        plot(V1Spock_ms_spk_tp/dt,squeeze(mean(V1Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V1Spock_ms_spk_tp(1)/dt,V1Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V1 Spikes Feedback. Attention: ' num2str(attention)],'t');
end

if size(V1Okkie_stim_spk_fb,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V1Okkie_stim_spk_fb(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_stim_spk_fb(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))) max(max(abs(V1Okkie_stim_spk_fb(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_stim_spk_fb(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V1Okkie_stim_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(abs(V1Okkie_stim_spk_fb(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_stim_spk_fb(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V1Spock_stim_spk_fb(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_stim_spk_fb(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))) max(max(abs(V1Spock_stim_spk_fb(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_stim_spk_fb(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_stim_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(abs(V1Spock_stim_spk_fb(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_stim_spk_fb(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V1Okkie_ms_spk_fb(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_ms_spk_fb(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:)))) max(max(abs(V1Okkie_ms_spk_fb(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_ms_spk_fb(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Okkie_ms_spk_tp/dt,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,squeeze(abs(V1Okkie_ms_spk_fb(1,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))-abs(V1Okkie_ms_spk_fb(2,V1_Okkie_SPK_dmin:V1_Okkie_SPK_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V1Spock_ms_spk_fb(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_ms_spk_fb(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:)))) max(max(abs(V1Spock_ms_spk_fb(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_ms_spk_fb(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V1Spock_ms_spk_tp/dt,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,squeeze(abs(V1Spock_ms_spk_fb(1,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))-abs(V1Spock_ms_spk_fb(2,V1_Spock_SPK_dmin:V1_Spock_SPK_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V1Okkie_stim_spk_timecourse,2)
        plot(V1Okkie_stim_spk_tp/dt,squeeze(mean(V1Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Okkie_stim_spk_tp(1)/dt,V1Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V1Spock_stim_spk_timecourse,2)
        plot(V1Spock_stim_spk_tp/dt,squeeze(mean(V1Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Spock_stim_spk_tp(1)/dt,V1Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V1Okkie_ms_spk_timecourse,2)
        plot(V1Okkie_ms_spk_tp/dt,squeeze(mean(V1Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Okkie_ms_spk_tp(1)/dt,V1Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V1Spock_ms_spk_timecourse,2)
        plot(V1Spock_ms_spk_tp/dt,squeeze(mean(V1Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V1Spock_ms_spk_tp(1)/dt,V1Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V1 SPK Feedback. Attentional Difference.','t');
end

for attention=1:size(V4Okkie_stim_spk_ff,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V4Okkie_stim_spk_ff(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_stim_spk_ff(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_stim_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_stim_spk_ff(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V4Spock_stim_spk_ff(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_stim_spk_ff(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_stim_spk_ff(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V4Okkie_ms_spk_ff(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_ms_spk_ff(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_ms_spk_ff(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V4Spock_ms_spk_ff(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_ms_spk_ff(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_spk_tp/dt,1:V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_ms_spk_ff(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_spk_timecourse,2)
        plot(V4Okkie_stim_spk_tp/dt,squeeze(mean(V4Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_spk_timecourse,2)
        plot(V4Spock_stim_spk_tp/dt,squeeze(mean(V4Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_spk_timecourse,2)
        plot(V4Okkie_ms_spk_tp/dt,squeeze(mean(V4Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Okkie_ms_spk_tp(1)/dt,V4Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_spk_timecourse,2)
        plot(V4Spock_ms_spk_tp/dt,squeeze(mean(V4Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Spock_ms_spk_tp(1)/dt,V4Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V4 Spikes Feedforward. Attention: ' num2str(attention)],'t');
end

if size(V4Okkie_stim_spk_ff,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V4Okkie_stim_spk_ff(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_stim_spk_ff(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))) max(max(abs(V4Okkie_stim_spk_ff(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_stim_spk_ff(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V4Okkie_stim_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(abs(V4Okkie_stim_spk_ff(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_stim_spk_ff(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V4Spock_stim_spk_ff(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_stim_spk_ff(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))) max(max(abs(V4Spock_stim_spk_ff(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_stim_spk_ff(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(abs(V4Spock_stim_spk_ff(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_stim_spk_ff(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V4Okkie_ms_spk_ff(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_ms_spk_ff(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))) max(max(abs(V4Okkie_ms_spk_ff(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_ms_spk_ff(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(abs(V4Okkie_ms_spk_ff(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_ms_spk_ff(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V4Spock_ms_spk_ff(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_ms_spk_ff(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))) max(max(abs(V4Spock_ms_spk_ff(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_ms_spk_ff(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(abs(V4Spock_ms_spk_ff(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_ms_spk_ff(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_spk_timecourse,2)
        plot(V4Okkie_stim_spk_tp/dt,squeeze(mean(V4Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_spk_timecourse,2)
        plot(V4Spock_stim_spk_tp/dt,squeeze(mean(V4Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_spk_timecourse,2)
        plot(V4Okkie_ms_spk_tp/dt,squeeze(mean(V4Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Okkie_ms_spk_tp(1)/dt,V4Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_spk_timecourse,2)
        plot(V4Spock_ms_spk_tp/dt,squeeze(mean(V4Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Spock_ms_spk_tp(1)/dt,V4Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V4 SPK Feedforward. Attentional difference.','t');
end

for attention=1:size(V4Okkie_stim_spk_fb,1)
    figure
    a=subplot(2,4,1);
    clims = [min(min(V4Okkie_stim_spk_fb(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_stim_spk_fb(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_stim_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_stim_spk_fb(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(V4Spock_stim_spk_fb(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_stim_spk_fb(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_stim_spk_fb(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(V4Okkie_ms_spk_fb(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))) max(max(V4Okkie_ms_spk_fb(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(V4Okkie_ms_spk_fb(attention,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(V4Spock_ms_spk_fb(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))) max(max(V4Spock_ms_spk_fb(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(V4Spock_ms_spk_fb(attention,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_spk_timecourse,2)
        plot(V4Okkie_stim_spk_tp/dt,squeeze(mean(V4Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_spk_timecourse,2)
        plot(V4Spock_stim_spk_tp/dt,squeeze(mean(V4Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_spk_timecourse,2)
        plot(V4Okkie_ms_spk_tp/dt,squeeze(mean(V4Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Okkie_ms_spk_tp(1)/dt,V4Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_spk_timecourse,2)
        plot(V4Spock_ms_spk_tp/dt,squeeze(mean(V4Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([V4Spock_ms_spk_tp(1)/dt,V4Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel(['V4 Spikes Feedback. Attention: ' num2str(attention)],'t');
end

if size(V4Okkie_stim_spk_fb,1)==2
    figure
    a=subplot(2,4,1);
    clims = [min(min(abs(V4Okkie_stim_spk_fb(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_stim_spk_fb(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))) max(max(abs(V4Okkie_stim_spk_fb(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_stim_spk_fb(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    
    imagesc(V4Okkie_stim_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(abs(V4Okkie_stim_spk_fb(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_stim_spk_fb(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))),clims)
    title('Okkie Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,2);
    clims = [min(min(abs(V4Spock_stim_spk_fb(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_stim_spk_fb(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))) max(max(abs(V4Spock_stim_spk_fb(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_stim_spk_fb(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_stim_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(abs(V4Spock_stim_spk_fb(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_stim_spk_fb(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))),clims)
    title('Spock Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,3);
    clims = [min(min(abs(V4Okkie_ms_spk_fb(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_ms_spk_fb(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:)))) max(max(abs(V4Okkie_ms_spk_fb(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_ms_spk_fb(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Okkie_ms_spk_tp/dt,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,squeeze(abs(V4Okkie_ms_spk_fb(1,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))-abs(V4Okkie_ms_spk_fb(2,V4_Okkie_SPK_dmin:V4_Okkie_SPK_dmax,:))),clims)
    title('Okkie Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,4,4);
    clims = [min(min(abs(V4Spock_ms_spk_fb(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_ms_spk_fb(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:)))) max(max(abs(V4Spock_ms_spk_fb(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_ms_spk_fb(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(V4Spock_ms_spk_tp/dt,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,squeeze(abs(V4Spock_ms_spk_fb(1,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))-abs(V4Spock_ms_spk_fb(2,V4_Spock_SPK_dmin:V4_Spock_SPK_dmax,:))),clims)
    title('Spock Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,4,5)
    for contrast=1:size(V4Okkie_stim_spk_timecourse,2)
        plot(V4Okkie_stim_spk_tp/dt,squeeze(mean(V4Okkie_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Okkie_stim_spk_tp(1)/dt,V4Okkie_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,6)
    for contrast=1:size(V4Spock_stim_spk_timecourse,2)
        plot(V4Spock_stim_spk_tp/dt,squeeze(mean(V4Spock_stim_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Spock_stim_spk_tp(1)/dt,V4Spock_stim_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,7)
    for contrast=1:size(V4Okkie_ms_spk_timecourse,2)
        plot(V4Okkie_ms_spk_tp/dt,squeeze(mean(V4Okkie_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Okkie_ms_spk_tp(1)/dt,V4Okkie_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,4,8)
    for contrast=1:size(V4Spock_ms_spk_timecourse,2)
        plot(V4Spock_ms_spk_tp/dt,squeeze(mean(V4Spock_ms_spk_timecourse(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    %    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average SPK (V)');
    axis([V4Spock_ms_spk_tp(1)/dt,V4Spock_ms_spk_tp(end)/dt,0,1])
    axis 'auto y'
    grid on
    
    SupLabel('V4 Spikes Feedback. Attentional difference.','t');
end

