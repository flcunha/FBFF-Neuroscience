%updates the electrodes channels for the session at hand
clear V1_electrodes V2_electrodes V4_electrodes V1_electrodes_sess V2_electrodes_sess V4_electrodes_sess
for contrast=1:num_contrasts
    for attention=1:num_attentions
%since spock has different contrast numbering than okkie, we treat them
%differently. (Spock has only odd contrast numbers)
        if odd==1
            contrast_file=contrast*2-1;
        else
            contrast_file=contrast;
        end
        filename=[filepath '\timelock_Con' num2str(contrast_file) '_att' num2str(attention) '.mat'];
        if exist(filename,'file')==2
            try
                clear timelock
                load(filename)
                if exist('V1_electrodes','var') && ~exist('V1_electrodes_sess','var')
                    V1_electrodes_sess=V1_electrodes;
                end
                if exist('V2_electrodes','var') && ~exist('V2_electrodes_sess','var')
                    V2_electrodes_sess=V2_electrodes;
                end
                if exist('V4_electrodes','var') && ~exist('V4_electrodes_sess','var')
                    V4_electrodes_sess=V4_electrodes;
                end
                if exist('V1_channels','var') && ~exist('V1_electrodes_sess','var')
                    V1_electrodes_sess=V1_channels;
                end
                if exist('V2_channels','var') && ~exist('V2_electrodes_sess','var')
                    V2_electrodes_sess=V2_channels;
                end
                if exist('V4_channels','var') && ~exist('V4_electrodes_sess','var')
                    V4_electrodes_sess=V4_channels;
                end
            catch ME
                %                            Displays the error on processing the file
                switch ME.identifier
                    case 'MATLAB:load:cantReadFile'
%doesnt do anything because this error will be treated later
                        
                    otherwise
                        disp('      ERROR! Unknown error')
                end
            end
        end
        if exist('V1_electrodes_sess','var') && exist('V2_electrodes_sess','var') && exist('V4_electrodes_sess','var')
            return
        end
    end
end

                