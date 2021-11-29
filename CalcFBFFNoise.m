function [fb_noise_min,fb_noise_max,ff_noise_min,ff_noise_max] = CalcFBFFNoise(matriz,contrast_list,data_type,num_trials,avgc0,perc)
%This function will, through bootstrapping, calculate the confidence
%interval of fb and ff expected when dealing with noise.
%These noise values will then be used to not plot fb/ff values that could
%be obtained through noise alone
    num_samples=250;
    sig_level=5;
    num_sessions=size(matriz,1);
    num_contrasts=size(matriz,2);
    num_depths=size(matriz,3);
    num_tp=size(matriz,4);
    fb_noise_min=zeros(1,num_depths);
    fb_noise_max=zeros(1,num_depths);
    ff_noise_min=zeros(1,num_depths);
    ff_noise_max=zeros(1,num_depths);
    window_left=10;
    window_right=0;
    window_size=1+window_left+window_right;
    for depth=1:num_depths
        fb_bstrap=zeros(1,num_samples);
        ff_bstrap=zeros(1,num_samples);
        for i=1:num_samples
            tp_rand=randi([1+window_left num_tp-window_right],1);
            
            matriz_bstrap=zeros(num_contrasts,1+window_left+window_right);
            num_trials_tot=zeros(num_contrasts,1+window_left+window_right);
            for pick=1:num_sessions
                sess=randi([1 num_sessions],1);
                a=0;
                while nnz(num_trials(sess,:,depth))==0&&a<200
                    sess=randi([1 num_sessions],1);
                    a=a+1;
                end                    
                matriz_bstrap=matriz_bstrap+permute(matriz(sess,:,depth,tp_rand-window_left:tp_rand+window_right),[2,4,1,3]).*repmat(permute(num_trials(sess,:,depth),[2 1 3]),[1 window_size]);
                num_trials_tot=num_trials_tot+repmat(permute(num_trials(sess,:,depth),[2 1 3]),[1 window_size]);
            end
            matriz_bstrap=matriz_bstrap./num_trials_tot;
            matriz_bstrap(isnan(matriz_bstrap))=0;
        	[fb_offset,~,~,ff_slope,~,~,~,~,~]=CalcFBFF(matriz_bstrap,contrast_list,data_type,avgc0,perc);
            fb_bstrap(i)=fb_offset;
            ff_bstrap(i)=ff_slope;
        end

        fb_aux=sort(fb_bstrap);
        ff_aux=sort(ff_bstrap);
        fb_noise_min(depth)=fb_aux(ceil(sig_level/2/100*length(fb_aux)));
        fb_noise_max(depth)=fb_aux(ceil((100-sig_level/2)/100*length(fb_aux)));
        ff_noise_min(depth)=ff_aux(ceil(sig_level/2/100*length(ff_aux)));
        ff_noise_max(depth)=ff_aux(ceil((100-sig_level/2)/100*length(ff_aux)));
    end
end

