
function [saccend,eye_vol,eye_pos,amplend,sacphase ,saccend2] = MicrosaccDetection(data,VFAC,MINDUR,tp)
    

    saccend=NaN(40,1) ;
    saccend2=NaN(40,1);
    amplend=NaN(40,4) ;
    sacphase=NaN(40,1);
    x(:,1)=SmoothSaccade(data(1,:),9,1,1);
    x(:,2)=SmoothSaccade(data(2,:),9,1,1);
    d1=x(:,1);
    d2=x(:,2);
    
	vel(:,1)=CalcConvolution(d1,transpose([1 1 1 1 0 -1 -1 -1 -1]/(20*(tp(2)-tp(1)))));
	vel(:,2)=CalcConvolution(d2,transpose([1 1 1 1 0 -1 -1 -1 -1]/(20*(tp(2)-tp(1)))));

    vel(:,1)=SmoothSaccade(vel(:,1),3,1,1);
    vel(:,2)=SmoothSaccade(vel(:,2),3,1,1);


    msdx = sqrt( nanmedian(vel(:,1).^2) - (nanmedian(vel(:,1)))^2 );
    msdy = sqrt( nanmedian(vel(:,2).^2) - (nanmedian(vel(:,2)))^2 );
    radiusx = VFAC*msdx;
    radiusy = VFAC*msdy;


    eye_vol=SmoothSaccade((vel(:,1)/radiusx).^2 + (vel(:,2)/radiusy).^2,10,1,1);
    eye_pos= x(12:end-11,:);
    sac = MicrosaccDetection2(x,vel,VFAC,MINDUR);
    if length(sac)>20
        sac=sac(1:20,:);
    end

    if ~isempty(sac)
        saccend(1:length(sac(:,1)) )=tp(sac(:,1)) ;
        saccend2(1:length(sac(:,1)) )=tp(sac(:,2)) ;
        amplend(1:length(sac(:,3)),1 )=sac(:,3) ;
        amplend(1:length(sac(:,3)),2 )=sac(:,4) ;
        amplend(1:length(sac(:,3)),3 )=sac(:,6) ;
        amplend(1:length(sac(:,3)),4 )=sac(:,7) ;
        sacphase(1:length(sac(:,3)),1 )=sac(:,5) ;
    end
end

