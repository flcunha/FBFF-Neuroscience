%1st dimension - Contrast
%2nd dimension - Time
data_array=zeros(2,7);
dt=0.1;
tp=0:dt:(size(data_array,2)-1)*dt;
idelay=1;
iexample=0;

[avgc0, perc]=CalcDataProg(data_array,1,tp);
