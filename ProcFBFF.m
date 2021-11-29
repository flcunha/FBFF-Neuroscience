idelay=1;
iexample=0;
%Defines the norms to be used for each datatype, and type of analysis
%(FB/FF)

%Calculates the average impact of contrast on the data
[avgc0_lfp, perc_lfp]=CalcDataProg(timelock_avg_smooth,1,timelock_avg_tp);
[avgc0_spk, perc_spk]=CalcDataProg(spikes_smooth,2,spikes_tp);

for attention=1:num_attentions
    %Calculates the fb/ff analysis of the LFP stimulus onset ERP for each
    %attentional condition
    tic
    desc_onset='Stimulus';
    desc_data='LFP';
    num_trials=num_trials_sess(:,attention,:,:);
    s1=size(num_trials);
    num_trials=reshape(num_trials,[s1(1) s1(3:end)]);
    
    dados=timelock_sess_smooth(:,attention,:,:,:);
    s2=size(dados);
    dados=reshape(dados,[s2(1) s2(3:end)]);
    
    [delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,timelock_avg_tp,contrast_list,1,idelay,num_trials,iexample,avgc0_lfp,perc_lfp);
    delays_stim_lfp(attention,:,:,:)=delays;
    alld_delays_stim_lfp(attention,:,:)=squeeze(alld_delays);
    fb_stim_timecourse_lfp(attention,:,:)=fb_abs;
    ff_stim_timecourse_lfp(attention,:,:)=ff_abs;
    alld_fb_stim_timecourse_lfp(attention,:)=alld_fb_abs;
    alld_ff_stim_timecourse_lfp(attention,:)=alld_ff_abs;
    alld_fb_stim_timecourse_min_lfp(attention,:)=alld_fb_min;
    alld_fb_stim_timecourse_max_lfp(attention,:)=alld_fb_max;
    alld_ff_stim_timecourse_min_lfp(attention,:)=alld_ff_min;
    alld_ff_stim_timecourse_max_lfp(attention,:)=alld_ff_max;
	a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for attention ' num2str(attention) ' took ' num2str(a) ' seconds.']);

    
    %Calculates the fb/ff analysis of the Spikes stimulus onset ERP for each
    %attentional condition
    tic
    desc_onset='Stimulus';
    desc_data='Spikes';
    num_trials=num_trials_sess(:,attention,:,:);
    s1=size(num_trials);
    num_trials=reshape(num_trials,[s1(1) s1(3:end)]);
    
    dados=spikes_smooth_sess(:,attention,:,:,:);
    s2=size(dados);
    dados=reshape(dados,[s2(1) s2(3:end)]);
    
    [delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,spikes_tp,contrast_list,2,idelay,num_trials,iexample,avgc0_spk,perc_spk);
    delays_stim_spk(attention,:,:,:)=delays;
    alld_delays_stim_spk(attention,:,:)=squeeze(alld_delays);
    fb_stim_timecourse_spk(attention,:,:)=fb_abs;
    ff_stim_timecourse_spk(attention,:,:)=ff_abs;
    alld_fb_stim_timecourse_spk(attention,:)=alld_fb_abs;
    alld_ff_stim_timecourse_spk(attention,:)=alld_ff_abs;
    alld_fb_stim_timecourse_min_spk(attention,:)=alld_fb_min;
    alld_fb_stim_timecourse_max_spk(attention,:)=alld_fb_max;
    alld_ff_stim_timecourse_min_spk(attention,:)=alld_ff_min;
    alld_ff_stim_timecourse_max_spk(attention,:)=alld_ff_max;
	a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for attention ' num2str(attention) ' took ' num2str(a) ' seconds.']);
    
    
    
    
    %Calculates the fb/ff analysis of the LFP Microsaccade onset ERP for each
    %attentional condition
    tic
    desc_onset='Microsaccade';
    desc_data='LFP';
    num_trials=num_saccmatrix_sess(:,attention,:,:);
    s1=size(num_trials);
    num_trials=reshape(num_trials,[s1(1) s1(3:end)]);
    
    dados=microsaccade_lfp_sess(:,attention,:,:,:);
    s2=size(dados);
    dados=reshape(dados,[s2(1) s2(3:end)]);
    
    [delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,microsaccade_tp,contrast_list,1,idelay,num_trials,iexample,avgc0_lfp,perc_lfp);
    delays_ms_lfp(attention,:,:,:)=delays;
    alld_delays_ms_lfp(attention,:,:)=squeeze(alld_delays);
    fb_ms_timecourse_lfp(attention,:,:)=fb_abs;
    ff_ms_timecourse_lfp(attention,:,:)=ff_abs;
    alld_fb_ms_timecourse_lfp(attention,:)=alld_fb_abs;
    alld_ff_ms_timecourse_lfp(attention,:)=alld_ff_abs;
    alld_fb_ms_timecourse_min_lfp(attention,:)=alld_fb_min;
    alld_fb_ms_timecourse_max_lfp(attention,:)=alld_fb_max;
    alld_ff_ms_timecourse_min_lfp(attention,:)=alld_ff_min;
    alld_ff_ms_timecourse_max_lfp(attention,:)=alld_ff_max;
	a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for attention ' num2str(attention) ' took ' num2str(a) ' seconds.']);
    
    %Calculates the fb/ff analysis of the Spikes Microsaccade onset ERP for each
    %attentional condition
    tic
    desc_onset='Microsaccade';
    desc_data='Spikes';
    num_trials=num_saccmatrix_sess(:,attention,:,:);
    s1=size(num_trials);
    num_trials=reshape(num_trials,[s1(1) s1(3:end)]);
    
    dados=microsaccade_spikes_sess(:,attention,:,:,:);
    s2=size(dados);
    dados=reshape(dados,[s2(1) s2(3:end)]);
    
    [delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,microsaccade_tp,contrast_list,2,idelay,num_trials,iexample,avgc0_spk,perc_spk);
    delays_ms_spk(attention,:,:,:)=delays;
    alld_delays_ms_spk(attention,:,:)=squeeze(alld_delays);
    fb_ms_timecourse_spk(attention,:,:)=fb_abs;
    ff_ms_timecourse_spk(attention,:,:)=ff_abs;
    alld_fb_ms_timecourse_spk(attention,:)=alld_fb_abs;
    alld_ff_ms_timecourse_spk(attention,:)=alld_ff_abs;
    alld_fb_ms_timecourse_min_spk(attention,:)=alld_fb_min;
    alld_fb_ms_timecourse_max_spk(attention,:)=alld_fb_max;
    alld_ff_ms_timecourse_min_spk(attention,:)=alld_ff_min;
    alld_ff_ms_timecourse_max_spk(attention,:)=alld_ff_max;
	a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for attention ' num2str(attention) ' took ' num2str(a) ' seconds.']);

    
    %Calculates the fb/ff analysis of the LFP Stimulus Shift onset ERP for each
    %attentional condition
    tic
    desc_onset='Stim Shift';
    desc_data='LFP';
    num_trials=num_stimshift_sess(:,attention,:,:);
    s1=size(num_trials);
    num_trials=reshape(num_trials,[s1(1) s1(3:end)]);
    
    dados=stimshift_lfp_sess(:,attention,:,:,:);
    s2=size(dados);
    dados=reshape(dados,[s2(1) s2(3:end)]);
    
    [delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,stimshift_tp,contrast_list,1,idelay,num_trials,iexample,avgc0_lfp,perc_lfp);
    delays_ss_lfp(attention,:,:,:)=delays;
    alld_delays_ss_lfp(attention,:,:)=squeeze(alld_delays);
    fb_ss_timecourse_lfp(attention,:,:)=fb_abs;
    ff_ss_timecourse_lfp(attention,:,:)=ff_abs;
    alld_fb_ss_timecourse_lfp(attention,:)=alld_fb_abs;
    alld_ff_ss_timecourse_lfp(attention,:)=alld_ff_abs;
    alld_fb_ss_timecourse_min_lfp(attention,:)=alld_fb_min;
    alld_fb_ss_timecourse_max_lfp(attention,:)=alld_fb_max;
    alld_ff_ss_timecourse_min_lfp(attention,:)=alld_ff_min;
    alld_ff_ss_timecourse_max_lfp(attention,:)=alld_ff_max;
	a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for attention ' num2str(attention) ' took ' num2str(a) ' seconds.']);
    
    %Calculates the fb/ff analysis of the Spikes Stimulus Shift onset ERP for each
    %attentional condition
    tic
    desc_onset='Stim Shift';
    desc_data='Spikes';
    num_trials=num_stimshift_sess(:,attention,:,:);
    s1=size(num_trials);
    num_trials=reshape(num_trials,[s1(1) s1(3:end)]);
    
    dados=stimshift_spikes_sess(:,attention,:,:,:);
    s2=size(dados);
    dados=reshape(dados,[s2(1) s2(3:end)]);
    
    [delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,stimshift_tp,contrast_list,2,idelay,num_trials,iexample,avgc0_spk,perc_spk);
    delays_ss_spk(attention,:,:,:)=delays;
    alld_delays_ss_spk(attention,:,:)=squeeze(alld_delays);
    fb_ss_timecourse_spk(attention,:,:)=fb_abs;
    ff_ss_timecourse_spk(attention,:,:)=ff_abs;
    alld_fb_ss_timecourse_spk(attention,:)=alld_fb_abs;
    alld_ff_ss_timecourse_spk(attention,:)=alld_ff_abs;
    alld_fb_ss_timecourse_min_spk(attention,:)=alld_fb_min;
    alld_fb_ss_timecourse_max_spk(attention,:)=alld_fb_max;
    alld_ff_ss_timecourse_min_spk(attention,:)=alld_ff_min;
    alld_ff_ss_timecourse_max_spk(attention,:)=alld_ff_max;
	a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for attention ' num2str(attention) ' took ' num2str(a) ' seconds.']);
