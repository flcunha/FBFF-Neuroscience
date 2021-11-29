%plots microsaccade information

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
            plot(microsaccade_tp,squeeze(microsaccade_lfp(attention,contrast,depth,:)),'Color',colorm(contrast,:)); hold on;
        end        
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Average LFP (V)');
        axis([microsaccade_timeini,microsaccade_timefin,0,1])
        axis 'auto y'
        SupLabel(['LFP Microsaccade onset ERP - per depth. Attention: ' num2str(attention)],'t');    
    end
end
legend(contrast_label(1:num_contrasts));

% %Plot 2
% %Same plot as 1, but now divided by electrode
% for attention=1:num_attentions
%     figure
%     for depth=1:num_depths
%         if depth==ceil(num_depths/2)+1
%             figure
%         end
%         if depth<=ceil(num_depths/2)
%             subplot(2,ceil(ceil(num_depths/2)/2),depth);
%         else
%             subplot(2,ceil(ceil(num_depths/2)/2),depth-ceil(num_depths/2));
%         end
%         plot(microsaccade_tp,squeeze(microsaccade_lfp_tot(attention,depth,:)));
%         title([num2str(depth) '.']);
%         xlabel('Time (s)');
%         ylabel('Average LFP (V)');
%         axis([microsaccade_timeini,microsaccade_timefin,0,1])
%         axis 'auto y'
%         SupLabel(['Avg LFP Microsaccade onset ERP - per depth. Attention: ' num2str(attention)],'t');    
%     end
% end

%Plot 2
%Same plot as 1, but now divided by electrode
figure
for attention=1:num_attentions
	subplot(1,num_attentions,attention);
    for contrast=1:num_contrasts
    	plot(microsaccade_tp,squeeze(mean(microsaccade_lfp(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on;
    end
    title(['Attention: ' num2str(attention)]);
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([microsaccade_timeini,microsaccade_timefin,0,1]);
    axis 'auto y';
end
legend(contrast_label(1:num_contrasts));
SupLabel(['LFP Microsaccade onset ERP - avg all depths'],'t');    
% 
% figure
% for attention=1:num_attentions
%     plot(microsaccade_tp,microsaccade_lfp_tot2(attention,:)); hold on;
% end
% title('LFP Microsaccade onset ERP - avg all depths & contrasts');
% xlabel('Time (s)');
% ylabel('Average LFP (V)');
% axis([microsaccade_timeini,microsaccade_timefin,0,1])
% axis 'auto y'
% legend(['Attention 1' ;'Attention 2'])

% 
% %Plot 2
% %Same plot as 1, but now divided by electrode
% for attention=1:num_attentions
%     figure
%     for depth=1:num_depths
%         if depth==ceil(num_depths/2)+1
%             legend(contrast_label(1:num_contrasts))
%             figure
%         end
%         if depth<=ceil(num_depths/2)
%             subplot(2,ceil(ceil(num_depths/2)/2),depth);
%         else
%             subplot(2,ceil(ceil(num_depths/2)/2),depth-ceil(num_depths/2));
%         end
%         for contrast=1:num_contrasts
%             plot(microsaccade_tp,squeeze(microsaccade_csd(attention,contrast,depth,:)),'Color',colorm(contrast,:)); hold on;
%         end        
%         title([num2str(depth) '.']);
%         xlabel('Time (s)');
%         ylabel('Average CSD (V/d^2?)');
%         axis([microsaccade_timeini,microsaccade_timefin,0,1])
%         axis 'auto y'
%         SupLabel(['CSD Microsaccade onset ERP - per depth. Attention: ' num2str(attention)],'t');    
%     end
% end
% legend(contrast_label(1:num_contrasts));
% 
% 
% %Plot 2
% %Same plot as 1, but now divided by electrode
% figure
% for attention=1:num_attentions
% 	subplot(1,num_attentions,attention);
%     for contrast=1:num_contrasts
%     	plot(microsaccade_tp,squeeze(mean(microsaccade_csd(attention,contrast,2:end-1,:))),'Color',colorm(contrast,:));hold on;
%     end
%     title(['CSD Microsaccade onset ERP - avg all depth']);
%     xlabel('Time (s)');
%     ylabel('Average CSD (V/d^2?)');
%     axis([microsaccade_timeini,microsaccade_timefin,0,1]);
%     axis 'auto y';
% end
% legend(contrast_label(1:num_contrasts));

figure
plot(min(microsaccade_hist):(max(microsaccade_hist)-min(microsaccade_hist))/(50-1):max(microsaccade_hist),histcounts(microsaccade_hist,50));hold on
title('Histogram of microsaccade ocurrence in search interval');    

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
%            plot(microsaccade_tp,squeeze(microsaccade_spikes(attention,contrast,depth,:))/num_saccmatrix(attention,contrast),'Color',colorm(contrast,:)); 
            plot(microsaccade_tp,squeeze(microsaccade_spikes(attention,contrast,depth,:)),'Color',colorm(contrast,:)); 
            hold on;
        end        
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Spikes/sec');
        axis([microsaccade_timeini,microsaccade_timefin,0,1])
        axis 'auto y'
        SupLabel(['Spikes Microsaccade onset - per depth. Attention: ' num2str(attention)],'t');    
    end
end
legend(contrast_label(1:num_contrasts));

%Plot 2
%Same plot as 1, but now divided by electrode
figure
for attention=1:num_attentions
	subplot(1,num_attentions,attention);
    for contrast=1:num_contrasts
    	plot(microsaccade_tp,squeeze(sum(microsaccade_spikes(attention,contrast,:,:)))/num_depths,'Color',colorm(contrast,:));hold on;
    end
    title(['Attention: ' num2str(attention)]);
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([microsaccade_timeini,microsaccade_timefin,0,1]);
    axis 'auto y';
end
legend(contrast_label(1:num_contrasts));
SupLabel(['Spikes Microsaccade onset - avg all depths'],'t');    

