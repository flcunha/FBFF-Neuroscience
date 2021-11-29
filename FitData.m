function residual = FitData(params,perc,delay,data)
            fb=params(1:length(params)/2);
            ff=params(length(params)/2+1:length(params));
            fit=zeros(size(data));
            for contrast=1:size(data,1)
                for timep=1:size(data,2)
                    if timep+delay(contrast,timep)>size(data,2)
                        fit(contrast,timep)=fb(timep)+perc(contrast)*ff(end);
                    else
                        fit(contrast,timep)=fb(timep)+perc(contrast)*ff(timep-delay(contrast,timep));
                    end
                end
            end
            residual = data(:)-fit(:);
            residual = residual(:);
end