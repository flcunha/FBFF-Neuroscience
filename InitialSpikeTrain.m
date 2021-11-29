%Initializes the variables necessary for SPK Stimulus onset processing
t_ini=spikes_timeini;
t_fin=spikes_timefin;
Timepoints();
spikes=zeros(num_attentions,num_contrasts,num_depths,num_timepoints);
spikes_smooth=zeros(num_attentions,num_contrasts,num_depths,num_timepoints);
spikes_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,num_timepoints);
spikes_smooth_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,num_timepoints);
spikes_tp=t_ini:dt:t_fin;
spikes_numtp=length(spikes_tp);

t_ini=fano_timeini;
t_fin=fano_timefin;
Timepoints();
spikes_trial=[];
fano_tp=t_ini:dt:t_fin;
fano_numtp=length(fano_tp);
fano_matrix=zeros(num_attentions,length(bins),num_depths,fano_numtp);

t_ini=isi_timeini;
t_fin=isi_timefin;
Timepoints();
isi_tp=t_ini:dt:t_fin;
isi_numtp=length(isi_tp);
isi_count=zeros(num_depths,max_isi);

