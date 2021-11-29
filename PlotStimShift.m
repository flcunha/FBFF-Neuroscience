%plots stimulus shift onset information


%Plot 2
%Same plot as 1, but now divided by electrode
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
            plot(stimshift_tp,squeeze(stimshift_lfp(attention,contrast,depth,:)),'Color',colorm(contrast,:)); hold on;
        end        
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Average LFP (V)');
        axis([stimshift_timeini,stimshift_timefin,0,1])
        axis 'auto y'
        SupLabel(['LFP Stimulus Shift onset ERP - per depth. Attention: ' num2str(attention)],'t');    
    end
end
legend(contrast_label(1:num_contrasts));

%Plot 2
%Same plot as 1, but now divided by electrode
figure
for attention=1:num_attentions
	subplot(1,num_attentions,attention);
    for contrast=1:num_contrasts
    	plot(stimshift_tp,squeeze(mean(stimshift_lfp(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on;
    end
    title(['Attention: ' num2str(attention)]);
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([stimshift_timeini,stimshift_timefin,0,1]);
    axis 'auto y';
end
legend(contrast_label(1:num_contrasts));
SupLabel(['LFP Stimulus Shift onset ERP - avg all depths'],'t');    

%Plot 2
%Same plot as 1, but now divided by electrode
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
%            plot(stimshift_tp,squeeze(stimshift_spikes(attention,contrast,depth,:))/num_saccmatrix(attention,contrast),'Color',colorm(contrast,:)); 
            plot(stimshift_tp,squeeze(stimshift_spikes(attention,contrast,depth,:)),'Color',colorm(contrast,:)); 
            hold on;
        end        
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Spikes/sec');
        axis([stimshift_timeini,stimshift_timefin,0,1])
        axis 'auto y'
        SupLabel(['Spikes Stimulus Shift onset - per depth. Attention: ' num2str(attention)],'t');    
    end
end
legend(contrast_label(1:num_contrasts));

%Plot 2
%Same plot as 1, but now divided by electrode
figure
for attention=1:num_attentions
	subplot(1,num_attentions,attention);
    for contrast=1:num_contrasts
    	plot(stimshift_tp,squeeze(sum(stimshift_spikes(attention,contrast,:,:)))/num_depths,'Color',colorm(contrast,:));hold on;
    end
    title(['Attention: ' num2str(attention)]);
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([stimshift_timeini,stimshift_timefin,0,1]);
    axis 'auto y';
end
legend(contrast_label(1:num_contrasts));
SupLabel(['Spikes Stimulus Shift onset - avg all depths'],'t');    

