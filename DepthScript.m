fileroot=['C:\Users\filip\Desktop\Nova Pasta\Data'];
monkey='Okkie';
region='V1';
contrasts_okkie=[0.9999  0.6788  0.3998  0.2403  0.1382  0.0846  0.0487  0.0304]*100;
contrasts_spock=[0.7364 0.5452 0.3739 0.2669 0.1867  0.1271  0.0852 0.0730 0.0609 0.0487]*100;
depth_filename=[fileroot '\mk_depth_data.mat'];
load(depth_filename);
switch monkey
    case 'Okkie'
        contrast_list=contrasts_okkie;
        session_data=okkie_data.penarray;
    case 'Spock'
        contrast_list=contrasts_spock;
        session_data=spock_data.penarray;
end
num_contrasts=length(contrast_list);
max_depths=30;


[session_data_aux,lam_data_aux,cost_data_aux]=DepthAnalysis(fileroot,monkey,region,num_contrasts,max_depths,session_data);
