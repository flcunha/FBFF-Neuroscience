%Plots average of spikes per trial in each session
%Shows the average number of spikes in each electrode and trial for each session
%calculates the average of spikes summed through all the sessions
if isempty(find(isnan(files_stats(:,5))>0,1)) && mini_session==0
    figure
    bar(nonzeros(accumarray(files_stats(:,1), files_stats(:,5), [], @nanmean)))
    set(gca,'XTick',[1:length(unique(files_stats(:,1)))]);
    set(gca,'XTickLabel',unique(files_stats(:,1)));
    title(['Avg. Spikes p/trial'])
    xlabel('Session Number')
    ylabel('Avg. Spikes p/trial')
end