end

%Calculates the fb/ff analysis of the LFP Stimulus onset ERP for all
%attentional conditions
tic
desc_onset='Stimulus';
desc_data='LFP';
num_trials=sum(num_trials_sess(:,:,:,:),2);
s1=size(num_trials);
num_trials=reshape(num_trials,[s1(1) s1(3:end)]);

s=size(timelock_sess_smooth);
s=[s(1) s(3:end)];
dados=zeros(s);
for attention=1:num_attentions
    dados=dados+reshape(timelock_sess_smooth(:,attention,:,:,:).*repmat(num_trials_sess(:,attention,:,:),[1 1 1 1 s(end)]),s);
end
dados=dados./repmat(num_trials,[1 1 1 s(end)]);

[delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,timelock_avg_tp,contrast_list,1,idelay,num_trials,iexample,avgc0_lfp,perc_lfp);
allatt_delays_stim_lfp(attention,:,:,:)=delays;
allatt_alld_delays_stim_lfp(attention,:,:)=squeeze(alld_delays);
allatt_fb_stim_timecourse_lfp(:,:)=fb_abs;
allatt_ff_stim_timecourse_lfp(:,:)=ff_abs;
allatt_alld_fb_stim_timecourse_lfp=alld_fb_abs;
allatt_alld_ff_stim_timecourse_lfp=alld_ff_abs;
allatt_alld_fb_stim_timecourse_min_lfp=alld_fb_min;
allatt_alld_fb_stim_timecourse_max_lfp=alld_fb_max;
allatt_alld_ff_stim_timecourse_min_lfp=alld_ff_min;
allatt_alld_ff_stim_timecourse_max_lfp=alld_ff_max;
a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for all attentions took ' num2str(a) ' seconds.']);

