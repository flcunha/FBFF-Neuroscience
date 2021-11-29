function [session_list,lam_data,cost_data] = DepthAnalysis(fileroot,monkey,region,num_contrasts,max_depths,session_data)
%fileroot='C:\Users\filip\Desktop\Nova Pasta\Data';
%monkey='Okkie';
%region='V1';
num_sessions=0;
num_depths=16;
time=0.05:0.001:0.15;
num_timep=length(time);
num_contrasts=floor(num_contrasts/2);
timecourses=zeros(1,num_contrasts,num_depths,num_timep);
session_list=[];
for session=1:length(session_data)
	filepath=[fileroot '\' monkey '\pen' sprintf('%03d',session_data(session))];
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
                if exist('electrodes','var')&&~isempty(electrodes)
                    if isession==0&&contrast==1
                        num_sessions=num_sessions+1;
                        session_list(num_sessions)=session_data(session);
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

num_deltas=max_depths-num_depths;
zero_delta=num_deltas+1;
corr_depth=zeros(num_sessions,num_sessions,2*num_deltas+1);
for sess1=1:num_sessions
    for sess2=1:num_sessions
        for depth_pos=-num_deltas:num_deltas
            correlation=zeros(16-abs(depth_pos),num_contrasts);
            if depth_pos<0
                for dd=1:16-abs(depth_pos)
                    for contrast=1:num_contrasts
                        correlation(dd,num_contrasts)=CalcCorr(squeeze(timecourses(sess1,contrast,dd,:)),squeeze(timecourses(sess2,contrast,dd+abs(depth_pos),:)));
                    end
                end
            else
                for dd=1:16-abs(depth_pos)
                    for contrast=1:num_contrasts
                        correlation(dd,num_contrasts)=CalcCorr(squeeze(timecourses(sess1,contrast,dd+abs(depth_pos),:)),squeeze(timecourses(sess2,contrast,dd,:)));
                    end
                end                
            end            
            corr_depth(sess1,sess2,depth_pos+num_deltas+1)=mean(mean(correlation));            
        end
    end
end

cost_data=zeros(1,max_depths-num_depths+1);
lam_data=zeros(num_sessions,max_depths-num_depths+1);
for max_delta=1:max_depths-num_depths+1
    initParams=ones(1,num_sessions)*floor(max_delta/2);
    minParams=ones(1,num_sessions);
    maxParams=ones(1,num_sessions)*(max_delta);
    maxiter = inf;
    optimParams = optimset('MaxIter',maxiter,'Display','off');
    
    [params resnorm residual exitflag output lambda jacobian] = lsqnonlin(@CostDepth,initParams,minParams,maxParams,optimParams,corr_depth);
    params=round(params);
    while min(params)>1
        params=params-1;
    end
    lam_data(:,max_delta)=params;
    cost_data(max_delta)=resnorm;
end
