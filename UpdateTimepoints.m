%Updates all the indexes of the time arrays for lfp/spikes/microsaccade/etc.
t_ini=timelock_avg_timeini;
t_fin=timelock_avg_timefin;
Timepoints();
timelock_avg_tpini=timepoint_ini;
timelock_avg_tpfin=timepoint_fin;

t_ini=spikes_timeini;
t_fin=spikes_timefin;
Timepoints();
spikes_tpini=timepoint_ini;
spikes_tpfin=timepoint_fin;

t_ini=fano_timeini;
t_fin=fano_timefin;
Timepoints();
fano_tpini=timepoint_ini;
fano_tpfin=timepoint_fin;

t_ini=isi_timeini;
t_fin=isi_timefin;
Timepoints();
isi_tpini=timepoint_ini;
isi_tpfin=timepoint_fin;

t_ini=latency_timeini;
t_fin=latency_timefin;
Timepoints();
latency_tpini=timepoint_ini;
latency_tpfin=timepoint_fin;

t_ini=min_timeini;
t_fin=max_timefin;
Timepoints();
min_tpini=timepoint_ini;
max_tpfin=timepoint_fin;

t_ini=ms_search_timeini;
ms_search_timefin=timelock.time(end);
t_fin=ms_search_timefin;
Timepoints();
ms_search_tpini=timepoint_ini;
ms_search_tpfin=timepoint_fin;
ms_search_tp=[ms_search_timeini:dt:ms_search_timefin];

t_ini=ms_reject_timeini;
ms_reject_timefin=timelock.time(end);
t_fin=ms_reject_timefin;
Timepoints();
ms_reject_tpini=timepoint_ini;
ms_reject_tpfin=timepoint_fin;
ms_reject_tp=[ms_reject_timeini:dt:ms_reject_timefin];


t_ini=ss_search_timeini;
ss_search_timefin=timelock.time(end);
t_fin=ss_search_timefin;
Timepoints();
ss_search_tpini=timepoint_ini;
ss_search_tpfin=timepoint_fin;
ss_search_tp=[ss_search_timeini:dt:ss_search_timefin];

t_ini=ss_reject_timeini;
ss_reject_timefin=timelock.time(end);
t_fin=ss_reject_timefin;
Timepoints();
ss_reject_tpini=timepoint_ini;
ss_reject_tpfin=timepoint_fin;
ss_reject_tp=[ss_reject_timeini:dt:ss_reject_timefin];
