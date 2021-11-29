%Updates the LFP stimulus onset average values given the trial at hand.
for electrode=1:num_electrodes
    for timep=1:timelock_avg_numtp
        timelock_avg_sess(num_sessions+1,attention,contrast,lam+electrode,timep)=(timelock_avg_sess(num_sessions+1,attention,contrast,lam+electrode,timep)*num_trials_sess(num_sessions+1,attention,contrast,lam+electrode)+timelock.trial(trial,electrodes(1,electrode),timelock_avg_tpini+timep-1))/(num_trials_sess(num_sessions+1,attention,contrast,lam+electrode)+1);
    end
end


