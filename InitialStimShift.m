%Initializes the variables necessary for Stimulus shift onset processing
t_ini=ss_search_timeini;
t_fin=ss_search_timefin;
Timepoints();
ss_search_tp=t_ini:dt:t_fin;
ss_search_numtp=length(ss_search_tp);

t_ini=stimshift_timeini;
t_fin=stimshift_timefin;
Timepoints();
stimshift_tp=[t_ini:dt:t_fin];
stimshift_numtp=length(stimshift_tp);
stimshift_lfp=zeros(num_attentions,num_contrasts,num_depths,stimshift_numtp);
stimshift_lfp_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,stimshift_numtp);

stimshift_spikes=zeros(num_attentions,num_contrasts,num_depths,stimshift_numtp);
stimshift_spikes_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,stimshift_numtp);
num_stimshift=zeros(num_attentions,num_contrasts,num_depths);
num_stimshift_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths);
