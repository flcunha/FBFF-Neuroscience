function [corr] = CalcCorr(x,y)
    n=length(x);
    if sum(abs(x))==0 || sum(abs(y))==0
        corr=-1;
    else
        corr=(dot(x,y)-n*mean(x)*mean(y))/(sqrt(sum(x.^2)-n*mean(x)^2)*sqrt(sum(y.^2)-n*mean(y)^2));
    end
end

