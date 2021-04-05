clear all

d5  = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/5.ASC');
d6  = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/6.ASC');
d7  = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/7.ASC');
d8  = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/8.ASC');
d14 = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/14.ASC');

f_szeles = d5(:,1)./1e6;
f_szuk = d6(:,1)./1e6;

S21_5  = d5(:,2);
S21_6  = d6(:,2);
S21_7  = d7(:,2);
S21_8  = d8(:,2);
S21_14 = d14(:,2);


figure
plot(f_szeles, S21_5, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 -25])
grid
title('#2-es áramkör átvitel (erősítő KI)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_5.png "-S1920,1080"


figure
plot(f_szuk, S21_6, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 -20])
grid
title('#2-es áramkör átvitel (erősítő KI)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_6.png "-S1920,1080"


figure
plot(f_szeles, S21_7, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 0])
grid
title('#2-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_7.png "-S1920,1080"


figure
plot(f_szuk, S21_8, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 5])
grid
title('#2-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_8.png "-S1920,1080"


figure
plot(f_szuk, S21_14, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 20])
grid
hold on
plot(f_szuk(112), S21_14(112), '.', 'markersize', 30, 'color', 'r')
plot([f_szuk(112), f_szuk(112)], [-50, S21_14(112)], 'linewidth', 2, 'color', 'r')
plot(f_szuk(230), S21_14(230), '.', 'markersize', 30, 'color', 'r')
plot([f_szuk(230), f_szuk(230)], [-50, S21_14(230)], 'linewidth', 2, 'color', 'r')
text(450, 15, sprintf('-3 dB-es határ: %.2f - %.2f MHz', f_szuk(114), f_szuk(230)), 'fontsize', 30)
title('#2.5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_14.png "-S1920,1080"