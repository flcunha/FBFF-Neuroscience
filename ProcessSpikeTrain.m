%Updates the spikes stimulus onset average values given the trial at hand.
for electrode=1:num_electrodes
    spiketrain=transpose(squeeze(timelock.trial(trial,electrodes(2,electrode),:)));
    spiketrain(isnan(spiketrain))=0;
%smooths the spike train    
    [optim_spiketrain,optimal_bandw]=SmoothSpikeTrainFast(spiketrain,timelock.time,1,15,1);
%updates the average spiketrain, taking into account amount of trials
%already taken care of
    n_trials=sum(num_trials_sess(:,attention,contrast,lam+electrode));
    n_trials_sess=num_trials_sess(num_sessions+1,attention,contrast,lam+electrode);
    spikes(attention,contrast,lam+electrode,:)=(squeeze(spikes(attention,contrast,lam+electrode,:))*n_trials+transpose(optim_spiketrain(spikes_tpini:spikes_tpfin)))/(n_trials+1);
    spikes_sess(num_sessions+1,attention,contrast,lam+electrode,:)=(squeeze(spikes_sess(num_sessions+1,attention,contrast,lam+electrode,:))*n_trials_sess+transpose(optim_spiketrain(spikes_tpini:spikes_tpfin)))/(n_trials_sess+1);

%Updates the ISI histogram count based on the spikes of the trial at hand
    spike_times=squeeze(find(timelock.trial(trial,electrodes(2,electrode),isi_tpini:isi_tpfin)>0.9));
    if ~isempty(spike_times)
        isi_vector=transpose(diff(spike_times));
        for i=1:length(isi_vector)
            if isi_vector(i)<=max_isi
                isi_count(lam+electrode,isi_vector(i))=isi_count(lam+electrode,isi_vector(i))+1;
            end
        end
    end
end
