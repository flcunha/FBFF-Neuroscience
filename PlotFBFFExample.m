%plots the simulated fb/ff data
interval=50;
window_left=10;
window_right=0;
dt=tp(2)-tp(1);
colorm=hot(num_contrasts+7);

if ~mod(num_printed_examples,num_examples_ppage)
    figure
end

if num_examples_ppage==1
    subplot(2,3,1);
else
    subplot(num_examples_ppage,6,1+6*mod(num_printed_examples,num_examples_ppage))
end
for contrast=1:size(timecourses,1)
    plot(tp/dt,squeeze(timecourses(contrast,depth,:)),'Color',colorm(contrast,:));hold on
end
title(['Depth: ' num2str(depth) ', Time: ' num2str(floor(tp(timep)/dt)) 'ms.']);
xlabel('Time (ms)');
ylabel('Activity');
axis([tp(1)/dt,tp(end)/dt,0,1])
axis 'auto y'
yL = get(gca,'YLim');
line([tp(timep)/dt tp(timep)/dt],yL,'Color','b','LineStyle',':');hold on;



if num_examples_ppage==1
    subplot(2,3,2);
else
    subplot(num_examples_ppage,6,2+6*mod(num_printed_examples,num_examples_ppage))
end
tp_aux=max(1,timep-interval):min(length(tp),timep+interval);
for contrast=1:size(timecourses,1)
    plot(tp(tp_aux)/dt,squeeze(timecourses(contrast,depth,tp_aux)),'Color',colorm(contrast,:));hold on
end
title('Zoom Unadjusted:');
xlabel('Time (ms)');
ylabel('Activity');
axis([tp(timep-interval)/dt,tp(timep+interval)/dt,0,1])
axis 'auto y'
yL = get(gca,'YLim');
line([tp(timep)/dt tp(timep)/dt],yL,'Color','b','LineStyle',':');hold on;

if num_examples_ppage==1
    subplot(2,3,3);
else
    subplot(num_examples_ppage,6,3+6*mod(num_printed_examples,num_examples_ppage))
end
for contrast=1:size(timecourses,1)
    tp_aux=max(1,timep-interval+list_delays(contrast,depth,timep)):min(length(tp),timep+interval+list_delays(contrast,depth,timep));
    plot(tp(timep-interval:timep-interval+length(tp_aux)-1)/dt,squeeze(timecourses(contrast,depth,tp_aux)),'Color',colorm(contrast,:));hold on
end
title('Delay Adjusted:');
xlabel('Time (ms)');
ylabel('Activity');
axis([tp(timep-interval)/dt,tp(timep+interval)/dt,0,1])
axis 'auto y'
yL = get(gca,'YLim');
line([tp(timep)/dt tp(timep)/dt],yL,'Color','b','LineStyle',':');hold on;

if num_examples_ppage==1
    subplot(2,3,4);
else
    subplot(num_examples_ppage,6,4+6*mod(num_printed_examples,num_examples_ppage))
end
for contrast=1:size(timecourses,1)
    plot(tp(timep-window_left:timep+window_right)/dt,matriz(contrast,:),'Color',colorm(contrast,:));hold on
end
title('FBFF Interval:');
xlabel('Time (s)');
ylabel('Activity');
axis([tp(timep-window_left)/dt,tp(timep+window_right)/dt,0,1])
axis 'auto y'
yL = get(gca,'YLim');

if num_examples_ppage==1
    subplot(2,3,5);
else
    subplot(num_examples_ppage,6,5+6*mod(num_printed_examples,num_examples_ppage))
end
plot(contrast_list,fb_data,'b:','LineWidth',1.5);hold on;
plot(contrast_list,fb_data,'o','MarkerEdgeColor','k','MarkerFaceColor',[.55 1 .7],'MarkerSize',5);hold on;
plot([0:0.5:100],fb_fit_data);hold on;
title(['FB Calc: ' num2str(fb_offset)]);
xlabel('Contrast');

if num_examples_ppage==1
    subplot(2,3,6);
else
    subplot(num_examples_ppage,6,6+6*mod(num_printed_examples,num_examples_ppage))
end
plot(contrast_list,ff_data,'b:','LineWidth',1.5);hold on;
plot(contrast_list,ff_data,'o','MarkerEdgeColor','k','MarkerFaceColor',[.55 1 .7],'MarkerSize',5);hold on;
plot([0:0.5:100],ff_fit_data);hold on;
title(['FF Calc: ' num2str(ff_slope)]);
xlabel('Contrast');

num_printed_examples=num_printed_examples+1;