%Calculates the fb/ff analysis of the Spikes Stimulus onset ERP for all
%attentional conditions
tic
desc_onset='Spikes';
desc_data='LFP';num_trials=sum(num_trials_sess(:,:,:,:),2);
s1=size(num_trials);
num_trials=reshape(num_trials,[s1(1) s1(3:end)]);

s=size(spikes_smooth_sess);
s=[s(1) s(3:end)];
dados=zeros(s);
for attention=1:num_attentions
    dados=dados+reshape(spikes_smooth_sess(:,attention,:,:,:).*repmat(num_trials_sess(:,attention,:,:),[1 1 1 1 s(end)]),s) ;
end
dados=dados./repmat(num_trials,[1 1 1 s(end)]);

[delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,spikes_tp,contrast_list,2,idelay,num_trials,iexample,avgc0_spk,perc_spk);
allatt_delays_stim_spk(attention,:,:,:)=delays;
allatt_alld_delays_stim_spk(attention,:,:)=squeeze(alld_delays);
allatt_fb_stim_timecourse_spk(:,:)=fb_abs;
allatt_ff_stim_timecourse_spk(:,:)=ff_abs;
allatt_alld_fb_stim_timecourse_spk=alld_fb_abs;
allatt_alld_ff_stim_timecourse_spk=alld_ff_abs;
allatt_alld_fb_stim_timecourse_min_spk=alld_fb_min;
allatt_alld_fb_stim_timecourse_max_spk=alld_fb_max;
allatt_alld_ff_stim_timecourse_min_spk=alld_ff_min;
allatt_alld_ff_stim_timecourse_max_spk=alld_ff_max;
a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for all attentions took ' num2str(a) ' seconds.']);

