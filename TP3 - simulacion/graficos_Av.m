clear all;

%% Cargo las variables

sim1 = dlmread('Av_sin_punta.txt',',',1,0); 

sim2 = dlmread('Av_x1_x1.txt',',',1,0);

sim3 = dlmread('Av_x01_x10.txt',',',1,0);

sim4 = dlmread('Av_x10_x10PA.txt',',',1,0);


sim1(:,2)= sqrt(sim1(:,2).^2+sim1(:,3).^2);
sim2(:,2)= sqrt(sim2(:,2).^2+sim2(:,3).^2);
sim3(:,2)= sqrt(sim3(:,2).^2+sim3(:,3).^2);
sim4(:,2)= sqrt(sim4(:,2).^2+sim4(:,3).^2);


%% Grafico

% Grafico 1

figure(1);
Ha=gca();
set(Ha,'Box','on','FontName','Arial','FontSize',10,'LineWidth',1,'TickDir','in');
grid on;
semilogx(Ha,sim1(:,1),sim1(:,2),'-r','linewidth',1,'markersize',1,'markerfacecolor','r');
%title('')
xlabel('F [Hz]');
ylabel('A_{vs}');
grid minor;
axis([100 300E6 2 14]);
Hleg = legend(Ha,'Ganancia de tensi�n A_{vs} [A_{vs}=10.7 a frecuencias medias]');	
legend('boxon');
set(Hleg,'FontName','Arial','FontSize',9);
print ('Av_sin_punta.png','-dpng');




% Grafico 2

figure(2);
Ha=gca();
set(Ha,'Box','on','FontName','Arial','FontSize',10,'LineWidth',1,'TickDir','in');
grid on;
semilogx(Ha,sim2(:,1),sim2(:,2),'-r','linewidth',1,'markersize',1,'markerfacecolor','r');
%title('')
xlabel('F [Hz]');
ylabel('A_{vs}');
grid minor;
axis([100 300E6 2 14]);
Hleg = legend(Ha,'Ganancia de tensi�n A_{vs} [A_{vs}=10.7 a frecuencias medias]');	
legend('boxon');
set(Hleg,'FontName','Arial','FontSize',9);
print ('Av_x1_x1.png','-dpng');




% Grafico 3

figure(3);
Ha=gca();
set(Ha,'Box','on','FontName','Arial','FontSize',10,'LineWidth',1,'TickDir','in');
grid on;
semilogx(Ha,sim3(:,1),sim3(:,2),'-r','linewidth',1,'markersize',1,'markerfacecolor','r');
%title('')
xlabel('F [Hz]');
ylabel('A_{vs}');
grid minor;
axis([100 300E6 2 14]);
Hleg = legend(Ha,'Ganancia de tensi�n A_{vs} [A_{vs}=10.7 a frecuencias medias]');	
legend('boxon');
set(Hleg,'FontName','Arial','FontSize',9);
print ('Av_x01_x10.png','-dpng');




% Grafico 4

figure(4);
Ha=gca();
set(Ha,'Box','on','FontName','Arial','FontSize',10,'LineWidth',1,'TickDir','in');
grid on;
semilogx(Ha,sim4(:,1),sim4(:,2),'-r','linewidth',1,'markersize',1,'markerfacecolor','r');
%title('')
xlabel('F [Hz]');
ylabel('A_{vs}');
grid minor;
axis([100 300E6 2 14]);
Hleg = legend(Ha,'Ganancia de tensi�n A_{vs} [A_{vs}=10.7 a frecuencias medias]');	
legend('boxon');
set(Hleg,'FontName','Arial','FontSize',9);
print ('Av_x01_x10PA.png','-dpng');













