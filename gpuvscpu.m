elements=10000;
%tic
%a=rand(elements);
%b=a*a;
%toc;

tic
a=rand(elements,'gpuArray');
b=a*a;

toc

