%Initializes the variables necessary for LFP Stimulus onset processing
t_ini=timelock_avg_timeini;
t_fin=timelock_avg_timefin;
Timepoints();
timelock_avg=zeros(num_attentions,num_contrasts,num_depths,num_timepoints);
timelock_avg_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,num_timepoints);
timelock_avg_smooth=zeros(num_attentions,num_contrasts,num_depths,num_timepoints);
timelock_sess_smooth=zeros(max_sessions,num_attentions,num_contrasts,num_depths,num_timepoints);
timelock_avg_tp=[t_ini:dt:t_fin];
timelock_avg_numtp=length(timelock_avg_tp);
