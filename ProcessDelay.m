function [list_delays] = ProcessDelay(timecourses,tp,data_type)
%This function creates the delays list for the timepoint being analyzed.
%This includes first calculating individually (CalcDelay), then adjusting
%for possible individual mistakes (AdjustDelay), then smoothing the values
%obtained
    num_contrasts=size(timecourses,1);
    num_depths=size(timecourses,2);
    num_tp=size(timecourses,3);
    list_delays=zeros(num_contrasts,num_depths,num_tp);
    window_left=25;
    window_right=25;
    dt=tp(2)-tp(1);
    tp0=find(tp<=0,1,'last');
    for i=1:size(timecourses,1)
        for j=1:size(timecourses,2)
            baseline_mean=mean(timecourses(i,j,1:find(tp<=0,1,'last')),3);
            timecourses(i,j,:)=timecourses(i,j,:)-baseline_mean;
            timecourses(i,j,:)=SmoothLFPFast(squeeze(timecourses(i,j,:)));
        end
    end

    for depth=1:num_depths
        for timep=tp0+window_left:num_tp-window_right
            delay_aux=0;
            for contrast=2:num_contrasts
                delay_delta=min(round((timep-tp0)*dt/0.015),20);
                if timep+delay_aux+window_right+delay_delta>num_tp
                    list_delays(contrast,depth,timep)=min(num_tp-timep,list_delays(contrast,depth,timep-1));
                else                       
                    timecoursei_1=squeeze(timecourses(contrast-1,depth,timep+delay_aux-window_left:timep+delay_aux+window_right));
                    timecoursei=squeeze(timecourses(contrast,depth,timep-window_left+delay_aux:timep+window_right+delay_aux+delay_delta));
                    delay_aux=CalcDelay(timecoursei_1,timecoursei,delay_aux);                        
                    list_delays(contrast,depth,timep)=delay_aux;
                end                                
            end
        end
    end

    %faz sentido ficar o smoothing?
%     for depth=1:num_depths
%         for contrast=2:num_contrasts
%             list_delays(contrast,depth,:)=SmoothLFPFast(squeeze(list_delays(contrast,depth,:)));
%         end
%     end



%     a=1;
%     figure
%         for contrast=1:num_contrasts
%             subplot(2,4,contrast)
%             plot(squeeze(timecourses(contrast,1,:)));
%         end
%     figure
%         for contrast=1:num_contrasts
% %            list_delays(contrast,1,:)=smooth(squeeze(list_delays(contrast,1,:)),30,'moving');
%             subplot(2,4,contrast)
%             plot(squeeze(list_delays(contrast,1,:)));
%         end
%         SupLabel([monkey ' ' region ' LFP Stimulus Onset Delay. Att: ' num2str(attention)],'t');

    for contrast=1:num_contrasts
        if num_depths==1
            list_delays(contrast,1,:)=SmoothLFPFast(squeeze(list_delays(contrast,1,:)));
        else
            list_delays(contrast,:,:)=Smooth2D(reshape(squeeze(list_delays(contrast,:,:)),[size(list_delays,2) size(list_delays,3)]),tp);
        end
        list_delays(contrast,:,:)=floor(list_delays(contrast,:,:));
    end
end

