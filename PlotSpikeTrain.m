%plots spike train stimulus onset information

%Plot 4
%Creates a plot for each attentional condition, where it averages the spike
%rate over time of each contrast and plots it simultaneously
figure
for attention=1:num_attentions
    subplot(1,num_attentions,attention)
    for contrast=1:num_contrasts
        plot(spikes_tp,squeeze(sum(spikes_smooth(attention,contrast,:,:))/num_depths),'Color',colorm(contrast,:)); hold on
    end
    title(['Attention: ' num2str(attention)]);
    xlabel('Time (s)');
    ylabel('Firing rate (spikes/s)');
    xlim([spikes_timeini,spikes_timefin]);
	ylim([0,max(max(squeeze(sum(spikes_smooth(attention,:,:,:),3)/num_depths)))+5]);
end
legend(contrast_label(1:num_contrasts))
SupLabel(['Spikes Stimulus Onset Firing Rate - avg all depths'],'t');    

%Plot 5
%Creates a plot equal to Plot4 but plots it for each layer.
smoothing=30;
smooth_wind=gausswin(smoothing);
smooth_wind=smooth_wind/sum(smooth_wind);
for attention=1:num_attentions 
    figure
    for depth=1:num_depths
        if depth==ceil(num_depths/2)+1
            legend(contrast_label(1:num_contrasts))
            figure
        end
        if depth<=ceil(num_depths/2)
            subplot(2,ceil(ceil(num_depths/2)/2),depth);
        else
            subplot(2,ceil(ceil(num_depths/2)/2),depth-ceil(num_depths/2));
        end
        for contrast=1:num_contrasts
%            spiketrain=transpose(squeeze(spikes_tot(attention,contrast,depth,:)));
%           spiketrain=spiketrain/(dt*num_trials(attention,contrast,depth));
%            [spiketrain_smooth,~]=SmoothSpikeTrain(spiketrain,spikes_tot_tp,num_trials(attention,contrast,depth));
%           spiketrain_smooth=filter(smooth_wind,1,spiketrain);
%           spiketrain_smooth=smooth(spiketrain,smoothing,'lowess');
            plot(spikes_tp,squeeze(spikes_smooth(attention,contrast,depth,:)),'Color',colorm(contrast,:)); hold on
        end
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Firing rate (spikes/s)');
        xlim([spikes_timeini,spikes_timefin]);
        ylim([0,max(max(max(squeeze(spikes_smooth(attention,:,:,:)))))+5]);
        SupLabel(['Spikes Stimulus Onset Firing Rate - per depths. Attention: ' num2str(attention)],'t');    
    end
end
legend(contrast_label(1:num_contrasts))

return
%flc
%Plot ?
%For each depthness and each time from stimulus onset, we have different
%potential firing rate values, one for each contrast. We now check how the
%regression coefficient of the contrast (the impact of the contrast)
%changes with cortical layer and time from stimulus onset
contrast_reg=transpose(contrast_list(1:num_contrasts));
contrast_reg= [ones(length(contrast_reg),1) contrast_reg];
spikes_reg=NaN(num_depths,spikes_numtp);
spikes_r2=NaN(num_depths,spikes_numtp);
figure
for attention=1:num_attentions
    for depth=1:num_depths
        for timep=1:spikes_numtp
            %For the timepoint at hand (timep), we obtain the list of
            % average values, one for each contrast.
            signal_reg=transpose(squeeze(spikes_smooth(attention,:,depth,timep)));
            %We then use linear regression to calculate the slope of the
            %line that best approximates the points (Ci,Si), where Ci is
            %the ith contrast, and Si is the ith average signal.
            regressor_sol = contrast_reg\signal_reg;
            spikes_reg(depth,timep)=regressor_sol(2);
            spikes_r2(depth,timep)=1-((sum((regressor_sol(2)*contrast_reg(:,2)+regressor_sol(1)-mean(signal_reg)).^2))/(sum((signal_reg-mean(signal_reg)).^2)));            
        end
    end
	subplot(num_attentions,2,(attention-1)*2+1)
%    clims = [-20 20];
    clims = [-1.5 1];
    imagesc(spikes_tp,1:num_depths,spikes_reg,clims)
    title(['Spike Regression Slope for contrast. Att: ' num2str(attention)])
    xlabel('time (s)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
   
	subplot(num_attentions,2,(attention-1)*2+2)
    clims = [-1 1];
    imagesc(spikes_tp,1:num_depths,spikes_r2,clims)
    title(['Spike R^2 coefficient for contrast. Att: ' num2str(attention)])
    xlabel('time (s)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
end
SupLabel('Spikes Regression Analysis on Contrast','t');

% There are errors in this calculation, namely that in
% ProcessSpikeTrainFile it makes a sum over all trials without knowing if
% the trial is correct or not. When (or mostly if) this problem is solved,
% I will plot it again.
% Plot 6
% Creates a plot where for each attentional condition and with different
% timebins, calculates the fano factor for each electrode/timebin pair and
% plots it.
% figure
% for attention=1:num_attentions
%     for ibin=1:length(bins)
%         subplot(num_attentions,length(bins),(attention-1)*length(bins)+ibin)
%         bin=bins(ibin);
%         num_bins=ceil((fano_tpfin-fano_tpini+1)/bin);
%         clims = [0 4];
%         x = [fano_timeini fano_timefin];
%         y = [0 num_depths];
%         imagesc(x,y,squeeze(fano_matrix(attention,ibin,:,1:num_bins)),clims)
%         colorbar
%         title(['Att: ' num2str(attention) '. Bin Size: ' num2str(bin) '.']);
%         xlabel('Time (ms)');
%         ylabel('Electrode Depth');
%     end
% end
% SupLabel('Fano Factor analysis','t');
%    
% 
%Calculates the average ISI for all depths
total_isi=0;
for i=1:size(isi_count,1)
    for j=2:size(isi_count,2)
        total_isi=total_isi+isi_count(i,j)*j;
    end
end
avg_isi_total=total_isi/sum(sum(isi_count));

%Plot 7
%Shows the histogram of the isi of the whole experiment, adding an indication of the average
%ISI.
figure
bar(sum(isi_count(:,:))); hold on
title(['Total ISI Histogram'])
xlabel('ISI (ms)')
ylabel('Spike Count')
xlim([0,max_isi]);
a=annotation('textarrow');
a.Color='black';
a.X=[0.25 0.25];
a.Y=[0.5 0.45];
a.String=num2str(avg_isi_total);
a.LineStyle='none';
a.HeadStyle='cback2';

%Plot 9
%Plots the average spikes per trial relative to each electrode,
%irregardless of attention, contrast, etc.
figure
bar(squeeze(sum(sum(sum(spikes,1),2),4))./(squeeze(sum(sum(sum(num_trials_sess,1),2),3))));
title('Average spikes per trial for each electrode')
xlabel('shallow electrode        -        deep electrode')
xlim([0,num_depths+1]);
ylabel('Spikes/trial')


%Plot 9
%Plots the coefficient of variation for the ISI of each electrode,
%irregardless of attention, contrast, etc.
figure
for depth=1:num_depths
    isi_vector=[];
    for isi=1:size(isi_count,2)
        isi_vector(length(isi_vector)+1:length(isi_vector)+isi_count(depth,isi))=ones(1,isi_count(depth,isi))*isi;
    end
    coeff_var(depth)=std(isi_vector)/mean(isi_vector);
end
bar(coeff_var)
title(['Coefficient of Variation for each electrode'])
xlabel('shallow electrode        -        deep electrode')
xlim([0,num_depths+1])
