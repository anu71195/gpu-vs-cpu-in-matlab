A=magic(5000);
f=ones(1,20)/20;
tic;
B=filter(f,1,A);
tCPU=toc;
disp(['Total time on CPU:   ' num2str(tCPU)])



tic;
AonGPU=gpuArray(A);
BonGPU=filter(f,1,AonGPU);
BonCPU=gather(BonGPU);
wait(gpuDevice);
tGPU=toc;
disp(['Total time on GPU: ' num2str(tGPU)])


tic;
BonGPU=filter(f,1,AonGPU);
wait(gpuDevice)
tCompGpu=toc;
disp(['Computation time on GPU: ' num2str(tCompGpu)])