%Calculates the fb/ff analysis of the LFP Microsaccade onset ERP for all
%attentional conditions
tic
desc_onset='Microsaccade';
desc_data='LFP';
num_trials=sum(num_saccmatrix_sess(:,:,:,:),2);
s1=size(num_trials);
num_trials=reshape(num_trials,[s1(1) s1(3:end)]);

s=size(microsaccade_lfp_sess);
s=[s(1) s(3:end)];
dados=zeros(s);
for attention=1:num_attentions
    dados=dados+reshape(microsaccade_lfp_sess(:,attention,:,:,:).*repmat(num_saccmatrix_sess(:,attention,:,:),[1 1 1 1 s(end)]),s) ;
end
dados=dados./repmat(num_trials,[1 1 1 s(end)]);

[delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,microsaccade_tp,contrast_list,1,idelay,num_trials,iexample,avgc0_lfp,perc_lfp);
allatt_delays_ms_lfp(attention,:,:,:)=delays;
allatt_alld_delays_ms_lfp(attention,:,:)=squeeze(alld_delays);
allatt_fb_ms_timecourse_lfp(:,:)=fb_abs;
allatt_ff_ms_timecourse_lfp(:,:)=ff_abs;
allatt_alld_fb_ms_timecourse_lfp=alld_fb_abs;
allatt_alld_ff_ms_timecourse_lfp=alld_ff_abs;
allatt_alld_fb_ms_timecourse_min_lfp=alld_fb_min;
allatt_alld_fb_ms_timecourse_max_lfp=alld_fb_max;
allatt_alld_ff_ms_timecourse_min_lfp=alld_ff_min;
allatt_alld_ff_ms_timecourse_max_lfp=alld_ff_max;
a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for all attentions took ' num2str(a) ' seconds.']);


%Calculates the fb/ff analysis of the Spikes Microsaccade onset ERP for all
%attentional conditions
tic
desc_onset='Microsaccade';
desc_data='Spikes';
num_trials=sum(num_saccmatrix_sess(:,:,:,:),2);
s1=size(num_trials);
num_trials=reshape(num_trials,[s1(1) s1(3:end)]);

s=size(microsaccade_spikes_sess);
s=[s(1) s(3:end)];
dados=zeros(s);
for attention=1:num_attentions
    dados=dados+reshape(microsaccade_spikes_sess(:,attention,:,:,:).*repmat(num_saccmatrix_sess(:,attention,:,:),[1 1 1 1 s(end)]),s) ;
end
dados=dados./repmat(num_trials,[1 1 1 s(end)]);


[delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,microsaccade_tp,contrast_list,2,idelay,num_trials,iexample,avgc0_spk,perc_spk);
allatt_delays_ms_spk(attention,:,:,:)=delays;
allatt_alld_delays_ms_spk(attention,:,:)=squeeze(alld_delays);
allatt_fb_ms_timecourse_spk(:,:)=fb_abs;
allatt_ff_ms_timecourse_spk(:,:)=ff_abs;
allatt_alld_fb_ms_timecourse_spk=alld_fb_abs;
allatt_alld_ff_ms_timecourse_spk=alld_ff_abs;
allatt_alld_fb_ms_timecourse_min_spk=alld_fb_min;
allatt_alld_fb_ms_timecourse_max_spk=alld_fb_max;
allatt_alld_ff_ms_timecourse_min_spk=alld_ff_min;
allatt_alld_ff_ms_timecourse_max_spk=alld_ff_max;
a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for all attentions took ' num2str(a) ' seconds.']);

%Calculates the fb/ff analysis of the LFP Stimulus shift onset ERP for all
%attentional conditions
tic
desc_onset='Stim Shift';
desc_data='LFP';
num_trials=sum(num_stimshift_sess(:,:,:,:),2);
s1=size(num_trials);
num_trials=reshape(num_trials,[s1(1) s1(3:end)]);

s=size(stimshift_lfp_sess);
s=[s(1) s(3:end)];
dados=zeros(s);
for attention=1:num_attentions
    dados=dados+reshape(stimshift_lfp_sess(:,attention,:,:,:).*repmat(num_stimshift_sess(:,attention,:,:),[1 1 1 1 s(end)]),s) ;
end
dados=dados./repmat(num_trials,[1 1 1 s(end)]);

[delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,stimshift_tp,contrast_list,1,idelay,num_trials,iexample,avgc0_lfp,perc_lfp);
allatt_delays_ss_lfp(attention,:,:,:)=delays;
allatt_alld_delays_ss_lfp(attention,:,:)=squeeze(alld_delays);
allatt_fb_ss_timecourse_lfp(:,:)=fb_abs;
allatt_ff_ss_timecourse_lfp(:,:)=ff_abs;
allatt_alld_fb_ss_timecourse_lfp=alld_fb_abs;
allatt_alld_ff_ss_timecourse_lfp=alld_ff_abs;
allatt_alld_fb_ss_timecourse_min_lfp=alld_fb_min;
allatt_alld_fb_ss_timecourse_max_lfp=alld_fb_max;
allatt_alld_ff_ss_timecourse_min_lfp=alld_ff_min;
allatt_alld_ff_ss_timecourse_max_lfp=alld_ff_max;
a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for all attentions took ' num2str(a) ' seconds.']);


%Calculates the fb/ff analysis of the Spikes Stimulus shift onset ERP for all
%attentional conditions
tic
desc_onset='Stim Shift';
desc_data='Spikes';
num_trials=sum(num_stimshift_sess(:,:,:,:),2);
s1=size(num_trials);
num_trials=reshape(num_trials,[s1(1) s1(3:end)]);

s=size(stimshift_spikes_sess);
s=[s(1) s(3:end)];
dados=zeros(s);
for attention=1:num_attentions
    dados=dados+reshape(stimshift_spikes_sess(:,attention,:,:,:).*repmat(num_stimshift_sess(:,attention,:,:),[1 1 1 1 s(end)]),s) ;
end
dados=dados./repmat(num_trials,[1 1 1 s(end)]);


[delays,alld_delays,fb_abs,ff_abs,alld_fb_abs,alld_ff_abs,alld_fb_min,alld_fb_max,alld_ff_min,alld_ff_max]=ProcessFBFF(dados,stimshift_tp,contrast_list,2,idelay,num_trials,iexample,avgc0_spk,perc_spk);
allatt_delays_ss_spk(attention,:,:,:)=delays;
allatt_alld_delays_ss_spk(attention,:,:)=squeeze(alld_delays);
allatt_fb_ss_timecourse_spk(:,:)=fb_abs;
allatt_ff_ss_timecourse_spk(:,:)=ff_abs;
allatt_alld_fb_ss_timecourse_spk=alld_fb_abs;
allatt_alld_ff_ss_timecourse_spk=alld_ff_abs;
allatt_alld_fb_ss_timecourse_min_spk=alld_fb_min;
allatt_alld_fb_ss_timecourse_max_spk=alld_fb_max;
allatt_alld_ff_ss_timecourse_min_spk=alld_ff_min;
allatt_alld_ff_ss_timecourse_max_spk=alld_ff_max;
a=toc;disp(['FBFF of ' desc_data ' ' desc_onset ' onset for all attentions took ' num2str(a) ' seconds.']);

