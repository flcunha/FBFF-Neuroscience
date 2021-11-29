clear V1_electrodes V2_electrodes  V4_electrodes V1_channels V2_channels V4_channels timelock;
%load the file
load(filename)

file_loaded=1;
num_validtrials=0;
%because the electrode locations in the timelock of the file may change
%from file to file, we have to update.
UpdateElectrodes();

%because the timepoints existing in each file may change from file to file,
%for each interval we are dealing with (for lfp, spikes, fano factor,
%etc.), we need to update the timepoints for each of the analysis.
UpdateTimepoints();

%determines amount of valid trials in the file
for trial=1:size(timelock.trial,1)
    ValidateTrial();
    if validtrial==1
        num_validtrials=num_validtrials+1;
    end
end

num_trials_file=0;

