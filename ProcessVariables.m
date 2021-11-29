%Having finished analyzing all trials of all sessions, we now smooth all
%the arrays obtained. Note we have to smooth the timecourses individually,
%per attention condition/contrast/depth/session

if icontrast==1 || ifbff==1
    timelock_avg=CalcSessTimecourses(timelock_avg_sess,num_trials_sess);
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                lfp_timecourse=squeeze(timelock_avg(attention,contrast,depth,:));
                if max(abs(lfp_timecourse))>0
                    [lfp_regtimecourse,~,~]=SmoothLFPFast(lfp_timecourse,timelock_avg_tp,lfp_bw);
                    timelock_avg_smooth(attention,contrast,depth,:)=lfp_regtimecourse;
                else
                    timelock_avg_smooth(attention,contrast,depth,:)=lfp_timecourse;
                end
                for session=1:max_sessions
                    lfp_timecourse=squeeze(timelock_avg_sess(session,attention,contrast,depth,:));
                    if max(abs(lfp_timecourse))>0
                        [lfp_regtimecourse,~,~]=SmoothLFPFast(lfp_timecourse,timelock_avg_tp,lfp_bw);
                        timelock_sess_smooth(session,attention,contrast,depth,:)=lfp_regtimecourse;
                    else
                        timelock_sess_smooth(session,attention,contrast,depth,:)=lfp_timecourse;
                    end                    
                end
            end
        end
    end
end

if ispiketrain==1 || ifbff==1
    baseline=find(spikes_tp<0,1,'last');
    if isempty(baseline)
        baseline=10;
    end
    for attention=1:num_attentions
        for depth=1:num_depths
%            baseline_mean=mean(squeeze(spikes_tot_smooth(attention,1,depth,1:find(spikes_tp<baseline,1,'last'))));
            for contrast=1:num_contrasts
                spiketrain=transpose(squeeze(spikes(attention,contrast,depth,:)));
                [spiketrain_smooth,~]=SmoothSpikeTrainFast(spiketrain,spikes_tp,0,spiketrain_bw,0);
                spikes_smooth(attention,contrast,depth,:)=spiketrain_smooth;
                for session=1:max_sessions
                    spiketrain=transpose(squeeze(spikes_sess(session,attention,contrast,depth,:)));
                    [spiketrain_smooth,~]=SmoothSpikeTrainFast(spiketrain,spikes_tp,0,spiketrain_bw,0);
                    spikes_smooth_sess(session,attention,contrast,depth,:)=spiketrain_smooth;
                end
            end
        end
    end    
    
	baseline_mean=mean(spikes_smooth(:,:,:,1:baseline),4);
    baseline_mean=mean(baseline_mean(:));
    for attention=1:num_attentions
        for depth=1:num_depths
%            baseline_mean=mean(squeeze(spikes_tot_smooth(attention,1,depth,1:find(spikes_tp<baseline,1,'last'))));
            for contrast=1:num_contrasts
                contrast_mean=mean(squeeze(spikes_smooth(attention,contrast,depth,1:baseline)));
                spikes_smooth(attention,contrast,depth,:)=spikes_smooth(attention,contrast,depth,:)+baseline_mean-contrast_mean;
                for session=1:max_sessions
                    contrast_mean_sess=mean(squeeze(spikes_smooth_sess(session,attention,contrast,depth,1:baseline)));
                    spikes_smooth_sess(session,attention,contrast,depth,:)=spikes_smooth_sess(session,attention,contrast,depth,:)+baseline_mean-contrast_mean;                    
                end
            end
        end
    end
end

if imicrosaccade==1 || ifbff==1
    microsaccade_lfp=CalcSessTimecourses(microsaccade_lfp_sess,num_saccmatrix_sess);
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                lfp_timecourse=squeeze(microsaccade_lfp(attention,contrast,depth,:));
                if max(abs(lfp_timecourse))>0
                    [lfp_regtimecourse,~,~]=SmoothLFPFast(lfp_timecourse,microsaccade_tp,ms_lfp_bw);
                    microsaccade_lfp(attention,contrast,depth,:)=lfp_regtimecourse;
                else
                    microsaccade_lfp(attention,contrast,depth,:)=lfp_timecourse;
                end
            end            
        end
    end
    microsaccade_spikes=CalcSessTimecourses(microsaccade_spikes_sess,num_saccmatrix_sess);
    baseline=find(microsaccade_tp<0,1,'last');
    if isempty(baseline)
        baseline=10;
    end
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                spiketrain=transpose(squeeze(microsaccade_spikes(attention,contrast,depth,:)));
                [spiketrain_smooth,~]=SmoothSpikeTrainFast(spiketrain,microsaccade_tp,0,ms_spk_bw,0);
                microsaccade_spikes(attention,contrast,depth,:)=spiketrain_smooth;
            end            
        end
    end
	baseline_mean=mean(microsaccade_spikes(:,:,:,1:baseline),4);
    baseline_mean=mean(baseline_mean(:));
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                contrast_mean=mean(squeeze(microsaccade_spikes(attention,contrast,depth,1:baseline)));
                microsaccade_spikes(attention,contrast,depth,:)=microsaccade_spikes(attention,contrast,depth,:)+baseline_mean-contrast_mean;
            end            
        end
    end
    
end


if istimshift==1 || ifbff==1
    stimshift_lfp=CalcSessTimecourses(stimshift_lfp_sess,num_stimshift_sess);
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                lfp_timecourse=squeeze(stimshift_lfp(attention,contrast,depth,:));
                if max(abs(lfp_timecourse))>0
                    [lfp_regtimecourse,~,~]=SmoothLFPFast(lfp_timecourse,stimshift_tp,ss_lfp_bw);
                    stimshift_lfp(attention,contrast,depth,:)=lfp_regtimecourse;
                else
                    stimshift_lfp(attention,contrast,depth,:)=lfp_timecourse;
                end
            end            
        end
    end
    stimshift_spikes=CalcSessTimecourses(stimshift_spikes_sess,num_stimshift_sess);
    baseline=find(stimshift_tp<0,1,'last');
    if isempty(baseline)
        baseline=10;
    end
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                spiketrain=transpose(squeeze(stimshift_spikes(attention,contrast,depth,:)));
                [spiketrain_smooth,~]=SmoothSpikeTrainFast(spiketrain,stimshift_tp,0,ss_spk_bw,0);
                stimshift_spikes(attention,contrast,depth,:)=spiketrain_smooth;
            end            
        end
    end
	baseline_mean=mean(stimshift_spikes(:,:,:,1:baseline),4);
    baseline_mean=mean(baseline_mean(:));
    for attention=1:num_attentions
        for depth=1:num_depths
            for contrast=1:num_contrasts
                contrast_mean=mean(squeeze(stimshift_spikes(attention,contrast,depth,1:baseline)));
                stimshift_spikes(attention,contrast,depth,:)=stimshift_spikes(attention,contrast,depth,:)+baseline_mean-contrast_mean;
            end            
        end
    end    
end



