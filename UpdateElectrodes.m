%Having loaded a new file, updates the electrodes channels
switch region
    case 'V1'
        if exist('V1_electrodes','var')
            electrodes_hold=V1_electrodes;
        elseif exist('V1_channels','var')
            electrodes_hold=V1_channels;
        else
            electrodes_hold=V1_electrodes_sess;
        end
    case 'V2'
        if exist('V2_electrodes','var')
            electrodes_hold=V2_electrodes;
        elseif exist('V2_channels','var')
            electrodes_hold=V2_channels;
        else
            electrodes_hold=V2_electrodes_sess;
        end
    case 'V4'
        if exist('V4_electrodes','var')
            electrodes_hold=V4_electrodes;
        elseif exist('V4_channels','var')
            electrodes_hold=V4_channels;
        else
            electrodes_hold=V4_electrodes_sess;
        end
    otherwise
        disp('Unknown Region')
        return
end

%For each electrode, finds the exact index of the label of this specific
%file that relates to the electrode (this can change between files)
for i=1:num_electrodes
    electrodes(1,i)=strmatch(['AD' sprintf('%02d',electrodes_hold(i))],timelock.label);
    if isempty(strmatch(['sig' num2str(electrodes_hold(i)) 'MUA'],timelock.label)) && electrodes_hold(i)==23
        timelock.var(size(timelock.var,1)+1,:)=zeros(1,size(timelock.var,2));
        timelock.avg(size(timelock.avg,1)+1,:)=zeros(1,size(timelock.avg,2));
        timelock.dof(size(timelock.dof,1)+1,:)=zeros(1,size(timelock.dof,2));
        timelock.label{length(timelock.label)+1}='sigzeroMUA';
        for j=1:size(timelock.trial,1)
        	timelock.trial(j,length(timelock.label),:)=zeros(1,1,size(timelock.trial,3));
        	j=j+1;
        end
        electrodes(2,i)=length(timelock.label);
    else
        electrodes(2,i)=strmatch(['sig' num2str(electrodes_hold(i)) 'MUA'],timelock.label);
    end
    i=i+1;
end

%Updates eye channels for this file
eyechannels(1)=strmatch(eye_channels_hold{1},timelock.label);
eyechannels(2)=strmatch(eye_channels_hold{2},timelock.label);

%Updates depth information for this file
if session<=max_sessions
    lam=lam_data(num_region,session)-1;
else
    clear lam;
end
if session<=max_sessions_ss
    lamss=lam_data_ss(num_region,session)-1;
else
    clear lamss;
end
