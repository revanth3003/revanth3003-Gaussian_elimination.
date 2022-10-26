clear;
N = 2:5:1000;
timetaken=[];
for k=1:length(N)
A=randi([-1,4],k,k-10);
b=randi(k,1);
% test whether a given matrix is in an echelon form, Reduced Row Echelon Form or neither.
tic;                % start time 
[x]=axb(A,b);
time_elapsed = toc;
timetaken = [timetaken,time_elapsed ];
end
figure(1)
% Plot N vs Computation Time
plot(N,timetaken)
xlabel("Dimentions of matrix (m x n)")
ylabel("Computation Time") 
title("Dimentions of matrix vs Computation Time",FontSize=16)

