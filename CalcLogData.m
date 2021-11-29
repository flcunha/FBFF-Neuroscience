function fit_data = CalcLogData(data,params)
    base=10;
    slope=params(1);
    offset=params(2);
	delay=params(3);
    fit_data = slope*log(data-delay)/log(base)+offset;
end