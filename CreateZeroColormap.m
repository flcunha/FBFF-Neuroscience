function [ colormap_zero ] = CreateZeroColormap( clims )
%this function creates a colormap based on the intervals for the plot at
%hand, so the coloring goes from bright red to bright green throughout that
%interval (clims)
    j=clims(1):diff(clims)/64:clims(2);
    total=max(abs(clims));

    colormap_zero=zeros(64,3);
    for i=1:64
        if j(i)>0
            colormap_zero(i,:)=[1 (1-j(i)/total) (1-j(i)/total)];
        else
            colormap_zero(i,:)=[(1+j(i)/total) (1+j(i)/total) 1];
        end
        
    end
end

