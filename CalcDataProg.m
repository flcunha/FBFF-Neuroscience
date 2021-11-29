function [avgc0, perc] = CalcDataProg(timecourses,data_type,tp)
%this function calculates the percentage relation between contrasts based
%on the highest contrast (so high contrast=1, next contrast = 0.9 for
%example, ..., lowest contrast = 0.1), taking into account the noise for
%each timecourse

%these values will then be used on the FB calculation
%since the spikes data isn't centered around 0, we center it
    if data_type==1
     	avgc0=0;
    else
        mean0=mean(mean(mean(mean(timecourses(:,:,:,1:find(tp<0,1,'last'))))));
        timecourses=timecourses-mean0;
        avgc0=0;
    end
    
    %Uses the derivative of the activity to get the local impact of 
    %contrast on cortical activity
    diff_timecourses=abs(diff(timecourses,1,4));

    %Gets the average highest 5 timepoints for each contrast before the
    %stimulus is presented
    act_noise=squeeze(mean(diff_timecourses(1,:,:,1:find(tp<0,1,'last')),3));
    act_noise=sort(act_noise,2);
    act_noise=act_noise(:,end-5:end);
    act_noise=mean(act_noise,2);

    %Gets the average highest 5 timepoints for each contrast over all the
    %timepoints
    act_onset=squeeze(mean(diff_timecourses(1,:,:,:),3));
    act_onset=sort(act_onset,2);
    act_onset=act_onset(:,end-5:end);
    act_onset=mean(act_onset,2);

    %Subtracts the average after stimulus over the noise average, to find
    %activity the average that isn't related to noise
    act_unnoise=act_onset-act_noise;

    %Calculates the percentage of "unnoisy" activity of each contrast,
    %having the highest contrast as base (ie. highest contrast = 100%)
    if act_unnoise(1)==0
        perc=act_unnoise;
    else
        perc=act_unnoise./act_unnoise(1);
    end
    
end

