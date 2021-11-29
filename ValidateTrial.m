validtrial=1;
%Guarantees that, the value of each relevant electrode and each relevant
%timepoint is real and not NaN.
if ~isempty(find(isnan(timelock.trial(trial,electrodes(:,:),min_tpini:max_tpfin))))
    validtrial=0;
end