%Saves all information of FB/FF for this specific region/monkey, to be then
%used for the plotting of FB/FF for all regions/monkeys in PlotFBFFAll.m
tp=timelock_avg_tp;
timecourse=timelock_avg_smooth;
s=size(timecourse);
timecourse_allatt=mean(timecourse,1);
timecourse_allatt=reshape(timecourse_allatt,s(2:end));
save([region monkey '_LFP_STIM_FBFFData'],'timecourse','timecourse_allatt','fb_stim_timecourse_lfp','ff_stim_timecourse_lfp','alld_fb_stim_timecourse_lfp','alld_ff_stim_timecourse_lfp','alld_fb_stim_timecourse_min_lfp','alld_fb_stim_timecourse_max_lfp','alld_ff_stim_timecourse_min_lfp','alld_ff_stim_timecourse_max_lfp','tp','allatt_fb_stim_timecourse_lfp','allatt_ff_stim_timecourse_lfp','allatt_alld_fb_stim_timecourse_lfp','allatt_alld_ff_stim_timecourse_lfp','allatt_alld_fb_stim_timecourse_min_lfp','allatt_alld_fb_stim_timecourse_max_lfp','allatt_alld_ff_stim_timecourse_min_lfp','allatt_alld_ff_stim_timecourse_max_lfp','delays_stim_lfp','alld_delays_stim_lfp','allatt_delays_stim_lfp','allatt_alld_delays_stim_lfp');

tp=spikes_tp;
timecourse=spikes_smooth;
s=size(timecourse);
timecourse_allatt=mean(timecourse,1);
timecourse_allatt=reshape(timecourse_allatt,s(2:end));
save([region monkey '_SPK_STIM_FBFFData'],'timecourse','timecourse_allatt','fb_stim_timecourse_spk','ff_stim_timecourse_spk','alld_fb_stim_timecourse_spk','alld_ff_stim_timecourse_spk','alld_fb_stim_timecourse_min_spk','alld_fb_stim_timecourse_max_spk','alld_ff_stim_timecourse_min_spk','alld_ff_stim_timecourse_max_spk','tp','allatt_fb_stim_timecourse_spk','allatt_ff_stim_timecourse_spk','allatt_alld_fb_stim_timecourse_spk','allatt_alld_ff_stim_timecourse_spk','allatt_alld_fb_stim_timecourse_min_spk','allatt_alld_fb_stim_timecourse_max_spk','allatt_alld_ff_stim_timecourse_min_spk','allatt_alld_ff_stim_timecourse_max_spk','delays_stim_spk','alld_delays_stim_spk','allatt_delays_stim_spk','allatt_alld_delays_stim_spk');

tp=microsaccade_tp;
timecourse=microsaccade_lfp;
s=size(timecourse);
timecourse_allatt=mean(timecourse,1);
timecourse_allatt=reshape(timecourse_allatt,s(2:end));
save([region monkey '_LFP_MS_FBFFData'],'timecourse','timecourse_allatt','fb_ms_timecourse_lfp','ff_ms_timecourse_lfp','alld_fb_ms_timecourse_lfp','alld_ff_ms_timecourse_lfp','alld_fb_ms_timecourse_min_lfp','alld_fb_ms_timecourse_max_lfp','alld_ff_ms_timecourse_min_lfp','alld_ff_ms_timecourse_max_lfp','tp','allatt_fb_ms_timecourse_lfp','allatt_ff_ms_timecourse_lfp','allatt_alld_fb_ms_timecourse_lfp','allatt_alld_ff_ms_timecourse_lfp','allatt_alld_fb_ms_timecourse_min_lfp','allatt_alld_fb_ms_timecourse_max_lfp','allatt_alld_ff_ms_timecourse_min_lfp','allatt_alld_ff_ms_timecourse_max_lfp','delays_ms_lfp','alld_delays_ms_lfp','allatt_delays_ms_lfp','allatt_alld_delays_ms_lfp');

