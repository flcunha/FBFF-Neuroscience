function [mean_corr] = CalcMeanCorr(fileroot,monkey,region,num_contrasts,num_electrodes,lam_data,session_data,new_session_data)

num_sessions=0;
time=0.05:0.001:0.15;
num_timep=length(time);
num_contrasts=floor(num_contrasts/2);
timecourses=zeros(1,num_contrasts,num_electrodes,num_timep);
session_list=[];
for session=1:length(new_session_data)
	filepath=[fileroot '\' monkey '\pen' sprintf('%03d',new_session_data(session))];
	if exist(filepath,'dir')==7
        isession=0;
        for contrast=1:num_contrasts
            if monkey=='Spock'
                contrast_file=contrast*2-1;
            else
                contrast_file=contrast;
            end
            filename=[filepath '\timelock_Con' num2str(contrast_file) '_att1.mat'];
            if exist(filename,'file')
                clear V1_channels V2_channels V4_channels V1_electrodes V2_electrodes V4_electrodes electrodes
                try
                load(filename);
                switch region
                    case 'V1'
                        if exist('V1_channels','var')
                            electrodes=V1_channels;
                        elseif exist('V1_electrodes','var')
                            electrodes=V1_electrodes;
                        end
                    case 'V2'
                        if exist('V2_channels','var')
                            electrodes=V2_channels;
                        elseif exist('V2_electrodes','var')
                            electrodes=V2_electrodes;
                        end
                    case 'V4'
                        if exist('V4_channels','var')
                            electrodes=V4_channels;
                        elseif exist('V4_electrodes','var')
                            electrodes=V4_electrodes;
                        end
                end
                catch ME
                    clear V1_channels V2_channels V4_channels V1_electrodes V2_electrodes V4_electrodes electrodes                    
                end
                a=find(new_session_data(session)==session_data,1,'first');
                if exist('electrodes','var')&&~isempty(electrodes)&&not(isempty(a))&&not(isnan(lam_data(a)))
                    if isession==0&&contrast==1
                        num_sessions=num_sessions+1;
                        session_list(num_sessions)=new_session_data(session);
                        isession=1;
                    end                    
                    if isession==1
                        timecourses(num_sessions,contrast,:,:)=timelock.avg(electrodes,find(abs(timelock.time-time(1))<10^-7):find(abs(timelock.time-time(end))<10^-7));
                    end
                end
            end
        end
    end
end

num_cost=0;cost=0;
for sess1=1:length(session_list)
    for sess2=sess1+1:length(session_list)
        real_sess1=find(session_data==session_list(sess1));
        real_sess2=find(session_data==session_list(sess2));
        depth_pos=lam_data(real_sess2)-lam_data(real_sess1);
        cost_aux=0;
        num_cost_aux=0;
        if depth_pos<0
            for dd=1:num_electrodes-abs(depth_pos)
                for contrast=1:num_contrasts
                    num_cost_aux=num_cost_aux+1;                    
                    cost_aux=cost_aux+CalcCorr(squeeze(timecourses(sess1,contrast,dd,:)),squeeze(timecourses(sess2,contrast,dd+abs(depth_pos),:)));
                end
            end
        else
            for dd=1:num_electrodes-abs(depth_pos)
                for contrast=1:num_contrasts
                    num_cost_aux=num_cost_aux+1;                    
                    cost_aux=cost_aux+CalcCorr(squeeze(timecourses(sess1,contrast,dd+abs(depth_pos),:)),squeeze(timecourses(sess2,contrast,dd,:)));
                end
            end
        end        
        cost=cost+cost_aux/num_cost_aux;
        num_cost=num_cost+1;
    end
end
mean_corr=cost/num_cost;




