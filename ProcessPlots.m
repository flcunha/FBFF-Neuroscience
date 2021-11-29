%Verifies if each type of analysis is to be made, and plots the ones that
%should
if icontrast==1
    PlotContrast();
end

if ispiketrain==1
    PlotSpikeTrain();
end

if imicrosaccade==1
    PlotMicrosaccade();
end

if istimshift==1
    PlotStimShift();
end

%Since analysis of FB and FF can only be performed after having the
%Contrast/Spiketrain/Microsaccade fully analyzed (arrays completely
%filled), we will process it before plotting
if ifbff==1&&iprocfbff==1
    ProcFBFF();
else
    filename=[region monkey '_LFP_STIM_FBFFData.mat'];
    load(filename)
    filename=[region monkey '_SPK_STIM_FBFFData.mat'];
    load(filename)
    filename=[region monkey '_LFP_MS_FBFFData.mat'];
    load(filename)
    filename=[region monkey '_SPK_MS_FBFFData.mat'];
    load(filename)
    filename=[region monkey '_LFP_SS_FBFFData.mat'];
    load(filename)
    filename=[region monkey '_SPK_SS_FBFFData.mat'];
    load(filename)
end

if ifbff==1
    PlotFBFF();
end

%While PlotFBFF.m plots only information on the current region/monkey
%under analysis, PlotFBFFAll.m displays information based on all
%regions/monkeys known, where the ones not currently being treated are
%loaded from previously saved files
if ifbffall==1
    PlotFBFFAll();
end

if isessions==1
    PlotSessions();
end
