%General parameters for the method
InitialParameters();

%Loads depth information
load(depth_filename);

%Identifies the region at hand
switch region
    case 'V1'
        num_region=1;
    case 'V2'
        ispiketrain=0;
        num_region=2;
    case 'V4'
        num_region=3;
    otherwise
        disp('Unknown Region')
        return
end

list_sessions=[ini_session:1:max_sessions];

%Identifies the subject at hand and related contrasts/session list/etc...
switch monkey
    case 'Okkie'
        contrast_list=contrasts_okkie;
        lam_data=okkie_data.lam;
        session_data=okkie_data.penarray;
        lam_data_ss=okkie_data.lamss;
        session_data_ss=okkie_data.penarrayss;
        odd=0;
    case 'Spock'
        contrast_list=contrasts_spock;
% remove the lowest contrast since there seems to be no stimulus activity 
        contrast_list=contrast_list(1:end-1);
        lam_data=spock_data.lam;
        session_data=spock_data.penarray;
        lam_data_ss=spock_data.lamss;
        session_data_ss=spock_data.penarrayss;
        odd=1;
    otherwise
        disp('Unknown monkey')
end

num_contrasts=length(contrast_list);

if icalcdepth
    max_depths=28;
    [session_data_aux,lam_data_aux,cost_data_aux]=DepthAnalysis(fileroot,monkey,region,num_contrasts,max_depths,session_data);
    for i=1:length(session_data)
        if length(find(session_data_aux==session_data(i)))==1
            lam_data(num_region,i)=lam_data_aux(find(session_data_aux==session_data(i)),end);
        else
            lam_data(num_region,i)=NaN;
        end
    end
end

max_sessions=min(max_sessions,length(session_data));
max_sessions_ss=length(session_data_ss);


num_depths=max(lam_data(num_region,:))-1+16;

if isnan(num_depths)
    num_depths=16;
end

electrodes=NaN(2,num_electrodes);
depths=1:1:num_depths;

%definition of statistical variables
num_totinvalidtrials=0;
num_totvalidtrials=0;
num_totinvalidtrials_ss=0;
num_totvalidtrials_ss=0;
num_badfiles=0;
num_okfiles=0;
files_stats=NaN(1,10);
file_loaded=0;
num_files=zeros(num_attentions,1);
colorm=hot(num_contrasts+7);
numsac=0;
numsac_tot=0;
num_trials_sess=zeros(max_sessions,num_attentions,num_contrasts,num_depths);
