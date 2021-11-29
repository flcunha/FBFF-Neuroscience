%plots fb and ff information
iplotdelay=1;

for attention=1:num_attentions
    figure
    subplot(2,2,1)
    
    fill([timelock_avg_tp/dt,fliplr(timelock_avg_tp)/dt],[alld_ff_stim_timecourse_min_lfp(attention,:),fliplr(alld_ff_stim_timecourse_max_lfp(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([microsaccade_tp/dt,fliplr(microsaccade_tp)/dt],[alld_ff_ms_timecourse_min_lfp(attention,:),fliplr(alld_ff_ms_timecourse_max_lfp(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    fill([stimshift_tp/dt,fliplr(stimshift_tp)/dt],[alld_ff_ss_timecourse_min_lfp(attention,:),fliplr(alld_ff_ss_timecourse_max_lfp(attention,:))],[0.9 1 0.9],'EdgeColor','none');hold on;
    plot(timelock_avg_tp/dt,alld_ff_stim_timecourse_lfp(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(microsaccade_tp/dt,alld_ff_ms_timecourse_lfp(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(stimshift_tp/dt,alld_ff_ss_timecourse_lfp(attention,:),'color',[0 0.5 0],'LineWidth',2);hold on;
    plot(timelock_avg_tp/dt,alld_ff_stim_timecourse_min_lfp(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(timelock_avg_tp/dt,alld_ff_stim_timecourse_max_lfp(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_ff_ms_timecourse_min_lfp(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_ff_ms_timecourse_max_lfp(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_ff_ss_timecourse_min_lfp(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_ff_ss_timecourse_max_lfp(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    
    title('Feedforward LFP');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([fbff_timeini/dt,fbff_timefin/dt,0,1])
    axis 'auto y'
    grid on

    subplot(2,2,2)

    fill([timelock_avg_tp/dt,fliplr(timelock_avg_tp)/dt],[alld_fb_stim_timecourse_min_lfp(attention,:),fliplr(alld_fb_stim_timecourse_max_lfp(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([microsaccade_tp/dt,fliplr(microsaccade_tp)/dt],[alld_fb_ms_timecourse_min_lfp(attention,:),fliplr(alld_fb_ms_timecourse_max_lfp(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    fill([stimshift_tp/dt,fliplr(stimshift_tp)/dt],[alld_fb_ss_timecourse_min_lfp(attention,:),fliplr(alld_fb_ss_timecourse_max_lfp(attention,:))],[0.9 1 0.9],'EdgeColor','none');hold on;
    plot(timelock_avg_tp/dt,alld_fb_stim_timecourse_lfp(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(microsaccade_tp/dt,alld_fb_ms_timecourse_lfp(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(stimshift_tp/dt,alld_fb_ss_timecourse_lfp(attention,:),'color',[0 0.5 0],'LineWidth',2);hold on;
    plot(timelock_avg_tp/dt,alld_fb_stim_timecourse_min_lfp(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(timelock_avg_tp/dt,alld_fb_stim_timecourse_max_lfp(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_fb_ms_timecourse_min_lfp(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_fb_ms_timecourse_max_lfp(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_fb_ss_timecourse_min_lfp(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_fb_ss_timecourse_max_lfp(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;

    title('Feedback LFP');
    xlabel('Time (ms)');
    ylabel('fb Activity');
    axis([fbff_timeini/dt,fbff_timefin/dt,0,1])
    axis 'auto y'
    grid on

    subplot(2,2,3)
    fill([timelock_avg_tp/dt,fliplr(timelock_avg_tp)/dt],[alld_ff_stim_timecourse_min_spk(attention,:),fliplr(alld_ff_stim_timecourse_max_spk(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([microsaccade_tp/dt,fliplr(microsaccade_tp)/dt],[alld_ff_ms_timecourse_min_spk(attention,:),fliplr(alld_ff_ms_timecourse_max_spk(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    fill([stimshift_tp/dt,fliplr(stimshift_tp)/dt],[alld_ff_ss_timecourse_min_spk(attention,:),fliplr(alld_ff_ss_timecourse_max_spk(attention,:))],[0.9 1 0.9],'EdgeColor','none');hold on;
    plot(timelock_avg_tp/dt,alld_ff_stim_timecourse_spk(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(microsaccade_tp/dt,alld_ff_ms_timecourse_spk(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(stimshift_tp/dt,alld_ff_ss_timecourse_spk(attention,:),'color',[0 0.5 0],'LineWidth',2);hold on;
    plot(timelock_avg_tp/dt,alld_ff_stim_timecourse_min_spk(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(timelock_avg_tp/dt,alld_ff_stim_timecourse_max_spk(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_ff_ms_timecourse_min_spk(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_ff_ms_timecourse_max_spk(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_ff_ss_timecourse_min_spk(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_ff_ss_timecourse_max_spk(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    title('Feedforward Spikes');
    xlabel('Time (ms)');
    ylabel('FF Activity');
    axis([fbff_timeini/dt,fbff_timefin/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,2,4)
    fill([timelock_avg_tp/dt,fliplr(timelock_avg_tp)/dt],[alld_fb_stim_timecourse_min_spk(attention,:),fliplr(alld_fb_stim_timecourse_max_spk(attention,:))],[0.9 0.9 1],'EdgeColor','none');hold on;
    fill([microsaccade_tp/dt,fliplr(microsaccade_tp)/dt],[alld_fb_ms_timecourse_min_spk(attention,:),fliplr(alld_fb_ms_timecourse_max_spk(attention,:))],[1 0.9 0.9],'EdgeColor','none');hold on;
    fill([stimshift_tp/dt,fliplr(stimshift_tp)/dt],[alld_fb_ss_timecourse_min_spk(attention,:),fliplr(alld_fb_ss_timecourse_max_spk(attention,:))],[0.9 1 0.9],'EdgeColor','none');hold on;
    plot(timelock_avg_tp/dt,alld_fb_stim_timecourse_spk(attention,:),'color',[0 0 0.5],'LineWidth',2);hold on;
    plot(microsaccade_tp/dt,alld_fb_ms_timecourse_spk(attention,:),'color',[0.5 0 0],'LineWidth',2);hold on;
    plot(stimshift_tp/dt,alld_fb_ss_timecourse_spk(attention,:),'color',[0 0.5 0],'LineWidth',2);hold on;
    plot(timelock_avg_tp/dt,alld_fb_stim_timecourse_min_spk(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(timelock_avg_tp/dt,alld_fb_stim_timecourse_max_spk(attention,:),'color',[0 0 0.8],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_fb_ms_timecourse_min_spk(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(microsaccade_tp/dt,alld_fb_ms_timecourse_max_spk(attention,:),'color',[0.8 0 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_fb_ss_timecourse_min_spk(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    plot(stimshift_tp/dt,alld_fb_ss_timecourse_max_spk(attention,:),'color',[0 0.8 0],'LineWidth',0.5);hold on;
    title('Feedback Spikes');
    xlabel('Time (ms)');
    ylabel('fb Activity');
    axis([fbff_timeini/dt,fbff_timefin/dt,0,1])
    axis 'auto y'
    grid on
    
    legend([{'Stimulus Onset'},{'Microsaccade'}])
    SupLabel([monkey ' ' region ' Absolute Value Feedback/Feedforward Analysis'],'t');
end

if iplotdelay==1
    for attention=1:num_attentions
        figure
        for contrast=1:num_contrasts
            subplot(2,ceil(num_contrasts/2),contrast);
            clims = [min(min(min(delays_stim_lfp(attention,:,:,:)))) max(max(max(delays_stim_lfp(attention,:,:,:))))];
            if clims==[0 0]
                clims=[0 1];
            end
            imagesc(fbff_tp,1:num_depths,squeeze(delays_stim_lfp(attention,contrast,:,:)),clims);
            title(['Delays for contrast: ' num2str(contrast)])
            xlabel('time (s)')
            ylabel('deep electrode        -        shallow electrode')
            
            colormap hot;
            colorbar
        end
        SupLabel([monkey ' ' region ' LFP Stimulus Onset Delay. Att: ' num2str(attention)],'t');
        
        figure
        for contrast=1:num_contrasts
            subplot(2,ceil(num_contrasts/2),contrast);
            clims = [min(min(min(delays_ms_lfp(attention,:,:,:)))) max(max(max(delays_ms_lfp(attention,:,:,:))))];
            if clims==[0 0]
                clims=[0 1];
            end
            imagesc(fbff_tp,1:num_depths,squeeze(delays_ms_lfp(attention,contrast,:,:)),clims);
            title(['Delays for contrast: ' num2str(contrast)])
            xlabel('time (s)')
            ylabel('deep electrode        -        shallow electrode')
            colormap hot;
            colorbar
        end
        SupLabel([monkey ' ' region ' LFP Microsaccade Delay. Att: ' num2str(attention)],'t');
        
        figure
        for contrast=1:num_contrasts
            subplot(2,ceil(num_contrasts/2),contrast);
            clims = [min(min(min(delays_ss_lfp(attention,:,:,:)))) max(max(max(delays_ss_lfp(attention,:,:,:))))];
            if clims==[0 0]
                clims=[0 1];
            end
            imagesc(fbff_tp,1:num_depths,squeeze(delays_ss_lfp(attention,contrast,:,:)),clims);
            title(['Delays for contrast: ' num2str(contrast)])
            xlabel('time (s)')
            ylabel('deep electrode        -        shallow electrode')
            colormap hot;
            colorbar
        end
        SupLabel([monkey ' ' region ' LFP Stimulus Shift Delay. Att: ' num2str(attention)],'t');
    end
    
    for attention=1:num_attentions
        figure
        for contrast=1:num_contrasts
            subplot(2,ceil(num_contrasts/2),contrast);
            clims = [min(min(min(delays_stim_spk(attention,:,:,:)))) max(max(max(delays_stim_spk(attention,:,:,:))))];
            if clims==[0 0]
                clims=[0 1];
            end
            imagesc(fbff_tp,1:num_depths,squeeze(delays_stim_spk(attention,contrast,:,:)),clims);
            title(['Delays for contrast: ' num2str(contrast)])
            xlabel('time (s)')
            ylabel('deep electrode        -        shallow electrode')
            colormap hot;
            colorbar
        end
        SupLabel([monkey ' ' region ' Spikes Stimulus Onset Delay. Att: ' num2str(attention)],'t');
        
        figure
        for contrast=1:num_contrasts
            subplot(2,ceil(num_contrasts/2),contrast);
            clims = [min(min(min(delays_ms_spk(attention,:,:,:)))) max(max(max(delays_ms_spk(attention,:,:,:))))];
            if clims==[0 0]
                clims=[0 1];
            end
            imagesc(fbff_tp,1:num_depths,squeeze(delays_ms_spk(attention,contrast,:,:)),clims);
            title(['Delays for contrast: ' num2str(contrast)])
            xlabel('time (s)')
            ylabel('deep electrode        -        shallow electrode')
            colormap hot;
            colorbar
        end
        SupLabel([monkey ' ' region ' Spikes Microsaccade Delay. Att: ' num2str(attention)],'t');
        
        figure
        for contrast=1:num_contrasts
            subplot(2,ceil(num_contrasts/2),contrast);
            clims = [min(min(min(delays_ss_spk(attention,:,:,:)))) max(max(max(delays_ss_spk(attention,:,:,:))))];
            if clims==[0 0]
                clims=[0 1];
            end
            imagesc(fbff_tp,1:num_depths,squeeze(delays_ss_spk(attention,contrast,:,:)),clims);
            title(['Delays for contrast: ' num2str(contrast)])
            xlabel('time (s)')
            ylabel('deep electrode        -        shallow electrode')
            colormap hot;
            colorbar
        end
        SupLabel([monkey ' ' region ' Spikes Stimulus Shift Delay. Att: ' num2str(attention)],'t');
    end
end

for attention=1:num_attentions
    figure
    a=subplot(2,3,1);
    clims = [min(min(min(ff_stim_timecourse_lfp))) max(max(max(ff_stim_timecourse_lfp)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(ff_stim_timecourse_lfp,2),squeeze(ff_stim_timecourse_lfp(attention,:,:)),clims)
    title('Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,3,2);
    clims = [min(min(min(ff_ms_timecourse_lfp))) max(max(max(ff_ms_timecourse_lfp)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(microsaccade_tp/dt,1:size(ff_ms_timecourse_lfp,2),squeeze(ff_ms_timecourse_lfp(attention,:,:)),clims)
    title('Microsaccade Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,3,3);
    clims = [min(min(min(ff_ss_timecourse_lfp))) max(max(max(ff_ss_timecourse_lfp)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(stimshift_tp/dt,1:size(ff_ss_timecourse_lfp,2),squeeze(ff_ss_timecourse_lfp(attention,:,:)),clims)
    title('Stimulus Shift Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,3,4)
    for contrast=1:num_contrasts
        plot(timelock_avg_tp/dt,squeeze(mean(timelock_avg_smooth(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([timelock_avg_timeini/dt,timelock_avg_timefin/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,3,5)
    for contrast=1:num_contrasts
        plot(microsaccade_tp/dt,squeeze(mean(microsaccade_lfp(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on;
    end
    title('Microsaccade Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([microsaccade_timeini/dt,microsaccade_timefin/dt,0,1]);
    axis 'auto y'
    grid on
    
    subplot(2,3,6)
    for contrast=1:num_contrasts
        plot(stimshift_tp/dt,squeeze(mean(stimshift_lfp(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on;
    end
    title('Stimulus Shift Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([stimshift_timeini/dt,stimshift_timefin/dt,0,1]);
    axis 'auto y'
    grid on
    
    SupLabel([monkey ' ' region ' LFP Feed Forward Timecourses - Absolute Value. Attention: ' num2str(attention)],'t');
end

for attention=1:num_attentions
    figure
    a=subplot(2,3,1);
    clims = [min(min(min(ff_stim_timecourse_spk))) max(max(max(ff_stim_timecourse_spk)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(spikes_tp/dt,1:size(ff_stim_timecourse_spk,2),squeeze(ff_stim_timecourse_spk(attention,:,:)),clims)
    title('Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,3,2);
    clims = [min(min(min(ff_ms_timecourse_spk))) max(max(max(ff_ms_timecourse_spk)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(microsaccade_tp/dt,1:size(ff_ms_timecourse_spk,2),squeeze(ff_ms_timecourse_spk(attention,:,:)),clims)
    title('Microsaccade Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,3,3);
    clims = [min(min(min(ff_ss_timecourse_spk))) max(max(max(ff_ss_timecourse_spk)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(stimshift_tp/dt,1:size(ff_ss_timecourse_spk,2),squeeze(ff_ss_timecourse_spk(attention,:,:)),clims)
    title('Stimulus Shift Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    subplot(2,3,4)
    for contrast=1:num_contrasts
        plot(spikes_tp/dt,squeeze(sum(spikes_smooth(attention,contrast,:,:))/size(spikes_smooth,3)),'Color',colorm(contrast,:)); hold on
    end
    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Firing rate (spikes/s)');
    axis([spikes_timeini/dt,spikes_timefin/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,3,5)
    for contrast=1:num_contrasts
        plot(microsaccade_tp/dt,squeeze(sum(microsaccade_spikes(attention,contrast,:,:)))/size(microsaccade_spikes,3),'Color',colorm(contrast,:));hold on;
    end
    title('Microsaccade Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([microsaccade_timeini/dt,microsaccade_timefin/dt,0,1]);
    axis 'auto y';
    grid on
    
    subplot(2,3,6)
    for contrast=1:num_contrasts
        plot(stimshift_tp/dt,squeeze(sum(stimshift_spikes(attention,contrast,:,:)))/size(stimshift_spikes,3),'Color',colorm(contrast,:));hold on;
    end
    title('Stimulus Shift Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([stimshift_timeini/dt,stimshift_timefin/dt,0,1]);
    axis 'auto y';
    grid on
    
    SupLabel([monkey ' ' region ' Spikes Feed Forward Timecourses - Absolute Value. Attention: ' num2str(attention)],'t');
end

for attention=1:num_attentions
    figure
    a=subplot(2,3,1);
    clims = [min(min(min(fb_stim_timecourse_lfp))) max(max(max(fb_stim_timecourse_lfp)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(fb_stim_timecourse_lfp,2),squeeze(fb_stim_timecourse_lfp(attention,:,:)),clims)
    title(['Stimulus Onset Att: ' num2str(attention)])
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,3,2);
    clims = [min(min(min(fb_ms_timecourse_lfp))) max(max(max(fb_ms_timecourse_lfp)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(microsaccade_tp/dt,1:size(fb_ms_timecourse_lfp,2),squeeze(fb_ms_timecourse_lfp(attention,:,:)),clims)
    title(['Microsaccade Onset Att: ' num2str(attention)])
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    
    a=subplot(2,3,3);
    clims = [min(min(min(fb_ss_timecourse_lfp))) max(max(max(fb_ss_timecourse_lfp)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(stimshift_tp/dt,1:size(fb_ss_timecourse_lfp,2),squeeze(fb_ss_timecourse_lfp(attention,:,:)),clims)
    title(['Stimulus Shift Onset Att: ' num2str(attention)])
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar('northoutside')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
        
    subplot(2,3,4)
    for contrast=1:num_contrasts
        plot(timelock_avg_tp/dt,squeeze(mean(timelock_avg_smooth(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on
    end
    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([timelock_avg_timeini/dt,timelock_avg_timefin/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,3,5)
    for contrast=1:num_contrasts
        plot(microsaccade_tp/dt,squeeze(mean(microsaccade_lfp(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on;
    end
    title('Microsaccade Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([microsaccade_timeini/dt,microsaccade_timefin/dt,0,1]);
    axis 'auto y'
    grid on
    
    subplot(2,3,6)
    for contrast=1:num_contrasts
        plot(stimshift_tp/dt,squeeze(mean(stimshift_lfp(attention,contrast,:,:))),'Color',colorm(contrast,:));hold on;
    end
    title('Stimulus Shift Onset');
    xlabel('Time (s)');
    ylabel('Average LFP (V)');
    axis([stimshift_timeini/dt,stimshift_timefin/dt,0,1]);
    axis 'auto y'
    grid on
    
    SupLabel([monkey ' ' region ' LFP Feedback Timecourses - Absolute Value. Attention: ' num2str(attention)],'t');
end

for attention=1:num_attentions
    figure
    a=subplot(2,3,1);
    clims = [min(min(min(fb_stim_timecourse_spk)))  max(max(max(fb_stim_timecourse_spk)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(spikes_tp/dt,1:size(fb_stim_timecourse_spk,2),squeeze(fb_stim_timecourse_spk(attention,:,:)),clims)
    title(['Stimulus Onset Att: ' num2str(attention)])
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar('northoutside')
    grid on
    
    a=subplot(2,3,2);
    clims = [min(min(min(fb_ms_timecourse_spk)))  max(max(max(fb_ms_timecourse_spk)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(microsaccade_tp/dt,1:size(fb_ms_timecourse_spk,2),squeeze(fb_ms_timecourse_spk(attention,:,:)),clims)
    title(['Microsaccade Onset Att: ' num2str(attention)])
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar('northoutside')
    grid on
    
    a=subplot(2,3,3);
    clims = [min(min(min(fb_ss_timecourse_spk)))  max(max(max(fb_ss_timecourse_spk)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(stimshift_tp/dt,1:size(fb_ss_timecourse_spk,2),squeeze(fb_ss_timecourse_spk(attention,:,:)),clims)
    title(['Stimulus Shift Onset Att: ' num2str(attention)])
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar('northoutside')
    grid on
    
    subplot(2,3,4)
    for contrast=1:num_contrasts
        plot(spikes_tp/dt,squeeze(sum(spikes_smooth(attention,contrast,:,:))/size(spikes_smooth,3)),'Color',colorm(contrast,:)); hold on
    end
    title('Stimulus Onset');
    xlabel('Time (s)');
    ylabel('Firing rate (spikes/s)');
    axis([spikes_timeini/dt,spikes_timefin/dt,0,1])
    axis 'auto y'
    grid on
    
    subplot(2,3,5)
    for contrast=1:num_contrasts
        plot(microsaccade_tp/dt,squeeze(sum(microsaccade_spikes(attention,contrast,:,:)))/size(microsaccade_spikes,3),'Color',colorm(contrast,:));hold on;
    end
    title('Microsaccade Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([microsaccade_timeini/dt,microsaccade_timefin/dt,0,1]);
    axis 'auto y';
    grid on
    
    subplot(2,3,6)
    for contrast=1:num_contrasts
        plot(stimshift_tp/dt,squeeze(sum(stimshift_spikes(attention,contrast,:,:)))/size(stimshift_spikes,3),'Color',colorm(contrast,:));hold on;
    end
    title('Stimulus Shift Onset');
    xlabel('Time (s)');
    ylabel('Spikes/sec');
    axis([stimshift_timeini/dt,stimshift_timefin/dt,0,1]);
    axis 'auto y';
    grid on
    
    SupLabel([monkey ' ' region ' Spikes Feedback Timecourses - Absolute Value. Attention: ' num2str(attention)],'t');
end

if num_attentions==2
    figure
    a=subplot(2,4,1);
    clims=[min(min(fb_stim_timecourse_lfp(1,:,:)-fb_stim_timecourse_lfp(2,:,:))) max(max(fb_stim_timecourse_lfp(1,:,:)-fb_stim_timecourse_lfp(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(fb_stim_timecourse_lfp,2),squeeze(fb_stim_timecourse_lfp(1,:,:)-fb_stim_timecourse_lfp(2,:,:)),clims)
    title('LFP Feedback Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar
    grid on
    
    
    a=subplot(2,4,2);
    clims=[min(min(ff_stim_timecourse_lfp(1,:,:)-ff_stim_timecourse_lfp(2,:,:))) max(max(ff_stim_timecourse_lfp(1,:,:)-ff_stim_timecourse_lfp(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(ff_stim_timecourse_lfp,2),squeeze(ff_stim_timecourse_lfp(2,:,:)-ff_stim_timecourse_lfp(1,:,:)),clims)
    title('LFP Feedforward Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar
    grid on
    

    a=subplot(2,4,3);
    clims=[min(min(fb_ms_timecourse_lfp(1,:,:)-fb_ms_timecourse_lfp(2,:,:))) max(max(fb_ms_timecourse_lfp(1,:,:)-fb_ms_timecourse_lfp(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(fb_ms_timecourse_lfp,2),squeeze(fb_ms_timecourse_lfp(1,:,:)-fb_ms_timecourse_lfp(2,:,:)),clims)
    title('LFP Feedback Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
   

    a=subplot(2,4,4);
    clims=[min(min(ff_ms_timecourse_lfp(1,:,:)-ff_ms_timecourse_lfp(2,:,:))) max(max(ff_ms_timecourse_lfp(1,:,:)-ff_ms_timecourse_lfp(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(ff_ms_timecourse_lfp,2),squeeze(ff_ms_timecourse_lfp(1,:,:)-ff_ms_timecourse_lfp(2,:,:)),clims)
    title('LFP Feedforward Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    

    a=subplot(2,4,5);
    clims=[min(min(fb_stim_timecourse_spk(1,:,:)-fb_stim_timecourse_spk(2,:,:))) max(max(fb_stim_timecourse_spk(1,:,:)-fb_stim_timecourse_spk(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(fb_stim_timecourse_spk,2),squeeze(fb_stim_timecourse_spk(1,:,:)-fb_stim_timecourse_spk(2,:,:)),clims)
    title('Spikes Feedback Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorbar
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    grid on
    

    a=subplot(2,4,6);
    clims=[min(min(ff_stim_timecourse_spk(1,:,:)-ff_stim_timecourse_spk(2,:,:))) max(max(ff_stim_timecourse_spk(1,:,:)-ff_stim_timecourse_spk(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(ff_stim_timecourse_spk,2),squeeze(ff_stim_timecourse_spk(2,:,:)-ff_stim_timecourse_spk(1,:,:)),clims)
    title('Spikes Feedforward Stimulus Onset')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar
    grid on
    

    a=subplot(2,4,7);
    clims=[min(min(fb_ms_timecourse_spk(1,:,:)-fb_ms_timecourse_spk(2,:,:))) max(max(fb_ms_timecourse_spk(1,:,:)-fb_ms_timecourse_spk(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(fb_ms_timecourse_spk,2),squeeze(fb_ms_timecourse_spk(1,:,:)-fb_ms_timecourse_spk(2,:,:)),clims)
    title('Spikes Feedback Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar
    grid on
    

    a=subplot(2,4,8);
    clims=[min(min(ff_ms_timecourse_spk(1,:,:)-ff_ms_timecourse_spk(2,:,:))) max(max(ff_ms_timecourse_spk(1,:,:)-ff_ms_timecourse_spk(2,:,:)))];
    if clims==[0 0]
        clims=[0 1];
    end
    imagesc(timelock_avg_tp/dt,1:size(ff_ms_timecourse_spk,2),squeeze(ff_ms_timecourse_spk(1,:,:)-ff_ms_timecourse_spk(2,:,:)),clims)
    title('Spikes Feedforward Microsaccade')
    xlabel('time (ms)')
    ylabel('deep electrode        -        shallow electrode')
    colorm_zero=CreateZeroColormap(clims);colormap(a,colorm_zero);
    colorbar
    grid on    
	SupLabel([monkey ' ' region ' difference between attentional conditions'],'t');
end
