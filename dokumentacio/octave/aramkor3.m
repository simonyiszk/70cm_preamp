clear all

d9  = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/9.ASC');
d10 = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/10.ASC');
d11 = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/11.ASC');
d12 = importdata('/home/keresztes/Kafu/70cm_preamp/jegyzokonyv/octave/12.ASC');

f_szeles = d9(:,1)./1e6;
f_szuk = d10(:,1)./1e6;

S21_9  = d9(:,2);
S21_10 = d10(:,2);
S21_11 = d11(:,2);
S21_12 = d12(:,2);


figure
plot(f_szeles, S21_9, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 -35])
grid
title('#3-as áramkör átvitel (erősítő KI)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor3_9.png "-S1920,1080"


figure
plot(f_szuk, S21_10, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 -30])
grid
title('#3-as áramkör átvitel (erősítő KI)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor3_10.png "-S1920,1080"


figure
plot(f_szeles, S21_11, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-70 0])
grid
title('#3-as áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor3_11.png "-S1920,1080"


figure
plot(f_szuk, S21_12, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-65 0])
grid
title('#3-as áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor3_12.png "-S1920,1080"