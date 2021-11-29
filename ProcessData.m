num_sessions=0;

if istimshift==1 || ifbff==1
    %For each possible session number...
    for session=ini_session:max_sessions_ss
        filepath=[fileroot '\' monkey '\pen' sprintf('%03d',session_data_ss(session))];
        %... checks if the directory of this sessions exists...
        disp(['stimshift sessions analyzed: ' num2str(session) ' - session nr: ' num2str(session_data_ss(session))]);
        if exist(filepath,'dir')==7 && not(isnan(lam_data_ss(num_region,session)))
            CalcSessElectrodes();
            iexist_electrode=0;
            switch region
                case 'V1'
                    if exist('V1_electrodes_sess','var')&&~isempty(V1_electrodes_sess)
                        iexist_electrode=1;
                    end
                case 'V2'
                    if exist('V2_electrodes_sess','var')&&~isempty(V2_electrodes_sess)
                        iexist_electrode=1;
                    end
                case 'V4'
                    if exist('V4_electrodes_sess','var')&&~isempty(V4_electrodes_sess)
                        iexist_electrode=1;
                    end
            end
            if iexist_electrode     
                for contrast=1:num_contrasts
                    for attention=1:num_attentions
                        if odd==1
                            contrast_file=contrast*2-1;
                        else
                            contrast_file=contrast;
                        end
                        filename=[filepath '\timelock_Con' num2str(contrast_file) '_att' num2str(attention) '.mat'];
                        %... checks if the file exists...
                        if exist(filename,'file')==2
                            try
                                %load the file
                                LoadFile();
                                %                            disp(['file - ' num2str(size(timelock.label))]);
                                %validate and process each trial
                                for trial=1:size(timelock.trial,1)
                                    ValidateTrial();
                                    if validtrial==1
                                        ProcessStimShift();
                                    else
                                        num_totinvalidtrials_ss=num_totinvalidtrials_ss+1;
                                    end
                                end
                            catch ME
                                %                            Displays the error on processing the file
                                disp(ME);
                            end
                        end
                    end
                end
            else
                disp('      ERROR! This session wasnt treated because the electrode channels for the desired region werent found');                
            end
        else            
            if ~exist(filepath,'dir')==7
                disp(['      ERROR! Session ' num2str(session_data_ss(session)) ' wasnt treated because there isnt a folder for it']);
            else
                disp(['      ERROR! Session ' num2str(session_data_ss(session)) ' wasnt treated because there isnt depth information for the desired region']);
            end
        end
    end
end

%Analyzes each file, validating each trial and including its information in
%the respective arrays
if icontrast==1 || ispiketrain==1 || imicrosaccade==1 || ifbff==1
    %For each possible session number...
    for session=ini_session:max_sessions
        filepath=[fileroot '\' monkey '\pen' sprintf('%03d',session_data(session))];
        %... checks if the directory of this sessions exists...
        disp(['normal sessions analyzed: ' num2str(session) ' - session nr: ' num2str(session_data(session))]);
        if exist(filepath,'dir')==7 && not(isnan(lam_data(num_region,session))) && ismember(session,list_sessions)
            CalcSessElectrodes();
            file_session=0;
            iexist_electrode=0;
            switch region
                case 'V1'
                    if exist('V1_electrodes_sess','var')&&~isempty(V1_electrodes_sess)
                        iexist_electrode=1;
                    end
                case 'V2'
                    if exist('V2_electrodes_sess','var')&&~isempty(V2_electrodes_sess)
                        iexist_electrode=1;
                    end
                case 'V4'
                    if exist('V4_electrodes_sess','var')&&~isempty(V4_electrodes_sess)
                        iexist_electrode=1;
                    end
            end
            if iexist_electrode     
                for contrast=1:num_contrasts
                    for attention=1:num_attentions
                        if odd==1
                            contrast_file=contrast*2-1;
                        else
                            contrast_file=contrast;
                        end
                        filename=[filepath '\timelock_Con' num2str(contrast_file) '_att' num2str(attention) '.mat'];
                        %... checks if the file exists...
                        if exist(filename,'file')==2
                            try
                                %load the file
                                LoadFile();
                                %                            disp(['file - ' num2str(size(timelock.label))]);
                                file_session=file_session+1;
                                %validate and process each trial
                                for trial=1:size(timelock.trial,1)
                                    ValidateTrial();
                                    if validtrial==1
                                        num_totvalidtrials=num_totvalidtrials+1;
                                    else
                                        num_totinvalidtrials=num_totinvalidtrials+1;
                                    end
                                    if validtrial==1
                                        if icontrast==1 || ifbff==1
                                            ProcessContrast();
                                        end
                                        if ispiketrain==1 || ifbff==1
                                            ProcessSpikeTrain();
                                        end
                                        if imicrosaccade==1 || ifbff==1
                                            ProcessMicrosaccade();
                                        end
                                        num_trials_sess(num_sessions+1,attention,contrast,lam+1:lam+num_electrodes)=num_trials_sess(num_sessions+1,attention,contrast,lam+1:lam+num_electrodes)+1;
                                        num_trials_file=num_trials_file+1;
                                    end
                                end
                                
                                %Calculate general statistics for this file
                                num_okfiles=num_okfiles+1;
                                mean_lfp=nanmean(nanmean(nanmean(timelock.trial(:,electrodes(1,:),timelock_avg_tpini:timelock_avg_tpfin))));
                                mean_spikes=nanmean(nanmean(nansum(timelock.trial(:,electrodes(2,:),fano_tpini:fano_tpfin),3),2));
                                files_stats(num_okfiles,1)=session_data(session);
                                files_stats(num_okfiles,2)=attention;
                                files_stats(num_okfiles,3)=contrast;
                                files_stats(num_okfiles,4)=mean_lfp;
                                files_stats(num_okfiles,5)=mean_spikes;
                                num_files(attention)=num_files(attention)+1;
                            catch ME
                                %                            Displays the error on processing the file
                                switch ME.identifier
                                    case 'MATLAB:load:cantReadFile'
                                        disp(['      ERROR! This file cant be read: ' filename]);
                                    otherwise
                                        disp(['      ERROR! Unknown error: ' ME.identifier])
                                end
                                num_badfiles=num_badfiles+1;
                            end
                        end
                    end
                end
            else
                disp('      ERROR! This session wasnt treated because the electrode channels for the desired region werent found');
            end                
            num_sessions=num_sessions+1;
        else            
            if ~exist(filepath,'dir')==7
                disp(['      ERROR! Session ' num2str(session_data(session)) ' wasnt treated because there isnt a folder for it']);
            else
                if isnan(lam_data(num_region,session))
                    disp(['      ERROR! Session ' num2str(session_data(session)) ' wasnt treated because there isnt depth information for the desired region']);
                else
                    disp(['      ERROR! Session ' num2str(session_data(session)) ' wasnt treated because it seems to have been manually excluded']);
                end
            end
        end
    end
end

%This process will make sure the contrast/spiketrain/microsaccade arrays 
%are smoothed and start around 0
ProcessVariables();

%Saves the information of the filled arrays, to be used if wanted (through
%irunfiles) on the next iteration. This allows to save time reading the
%same files in the same way over and over again.
if strcmp(monkey,'Okkie')
    if strcmp(region,'V1')
        save('OkkieV1');
    else
        save('OkkieV4');
    end
else
    if strcmp(region,'V1')
        save('SpockV1');
    else
        save('SpockV4');
    end
end

