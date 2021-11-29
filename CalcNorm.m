function [sol] = CalcNorm(matriz,norm_type)
%calculates norm values based on data and norm type
    switch norm_type
        case 'L2'
            sol=sqrt(sum(abs(matriz).^2,2))/(size(matriz,2));
        case 'L1'
            sol=sum(abs(matriz),2)/(size(matriz,2));
        case 'L?'
            sol=sum(matriz,2)/(size(matriz,2));
        case 'diff2'
            sol=zeros(size(matriz,1)-1,1);
            for i=1:size(matriz,1)
                sol(i)=sum(matriz(i,:)-matriz(end,:))^2/(size(matriz,2));
            end
        case 'diff1'
            sol=zeros(size(matriz,1)-1,1);
            for i=1:size(matriz,1)
                sol(i)=sum(matriz(i,:)-matriz(end,:))/(size(matriz,2));
            end
        otherwise
            sol=zeros(size(matriz,1)-1,1);
    end    
end
