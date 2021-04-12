clear all

path = '/home/keresztes/Kafu';

d1 = importdata([ path '/70cm_preamp/dokumentacio/octave/1.ASC' ]);
d2 = importdata([ path '/70cm_preamp/dokumentacio/octave/2.ASC' ]);
d3 = importdata([ path '/70cm_preamp/dokumentacio/octave/3.ASC' ]);
d4 = importdata([ path '/70cm_preamp/dokumentacio/octave/4.ASC' ]);

f_szeles = d1(:,1)./1e6;
f_szuk = d2(:,1)./1e6;

S21_1 = d1(:,2);
S21_2 = d2(:,2);
S21_3 = d3(:,2);
S21_4 = d4(:,2);

figure
plot(f_szeles, S21_1, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 -10])
grid
title('#1-es áramkör átvitel (erősítő KI)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor1_1.png "-S1920,1080"


figure
plot(f_szuk, S21_2, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 -10])
grid
title('#1-es áramkör átvitel (erősítő KI)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor1_2.png "-S1920,1080"


figure
plot(f_szeles, S21_3, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-60 20])
grid
title('#1-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor1_3.png "-S1920,1080"


figure
plot(f_szuk, S21_4, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 20])
grid
hold on
plot(f_szuk(114), S21_4(114), '.', 'markersize', 30, 'color', 'r')
plot([f_szuk(114), f_szuk(114)], [-50, S21_4(114)], 'linewidth', 2, 'color', 'r')
plot(f_szuk(233), S21_4(233), '.', 'markersize', 30, 'color', 'r')
plot([f_szuk(233), f_szuk(233)], [-50, S21_4(233)], 'linewidth', 2, 'color', 'r')
text(450, 15, sprintf('-3 dB-es határ: %.2f - %.2f MHz', f_szuk(114), f_szuk(233)), 'fontsize', 30)
title('#1-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor1_4.png "-S1920,1080"