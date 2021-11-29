%Initializes the variables necessary for Microsaccade onset processing
t_ini=ms_search_timeini;
t_fin=ms_search_timefin;
Timepoints();
ms_search_tp=t_ini:dt:t_fin;
ms_search_numtp=length(ms_search_tp);

t_ini=microsaccade_timeini;
t_fin=microsaccade_timefin;
Timepoints();
microsaccade_tp=[t_ini:dt:t_fin];
microsaccade_numtp=length(microsaccade_tp);
microsaccade_lfp=zeros(num_attentions,num_contrasts,num_depths,microsaccade_numtp);
microsaccade_lfp_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,microsaccade_numtp);

microsaccade_lfp_lat=NaN(num_attentions,num_contrasts,num_depths,4);

microsaccade_spikes=zeros(num_attentions,num_contrasts,num_depths,microsaccade_numtp);
microsaccade_spikes_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths,microsaccade_numtp);
microsaccade_hist=NaN(100000,1);
num_microsaccade=0;
num_saccmatrix=zeros(num_attentions,num_contrasts,num_depths);
num_saccmatrix_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths);
