%Finds the microsaccades existing in this trial and updates the respective
%microsaccade arrays with the both LFP and spikes info around that
%microsaccade
[saccend,eye_vol,eye_pos,amplend,sacphase ,saccend2]=MicrosaccDetection(squeeze(timelock.trial(trial,eyechannels,ms_search_tpini:ms_search_tpfin)),6,7,ms_search_tp);
sac=find(~isnan(saccend));
ms_left_numtp=length(find(microsaccade_tp<-1e-6));
ms_right_numtp=length(find(microsaccade_tp>1e-6));
numsac_tot=numsac_tot+length(sac);

%for each microsaccade during the trial...
for i=1:length(sac)
    S=sac(i);
    [~,idx]=min(abs(timelock.time-saccend(S)));   
    
%Guarantees its a valid microsaccade
    if idx-ms_left_numtp >= ms_search_tpini && idx+ms_right_numtp <= ms_search_tpfin && isempty(find(isnan(timelock.trial(trial,electrodes(:,:),idx-ms_left_numtp:idx+ms_right_numtp)),1)) && (i==1 || saccend(sac(i))-saccend(sac(i-1)) > microsaccade_timefin) && (i==length(sac) || saccend(sac(i+1)) - saccend(sac(i))> microsaccade_timefin)
        microsaccade_hist(sum(sum(sum(num_saccmatrix)))/num_electrodes+1)=saccend(S);
        numsac=numsac+1;
        for electrode=1:num_electrodes
%Updates lfp and spikes microsaccade information for each depth
            lfp_timecourse=squeeze(timelock.trial(trial,electrodes(1,electrode),idx-ms_left_numtp:idx+ms_right_numtp));
            lfp_timecourse=lfp_timecourse-transpose(timelock.avg(electrodes(1,electrode),idx-ms_left_numtp:idx+ms_right_numtp));
            lfp_timecourse=SmoothLFPFast(transpose(lfp_timecourse),microsaccade_tp);
            lfp_mean=0;
            microsaccade_lfp_sess(num_sessions+1,attention,contrast,lam+electrode,:)=(squeeze(microsaccade_lfp_sess(num_sessions+1,attention,contrast,lam+electrode,:))*num_saccmatrix_sess(num_sessions+1,attention,contrast,lam+electrode)+(lfp_timecourse - lfp_mean))/(num_saccmatrix_sess(num_sessions+1,attention,contrast,lam+electrode)+1);


            
            spiketrain=transpose(squeeze(timelock.trial(trial,electrodes(2,electrode),idx-ms_left_numtp:idx+ms_right_numtp)));
            [optim_spiketrain,optimal_bandw]=SmoothSpikeTrainFast(spiketrain,timelock.time,1,20,0);
            microsaccade_spikes_sess(num_sessions+1,attention,contrast,lam+electrode,:)=(squeeze(microsaccade_spikes_sess(num_sessions+1,attention,contrast,lam+electrode,:))*num_saccmatrix_sess(num_sessions+1,attention,contrast,lam+electrode)+transpose(optim_spiketrain))/(num_saccmatrix_sess(num_sessions+1,attention,contrast,lam+electrode)+1);
        end
%Increases amounts of microsaccades found
        num_saccmatrix(attention,contrast,lam+1:lam+num_electrodes)=num_saccmatrix(attention,contrast,lam+1:lam+num_electrodes)+1;
        num_saccmatrix_sess(num_sessions+1,attention,contrast,lam+1:lam+num_electrodes)=num_saccmatrix_sess(num_sessions+1,attention,contrast,lam+1:lam+num_electrodes)+1;
    end
end
