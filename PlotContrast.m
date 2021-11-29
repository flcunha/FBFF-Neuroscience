%plots LFP stimulus onset information

if mini_session==1
%Plot 2
%Same plot as 1, but now divided by electrode
	attention=1;
	figure('units','normalized','outerposition',[0 0 1 1]);
    for depth=1:num_depths
        subplot(4,ceil(ceil(num_depths/2)/2),depth);
        for contrast=1:num_contrasts
            plot(timelock_avg_tp,squeeze(timelock_avg_smooth(attention,contrast,depth,:)),'Color',colorm(contrast,:));hold on
        end
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Average LFP (V)');
        axis([timelock_avg_timeini,timelock_avg_timefin,0,1])
        axis 'auto y'
        SupLabel(['LFP Stimulus onset ERP - per depth. Attention: ' num2str(attention)],'t');
    end
    legend(contrast_label(1:num_contrasts))
    return
end

% 
% i=8;figure;
% a=max(abs(timelock_avg_smooth(1,1,12,:))/max(abs(timelock_avg_smooth(1,i,12,:))));
% plot(timelock_avg_tp,[0;diff(squeeze(timelock_avg_smooth(1,1,12,:)))],'Color',colorm(1,:)); hold on;
% plot(timelock_avg_tp,[0;diff(squeeze(timelock_avg_smooth(1,i,12,:)))],'Color',colorm(i,:)); hold on;
% plot(timelock_avg_tp,squeeze(timelock_avg_smooth(1,1,12,:)),'Color',colorm(1,:)); hold on;
% plot(timelock_avg_tp,squeeze(timelock_avg_smooth(1,i,12,:)),'Color',colorm(i,:)); hold on;

%Plot 1
%Average LFP for each timepoint. One plot for each attention, in each plot
%one line for contrast, that is the average of all electrodes.
figure
for attention=1:num_attentions
    subplot(1,num_attentions,attention)
    for contrast=1:num_contrasts
        plot(timelock_avg_tp,squeeze(mean(timelock_avg_smooth(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on    
    end
    title(['Attention: ' num2str(attention)]);
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([timelock_avg_timeini,timelock_avg_timefin,0,1])
    axis 'auto y'
    grid on
end
legend(contrast_label(1:num_contrasts))
SupLabel('LFP Stimulus onset ERP - avg. all depths','t');

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
            plot(timelock_avg_tp,squeeze(timelock_avg_smooth(attention,contrast,depth,:)),'Color',colorm(contrast,:));hold on
        end
        title([num2str(depth) '.']);
        xlabel('Time (s)');
        ylabel('Average LFP (V)');
        axis([timelock_avg_timeini,timelock_avg_timefin,0,1])
        axis 'auto y'
        SupLabel(['LFP Stimulus onset ERP - per depth. Attention: ' num2str(attention)],'t');
    end
end
legend(contrast_label(1:num_contrasts))

%flc
return

if mini_session==1
    return
end

%Plot 3
%For each depthness and each time from stimulus onset, we have different
%potential values, oine for each contrast. We now check how the
%regression coefficient of the contrast (the impact of the contrast)
%changes with cortical layer and time from stimulus onset
%Define the contrast list
contrast_reg=transpose(contrast_list(1:num_contrasts));
contrast_reg= [ones(length(contrast_reg),1) contrast_reg];
timelock_reg=NaN(num_depths,timelock_avg_numtp);
timelock_r2=NaN(num_depths,timelock_avg_numtp);
figure
for attention=1:num_attentions
    for depth=1:num_depths
        for timep=1:timelock_avg_numtp
            %For the timepoint at hand (timep), we obtain the list of
            % average values, one for each contrast.
            signal_reg=transpose(squeeze(timelock_avg_smooth(attention,:,depth,timep)));
            %We then use linear regression to calculate the slope of the
            %line that best approximates the points (Ci,Si), where Ci is
            %the ith contrast, and Si is the ith average signal.
            regressor_sol = contrast_reg\signal_reg;
            timelock_reg(depth,timep)=regressor_sol(2);
            timelock_r2(depth,timep)=1-((sum((regressor_sol(2)*contrast_reg(:,2)+regressor_sol(1)-mean(signal_reg)).^2))/(sum((signal_reg-mean(signal_reg)).^2)));            
        end
    end
	subplot(num_attentions,2,(attention-1)*2+1)
%    clims = [-20 20];
    clims = [-1.5 1];
    imagesc(timelock_avg_tp,1:num_depths,timelock_reg,clims)
    title(['Regression Slope for contrast. Att: ' num2str(attention)])
    xlabel('time (s)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
   
	subplot(num_attentions,2,(attention-1)*2+2)
    clims = [-1 1];
    imagesc(timelock_avg_tp,1:num_depths,timelock_r2,clims)
    title(['R squared coefficient for contrast. Att: ' num2str(attention)])
    xlabel('time (s)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
end
SupLabel('LFP Regression Analysis on Contrast','t');


