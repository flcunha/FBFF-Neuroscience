function timecourse_conv = CalcConvolution(timecourse,kernel)
%this function calculates the convolution of timecourses with the specified
%kernel
    timecourse_conv=conv(timecourse,kernel,'same');
    for i=1:floor(size(kernel)/2)
       timecourse_conv(i)=timecourse_conv(i)*(sum(kernel))/(sum(kernel(floor(size(kernel)/2)-i+2:end)));
       timecourse_conv(end-i+1)=timecourse_conv(end-i+1)*(sum(kernel))/(sum(kernel(floor(size(kernel)/2)-i+2:end)));
    end
end

