%Plot general statistics  of files and sessions
fprintf('# of sessions analyzed: %d\n',num_sessions);
fprintf('# of files analyzed: %d\n',num_okfiles);
fprintf('# of files unable to be read: %d\n',num_badfiles);
fprintf('# of trials analyzed: %d\n',num_totvalidtrials);
fprintf('# of trials discarded: %d\n',num_totinvalidtrials);
fprintf('# of shift trials analyzed: %d\n',num_totvalidtrials_ss);
fprintf('# of shift trials discarded: %d\n',num_totinvalidtrials_ss);
fprintf('# of trials average for each contrast/attention pair: %5.1f\n',num_totvalidtrials/(num_attentions*num_contrasts));
fprintf('# of microsaccades detected: %d\n',numsac_tot);
fprintf('# of microsaccades analyzed: %d\n',numsac);
fprintf('\n')
%Plots information from each session
[sess_list,~,sess_count]=unique(files_stats(:,1));
contrast_sess=accumarray(sess_count,files_stats(:,3),[],@(x) {x});
for i=1:length(contrast_sess)
    list=zeros(num_contrasts,1);
    for j=1:num_contrasts
        if ~isempty(find(contrast_sess{i}==j,1,'last'))
            list(j)=j;
        else
            list(j)=NaN;
        end
    end
    contrast_sess{i}=list;
end
sess_contrasts=transpose(cell2mat(transpose(contrast_sess)));
sess_stats=[sess_list,accumarray(sess_count,files_stats(:,4),[],@mean),accumarray(sess_count,files_stats(:,4),[],@min),accumarray(sess_count,files_stats(:,4),[],@max),accumarray(sess_count,files_stats(:,4),[],@var),accumarray(sess_count,files_stats(:,5),[],@mean),accumarray(sess_count,files_stats(:,5),[],@min),accumarray(sess_count,files_stats(:,5),[],@max),accumarray(sess_count,files_stats(:,5),[],@var)];
sess_header = {'Sess.','Avg LFP','Min LFP','Max LFP','Var LFP','Avg Spk','Min Spk','Max Spk','Var Spk'};
disp([sess_header;num2cell(sess_stats)]);
sess_contrasts=[sess_list,sess_contrasts];
disp(num2cell(sess_contrasts));

