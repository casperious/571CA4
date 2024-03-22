function x = inverse_filtering(y1,psf)
    Y1=fft2(y1);%<aply fft2 to image y1>;
    [M,N]=size(y1);
% for kernel, you can specify the size of FT by
% using FFT2(X,MROWS,NCOLS)
    H=fft2(psf,M,N);%<apply fft2 with size M-by-N to the blurring kernel psf>;
    % inver filtering in the frequency domain
    Z1=Y1./H;
    z1=abs(ifft2(Z1));
    x = z1;
 end

