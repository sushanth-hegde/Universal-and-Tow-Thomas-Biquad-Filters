%% Init
clear all;
close all;
clc;
addpath ("C:\Users\Sushanth\OneDrive\Desktop\AMCD Lab\LTSpice\Universal_Biquad")
%%
fidi = fopen('Universal_Biquad.txt');
Dc = textscan(fidi, '%f(%fdB,%f°) (%fdB,%f°) (%fdB,%f°) (%fdB,%f°)','CollectOutput',1);
D = cell2mat(Dc);
figure(1)
subplot(2,1,1)
semilogx(D(:,1), D(:,2),'r','linewidth', 2)
hold on;
semilogx(D(:,1), D(:,4),'b','linewidth', 2)
hold on;
semilogx(D(:,1), D(:,6),'g','linewidth', 2)
hold on;
semilogx(D(:,1), D(:,8),'k','linewidth', 2)
ylabel('Magnitude in dB')
legend('bandpass','notch ','highpass','lowpass','location','southwest');
grid
xlabel('Frequency in KHz')
subplot(2,1,2)
semilogx(D(:,1), D(:,3),'r','linewidth', 2)
hold on;
semilogx(D(:,1), D(:,5),'b','linewidth', 2)
hold on;
semilogx(D(:,1), D(:,6),'g','linewidth', 2)
hold on;
semilogx(D(:,1), D(:,7),'k','linewidth', 2)
ylabel('Phase in (°)')
legend('bandpass','notch ','highpass','lowpass','location','southwest');
grid
xlabel('Frequency in KHz')
fclose(fidi);