%The project is only able to analyze subjects that are defined beforehand
%(currently monkeys Okkie and Spock).
%In order to allow the method to analyze a new subject, the following
%changes need to be made:
    %1 - Include the contrast list for the subject in InitialParameters.m
    %2 - Include a new case in the 'switch monkey' part of
    %InitialVariables.m, probably similar to the one in 'Okkie' but with
    %odd=0 (unless like Okkie only odd contrasts exist)
    %3 - In ProcessData.m, include a new case on "if strcmp(monkey,'Okkie')"
    %to load information for that subject, in order to not run through all
    %data files again
    %4 - In MainScript.m, include a new case on "if strcmp(monkey,'Okkie')"
    %to save information for that subject for possible future runs
    

%Defines where the project is located.
fileroot=['C:\Users\filip\Desktop\UM Cognitive Neuroscience\Internship\Project\Data'];
%Note: This folder must include a subfolder for each subject, named exactly
%as the subject, which in turn must include a subfolder for each session, 
%with name "pen***" for session *** (eg. pen001 for session 001), 
%which finally should include a .mat file for each attentional
%condition and contrast in the form "timelock_Con?_att*.mat" for data of
%contrast ? and attention condition *.

%Defines where the depth data is located.
depth_filename=[fileroot '\mk_depth_data.mat'];

tic;

%Defines a default region if it wasn't defined beforehand
if exist('region','var')==0
    close all
    clearvars -except fileroot depth_filename;
    region='V1';
end

%Defines a default subject if it wasn't defined beforehand
if exist('monkey','var')==0
    monkey='Okkie';
end

disp(['Analyzing ' monkey ' ' region '...']);

%Indicator defining if it will run through all the data files again (=1) or
%if it uses the outcome of the last run and simply plot the desired
%information(=0)
irunfiles=0;

%Indicator defining if the depths should be calculated automatically or use
%the ones present in the files
icalcdepth=1;

%Indicator defining if the FBFF information should be reanalyzed
iprocfbff=1;

%Indicators defining if the method will run for contrast(LFP
%ERP)/Spiketrain ERP/Microsaccade/FB_FF/etc...
icontrast=0;
ispiketrain=0;
isessions=0;
imicrosaccade=0;
istimshift=0;
ifbff=1;
ifbffall=0;

%Runs through all the files to create the new arrays or loads the previous
%arrays
if irunfiles

    %Define initial variables necessary for processing
    InitialVariables();
    %Define other initial variables specific for each part
    %(contrast/spikes/etc..)
    ProcessIntro();

    
    intro_time=toc;disp(['The initial (before files) processing took ' num2str(intro_time) ' seconds.']);    
    tic;
    %Fills the arrays initialized with data from the data files
    ProcessData();
else
    %Saves the indicators of which type of analysis will be made, since
    %they will be changed when loading the previous arrays/variables
    icontrast_aux=icontrast;
    ispiketrain_aux=ispiketrain;
    isessions_aux=isessions;
    imicrosaccade_aux=imicrosaccade;
    istimshift_aux=istimshift;
    ifbff_aux=ifbff;
    ifbffall_aux=ifbffall;

    %Loads the correspondent arrays/variables calculated in earliest runs
    %of the method
	if strcmp(monkey,'Okkie')
        if strcmp(region,'V1')
            filename='OkkieV1.mat';
            load(filename)
        else
            filename='OkkieV4.mat';
            load(filename)
        end
    else
        if strcmp(region,'V1')
            filename='SpockV1.mat';
            load(filename)
        else
            filename='SpockV4.mat';
            load(filename)
        end
    end
    %Corrects the indicators of the types of analysis to run
    icontrast=icontrast_aux;
    ispiketrain=ispiketrain_aux;
    isessions=isessions_aux;
    imicrosaccade=imicrosaccade_aux;
    istimshift=istimshift_aux;
    ifbff=ifbff_aux;
    ifbffall=ifbffall_aux;
end

file_time=toc;disp(['The file processing took ' num2str(file_time) ' seconds.']);
tic;
%Create the plots
ProcessPlots();
plot_time=toc;disp(['The plot processing took ' num2str(plot_time) ' seconds.']);

if imicrosaccade==1
	save([region monkey '_MicroSac_Latency'],'microsaccade_lfp_lat');
end

%Show statistics from the sessions/files analyzed
tic;
GeneralStatistics();    
stats_time=toc;disp(['The statistical processing took ' num2str(stats_time) ' seconds.']);

%clear region
%ClearVariables();

