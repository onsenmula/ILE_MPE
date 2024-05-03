set(0,'defaultAxesFontSize',20);
set(0,'defaultAxesFontName','courier');
set(0,'defaultTextFontSize',20);
set(0,'defaultTextFontName','courier');
set(0,'defaultTextInterpreter','latex');
set(0,'DefaultLineLineWidth',1.5);
set(gcf,'color','white');

%delta
figure(1)
plot(Pe1.time,Pe1.signals.values(:,1),'b')
xlabel('time')
%ylabel('$V_{B1}$')
axis([0 25 0 100])
%ylabel('$\delta_{1}-\delta_4$')
ylabel('$\delta_1$')
%axis([0 10 0 4000])
% 
%
figure(2)

plot(MPE1.time,MPE1.signals.values(:,1),'k',MPE2.time,MPE2.signals.values(:,1),'r--',...
    MPE3.time,MPE3.signals.values(:,1),'g:',MPE4.time,MPE4.signals.values(:,1),'b')
xlabel('time')
ylabel('MPEs')
%axis([0 25 -100 100])
axis([0 25 -2 2])
legend('MPE1','MPE2','MPE3','MPE4')

figure(3)
plot(MPE1.time,MPE1.signals.values(:,2),'k',MPE2.time,MPE2.signals.values(:,2),'r--',...
    MPE3.time,MPE3.signals.values(:,2),'g:',MPE4.time,MPE4.signals.values(:,2),'b')
xlabel('time')
ylabel('Signs of MPEs')
axis([0 25 -2 3])
%axis([0 10 -2 3])
legend('sign(MPE1)','sign(MPE2)','sign(MPE3)','sign(MPE4)')

figure(4)
plot(ILE.time,ILE.signals.values(:,2),'k',MPE4.time,MPE4.signals.values(:,2),'r--')
xlabel('time')
ylabel('Signs of ILE and MPE4')
axis([0 25 -2 2])
%axis([0 10 -2 2])
legend('sign(ILE)','sign(MPE4)')

figure(5)
plot(ILE.time,ILE.signals.values(:,2),'k',MPE1.time,MPE1.signals.values(:,2),'r--')
xlabel('time')
ylabel('Signs of ILE and MPE1')
axis([0 25 -2 2])
%axis([0 10 -2 2])
legend('sign(ILE)','sign(MPE1)')
