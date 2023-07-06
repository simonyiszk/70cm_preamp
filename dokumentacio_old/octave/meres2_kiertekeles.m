clear all

path = '/home/keresztes/Kafu';

d21 = importdata([ path '/70cm_preamp/dokumentacio/octave/21.ASC' ]);
d22 = importdata([ path '/70cm_preamp/dokumentacio/octave/22.ASC' ]);
d31 = importdata([ path '/70cm_preamp/dokumentacio/octave/31.ASC' ]);
d32 = importdata([ path '/70cm_preamp/dokumentacio/octave/32.ASC' ]);
d41 = importdata([ path '/70cm_preamp/dokumentacio/octave/41.ASC' ]);
d42 = importdata([ path '/70cm_preamp/dokumentacio/octave/42.ASC' ]);
d51 = importdata([ path '/70cm_preamp/dokumentacio/octave/51.ASC' ]);
d52 = importdata([ path '/70cm_preamp/dokumentacio/octave/52.ASC' ]);
d61 = importdata([ path '/70cm_preamp/dokumentacio/octave/61.ASC' ]);
d62 = importdata([ path '/70cm_preamp/dokumentacio/octave/62.ASC' ]);
d81 = importdata([ path '/70cm_preamp/dokumentacio/octave/81.ASC' ]);
d82 = importdata([ path '/70cm_preamp/dokumentacio/octave/82.ASC' ]);

f_szeles = d21(:,1)./1e6;
f_szuk = d22(:,1)./1e6;

S21_21 = d21(:,2);
S21_22 = d22(:,2);
S21_31 = d31(:,2);
S21_32 = d32(:,2);
S21_41 = d41(:,2);
S21_42 = d42(:,2);
S21_51 = d51(:,2);
S21_52 = d52(:,2);
S21_61 = d61(:,2);
S21_62 = d62(:,2);
S21_81 = d81(:,2);
S21_82 = d82(:,2);


figure
plot(f_szeles, S21_21, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#2.5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_21.png "-S1920,1080"

figure
plot(f_szuk, S21_22, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#2.5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor2_22.png "-S1920,1080"


figure
plot(f_szeles, S21_31, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#3.5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor3_31.png "-S1920,1080"

figure
plot(f_szuk, S21_32, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#3.5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor3_32.png "-S1920,1080"


figure
plot(f_szeles, S21_41, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#4-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor4_41.png "-S1920,1080"

figure
plot(f_szuk, S21_42, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#4-es áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor4_42.png "-S1920,1080"


figure
plot(f_szeles, S21_51, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor5_51.png "-S1920,1080"

figure
plot(f_szuk, S21_52, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#5-ös áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor5_52.png "-S1920,1080"


figure
plot(f_szeles, S21_61, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#6-os áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor6_61.png "-S1920,1080"

figure
plot(f_szuk, S21_62, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#6-os áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor6_62.png "-S1920,1080"


figure
plot(f_szeles, S21_81, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#8-as áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor8_81.png "-S1920,1080"

figure
plot(f_szuk, S21_82, 'linewidth', 3)
set(gca, 'fontsize', 35)
ylim([-50 25])
grid
title('#8-as áramkör átvitel (erősítő BE)')
xlabel('Frekvencia [MHz]')
ylabel('S_{21} [dB]')
print -dpng aramkor8_82.png "-S1920,1080"