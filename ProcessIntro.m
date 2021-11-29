%Verifies if each type of analysis is to be made, and created the necessary
%intiialized arrays
if icontrast==1 || ifbff==1
    InitialContrast();
end

if ispiketrain==1 || ifbff==1
    InitialSpikeTrain();
end

if imicrosaccade==1 || ifbff==1
    InitialMicrosaccade();
end

if istimshift==1 || ifbff==1
    InitialStimShift();
end

if ifbff==1
    InitialFBFF();
end
