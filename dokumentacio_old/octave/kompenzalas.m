clear all

prefix = "/home/keresztes/Kafu"

d01 = importdata([prefix "/70cm_preamp/dokumentacio/octave/01.ASC"] );
d02 = importdata([prefix "/70cm_preamp/dokumentacio/octave/02.ASC"] );
d71 = importdata([prefix "/70cm_preamp/dokumentacio/octave/71.ASC"] );
d72 = importdata([prefix "/70cm_preamp/dokumentacio/octave/72.ASC"] );

f_szeles = d01(:,1)./1e6;
f_szuk = d02(:,1)./1e6;

S21_01  = d01(:,2);
S21_02  = d02(:,2);
S21_71  = d71(:,2);
S21_72  = d72(:,2);


figure
plot(f_szeles, S21_01, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#0-ás áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor0_01.png "-S1920,1080"


figure
plot(f_szuk, S21_02, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#0-ás áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor0_02.png "-S1920,1080"


figure
plot(f_szeles, S21_71, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#7-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor7_71.png "-S1920,1080"


figure
plot(f_szuk, S21_72, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#7-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor7_72.png "-S1920,1080"