%Finds when the stimulus shift occured in this trial and updates the
%respecive arrays with both the LFP and spikes info around that
%shift
photo_channel=find(ismember(timelock.label,'AD58'));
[m,idx]=min(diff(timelock.trial(trial,photo_channel,:)));
ss_left_numtp=length(find(stimshift_tp<-1e-6));
ss_right_numtp=length(find(stimshift_tp>1e-6));
[saccend,eye_vol,eye_pos,amplend,sacphase ,saccend2]=MicrosaccDetection(squeeze(timelock.trial(trial,eyechannels,idx-100:idx+200)),6,7,m-dt*200:dt:m+dt*400);
%verifies there were no microsaccade close to the stimulus shift, so as to
%not compromise the date
if isempty(find(~isnan(saccend))) && idx >= ss_search_tpini-100 && idx+ss_right_numtp <= ss_search_tpfin && isempty(find(isnan(timelock.trial(trial,electrodes(:,:),idx-ss_left_numtp:idx+ss_right_numtp)),1))
    for electrode=1:num_electrodes
%Updates lfp and spikes stimulus shift onset information for each depth
        lfp_timecourse=squeeze(timelock.trial(trial,electrodes(1,electrode),idx-ss_left_numtp:idx+ss_right_numtp));
        lfp_timecourse=lfp_timecourse-transpose(timelock.avg(electrodes(1,electrode),idx-ss_left_numtp:idx+ss_right_numtp));
        lfp_timecourse=SmoothLFPFast(transpose(lfp_timecourse),stimshift_tp);
        lfp_mean=0;
        stimshift_lfp_sess(num_sessions+1,attention,contrast,lamss+electrode,:)=(squeeze(stimshift_lfp_sess(num_sessions+1,attention,contrast,lamss+electrode,:))*num_stimshift_sess(num_sessions+1,attention,contrast,lamss+electrode)+(lfp_timecourse - lfp_mean))/(num_stimshift_sess(num_sessions+1,attention,contrast,lamss+electrode)+1);
        spiketrain=transpose(squeeze(timelock.trial(trial,electrodes(2,electrode),idx-ss_left_numtp:idx+ss_right_numtp)));
        [optim_spiketrain,optimal_bandw]=SmoothSpikeTrainFast(spiketrain,timelock.time,1,20,0);
        stimshift_spikes_sess(num_sessions+1,attention,contrast,lamss+electrode,:)=(squeeze(stimshift_spikes_sess(num_sessions+1,attention,contrast,lamss+electrode,:))*num_stimshift_sess(num_sessions+1,attention,contrast,lamss+electrode)+transpose(optim_spiketrain))/(num_stimshift_sess(num_sessions+1,attention,contrast,lamss+electrode)+1);
    end
%Increases amounts of stimulus shift trials found
    num_stimshift(attention,contrast,lamss+1:lamss+num_electrodes)=num_stimshift(attention,contrast,lamss+1:lamss+num_electrodes)+1;
    num_stimshift_sess(num_sessions+1,attention,contrast,lamss+1:lamss+num_electrodes)=num_stimshift_sess(num_sessions+1,attention,contrast,lamss+1:lamss+num_electrodes)+1;
    num_totvalidtrials_ss=num_totvalidtrials_ss+1;
else
	num_totinvalidtrials_ss=num_totinvalidtrials_ss+1;
end