tp=microsaccade_tp;
timecourse=microsaccade_spikes;
s=size(timecourse);
timecourse_allatt=mean(timecourse,1);
timecourse_allatt=reshape(timecourse_allatt,s(2:end));
save([region monkey '_SPK_MS_FBFFData'],'timecourse','timecourse_allatt','fb_ms_timecourse_spk','ff_ms_timecourse_spk','alld_fb_ms_timecourse_spk','alld_ff_ms_timecourse_spk','alld_fb_ms_timecourse_min_spk','alld_fb_ms_timecourse_max_spk','alld_ff_ms_timecourse_min_spk','alld_ff_ms_timecourse_max_spk','tp','allatt_fb_ms_timecourse_spk','allatt_ff_ms_timecourse_spk','allatt_alld_fb_ms_timecourse_spk','allatt_alld_ff_ms_timecourse_spk','allatt_alld_fb_ms_timecourse_min_spk','allatt_alld_fb_ms_timecourse_max_spk','allatt_alld_ff_ms_timecourse_min_spk','allatt_alld_ff_ms_timecourse_max_spk','delays_ms_spk','alld_delays_ms_spk','allatt_delays_ms_spk','allatt_alld_delays_ms_spk');

tp=stimshift_tp;
timecourse=stimshift_lfp;
s=size(timecourse);
timecourse_allatt=mean(timecourse,1);
timecourse_allatt=reshape(timecourse_allatt,s(2:end));
save([region monkey '_LFP_SS_FBFFData'],'timecourse','timecourse_allatt','fb_ss_timecourse_lfp','ff_ss_timecourse_lfp','alld_fb_ss_timecourse_lfp','alld_ff_ss_timecourse_lfp','alld_fb_ss_timecourse_min_lfp','alld_fb_ss_timecourse_max_lfp','alld_ff_ss_timecourse_min_lfp','alld_ff_ss_timecourse_max_lfp','tp','allatt_fb_ss_timecourse_lfp','allatt_ff_ss_timecourse_lfp','allatt_alld_fb_ss_timecourse_lfp','allatt_alld_ff_ss_timecourse_lfp','allatt_alld_fb_ss_timecourse_min_lfp','allatt_alld_fb_ss_timecourse_max_lfp','allatt_alld_ff_ss_timecourse_min_lfp','allatt_alld_ff_ss_timecourse_max_lfp','delays_ss_lfp','alld_delays_ss_lfp','allatt_delays_ss_lfp','allatt_alld_delays_ss_lfp');

tp=stimshift_tp;
timecourse=stimshift_spikes;
s=size(timecourse);
timecourse_allatt=mean(timecourse,1);
timecourse_allatt=reshape(timecourse_allatt,s(2:end));
save([region monkey '_SPK_SS_FBFFData'],'timecourse','timecourse_allatt','fb_ss_timecourse_spk','ff_ss_timecourse_spk','alld_fb_ss_timecourse_spk','alld_ff_ss_timecourse_spk','alld_fb_ss_timecourse_min_spk','alld_fb_ss_timecourse_max_spk','alld_ff_ss_timecourse_min_spk','alld_ff_ss_timecourse_max_spk','tp','allatt_fb_ss_timecourse_spk','allatt_ff_ss_timecourse_spk','allatt_alld_fb_ss_timecourse_spk','allatt_alld_ff_ss_timecourse_spk','allatt_alld_fb_ss_timecourse_min_spk','allatt_alld_fb_ss_timecourse_max_spk','allatt_alld_ff_ss_timecourse_min_spk','allatt_alld_ff_ss_timecourse_max_spk','delays_ss_spk','alld_delays_ss_spk','allatt_delays_ss_spk','allatt_alld_delays_ss_spk');
