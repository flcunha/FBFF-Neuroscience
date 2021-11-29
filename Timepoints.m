%Given a specified initial and final time, obtains the respective position
%in the time array that pertains to those instants. That is, given 0.1 and
%0.3 seconds, returns position 400 and 600 of the timelock.time array for
%example
if file_loaded==1
	[~,timepoint_ini]=min(abs(timelock.time-t_ini));
	[~,timepoint_fin]=min(abs(timelock.time-t_fin));
%calculate the number of timepoints of the interval at hand
	num_timepoints=timepoint_fin-timepoint_ini+1;
else
    num_timepoints=round((t_fin-t_ini)/dt+1);
end
