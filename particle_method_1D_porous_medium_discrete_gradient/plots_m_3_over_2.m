clear all
close all
clc


data_60 = load('Data_m_3_over_2/particle_2d_n60_dx0.26667_epsilon0.04673_dt0.01_tmax3_m_1.5.mat');
data_70 = load('Data_m_3_over_2/particle_2d_n70_dx0.22857_epsilon0.034438_dt0.01_tmax3_m_1.5.mat');
data_80 = load('Data_m_3_over_2/particle_2d_n80_dx0.2_epsilon0.026437_dt0.01_tmax3_m_1.5.mat');
data_90 = load('Data_m_3_over_2/particle_2d_n90_dx0.17778_epsilon0.020938_dt0.01_tmax3_m_1.5.mat');
data_100 = load('Data_m_3_over_2/particle_2d_n100_dx0.16_epsilon0.016996_dt0.01_tmax3_m_1.5.mat');

n_60 = data_60.n;
n_70 = data_70.n;
n_80 = data_80.n;
n_90 = data_90.n;
n_100 = data_100.n;

Nt_60 = data_60.Nt;
Nt_70 = data_70.Nt;
Nt_80 = data_80.Nt;
Nt_90 = data_90.Nt;
Nt_100 = data_100.Nt;

error_list_60 = data_60.error_list;
error_list_70 = data_70.error_list;
error_list_80 = data_80.error_list;
error_list_90 = data_90.error_list;
error_list_100 = data_100.error_list;

%Error Evolution L2


figure 
plot(error_list_60(:,1),error_list_60(:,4),'-o','MarkerIndices',...
    round(linspace(1,Nt_60,10)),...
    'DisplayName',['n = ',num2str(n_60)])
hold on 
plot(error_list_70(:,1),error_list_70(:,4),'-*','MarkerIndices',...
    round(linspace(1,Nt_70,10)),...
    'DisplayName',['n = ',num2str(n_70)])
hold on 
plot(error_list_80(:,1),error_list_80(:,4),'-square','MarkerIndices',...
    round(linspace(1,Nt_80,10)),...
    'DisplayName',['n = ',num2str(n_80)])
hold on 
plot(error_list_90(:,1),error_list_90(:,4),'-+','MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['n = ',num2str(n_90)])
hold on 
plot(error_list_100(:,1),error_list_100(:,4),'-diamond','MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['n = ',num2str(n_90)])
hold off
legend 
xlabel('$t$','Interpreter','latex')
ylabel('$L^2$ Error','Interpreter','latex')
title('$L^2$ Error Evolution','Interpreter','latex')
f = gcf;
fontsize(f,20,"points")
set(f,'Units','Inches');
pos = get(f,'Position');
set(f,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f,'plots_m_3_over_2/1D_porous_medium_L2_error.pdf','-dpdf','-r0')

%Error Evolution L1


figure 
plot(error_list_60(:,1),error_list_60(:,3),'-o','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_60,10)),...
    'DisplayName',['n = ',num2str(n_60)])
hold on 
plot(error_list_70(:,1),error_list_70(:,3),'-*','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_70,10)),...
    'DisplayName',['n = ',num2str(n_70)])
hold on 
plot(error_list_80(:,1),error_list_80(:,3),'-square','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_80,10)),...
    'DisplayName',['n = ',num2str(n_80)])
hold on 
plot(error_list_90(:,1),error_list_90(:,3),'-+','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['n = ',num2str(n_90)])
hold on 
plot(error_list_100(:,1),error_list_100(:,3),'-diamond','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['n = ',num2str(n_90)])
hold off
legend 
xlabel('t')
ylabel('f')
title('L1 Error Evolution')
f = gcf;
set(f,'Units','Inches');
pos = get(f,'Position');
set(f,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f,'plots_m_3_over_2/1D_porous_medium_L1_error.pdf','-dpdf','-r0')

%Error Evolution Linf

figure 
plot(error_list_60(:,1),error_list_60(:,2),'-o','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_60,10)),...
    'DisplayName',['n = ',num2str(n_60)])
hold on 
plot(error_list_70(:,1),error_list_70(:,2),'-*','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_70,10)),...
    'DisplayName',['n = ',num2str(n_70)])
hold on 
plot(error_list_80(:,1),error_list_80(:,2),'-square','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_80,10)),...
    'DisplayName',['n = ',num2str(n_80)])
hold on 
plot(error_list_90(:,1),error_list_90(:,2),'-+','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['n = ',num2str(n_90)])
hold on 
plot(error_list_100(:,1),error_list_100(:,2),'-diamond','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['n = ',num2str(n_90)])
hold off
legend 
xlabel('t')
ylabel('f')
title('Linf Error Evolution')
f = gcf;
set(f,'Units','Inches');
pos = get(f,'Position');
set(f,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f,'plots_m_3_over_2/1D_porous_medium_Linf_error.pdf','-dpdf','-r0')


%Entropy Evolution

figure 
plot(error_list_60(:,1),error_list_60(:,6),...
    '-o','Linewidth',2,'MarkerIndices',round(linspace(1,Nt_60,10)),...
    'DisplayName',['M = ',num2str(n_60)])
hold on
plot(error_list_70(:,1),error_list_70(:,6),...
    '-*','Linewidth',2,'MarkerIndices',round(linspace(1,Nt_70,10)),...
    'DisplayName',['M = ',num2str(n_70)])
hold on
plot(error_list_80(:,1),error_list_80(:,6),...
    '-square','Linewidth',2,'MarkerIndices',round(linspace(1,Nt_80,10)),...
    'DisplayName',['M = ',num2str(n_80)])
hold on
plot(error_list_90(:,1),error_list_90(:,6),...
    '-+','Linewidth',2,'MarkerIndices',round(linspace(1,Nt_90,10)),...
    'DisplayName',['M = ',num2str(n_90)])
hold on
plot(error_list_100(:,1),error_list_100(:,6),...
    '-diamond','Linewidth',2,'MarkerIndices',round(linspace(1,Nt_100,10)),...
    'DisplayName',['M = ',num2str(n_100)])
hold off
hl = legend('show','Location','northeast');
set(hl,'Interpreter','latex')
xlabel('$t$','Interpreter','latex')
ylabel('$E_A^{\varepsilon}(f^N)$','Interpreter','latex')
title('Energy Evolution','Interpreter','latex')
f = gcf;
fontsize(f,20,"points")
set(f,'Units','Inches');
pos = get(f,'Position');
set(f,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f,'plots_m_3_over_2/1D_porous_medium_Entropy.pdf','-dpdf','-r0')

%Rate of convergence study
%L2 error list at t = 3
L2_error = [error_list_60(Nt_60,4),...
    error_list_70(Nt_70,4),error_list_80(Nt_80,4),...
    error_list_90(Nt_90,4),error_list_100(Nt_100,4)];

L1_error = [error_list_60(Nt_60,3),...
    error_list_70(Nt_70,3),error_list_80(Nt_80,3),...
    error_list_90(Nt_90,3),error_list_100(Nt_100,3)];

Linf_error = [error_list_60(Nt_60,2),...
    error_list_70(Nt_70,2),error_list_80(Nt_80,2),...
    error_list_90(Nt_90,2),error_list_100(Nt_100,2)];

h_60 = data_60.dx; 
h_70 = data_70.dx;
h_80 = data_80.dx;
h_90 = data_90.dx;
h_100 = data_100.dx;

h_list = [h_60,h_70,h_80,h_90,h_100];

x = ones(length(h_list),2);
x(:,2) = log(h_list);

L2_roc = x\log(L2_error'); %slope using least squares
L1_roc = x\log(L1_error'); 
Linf_roc = x\log(Linf_error');

figure 
plot(-log(h_list),-L2_roc(2)*log(h_list) - L2_roc(1),...
    '-o','Linewidth',2,'color','r','DisplayName',['$L^2$ error slope $=$ ',num2str(L2_roc(2))])
hold on 
plot(-log(h_list),-L1_roc(2)*log(h_list) - L1_roc(1),...
    '-square','Linewidth',2,'color','b','DisplayName',['$L^1$ error slope $=$ ',num2str(L1_roc(2))])
hold on 
plot(-log(h_list),-Linf_roc(2)*log(h_list) - Linf_roc(1),...
    '-diamond','Linewidth',2,'color','k','DisplayName',['$L^{\infty}$ error slope $=$ ',num2str(Linf_roc(2))])
hold on 
plot(-log(h_list),-2*log(h_list)+3,"-.",'Linewidth',2,'DisplayName','Reference Slope')
xlabel('$\log{(h)}$','Interpreter','latex')
ylabel('$\log{(\mbox{error})}$','Interpreter','latex')
title('Rate of Convergence','Interpreter','latex')
hl = legend('show','Location','southeast');
set(hl,'Interpreter','latex')
f = gcf;
fontsize(f,20,"points")
set(f,'Units','Inches');
pos = get(f,'Position');
set(f,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f,'plots_m_3_over_2/1D_porous_medium_ROC.pdf','-dpdf','-r0')



%Fixed point iteration study
figure
plot(error_list_60(:,1),error_list_60(:,7),'-o','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_60,10)),...
    'DisplayName',['M = ',num2str(n_60)])
hold on
plot(error_list_70(:,1),error_list_70(:,7),'-*','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_70,10)),...
    'DisplayName',['M = ',num2str(n_70)])
hold on
plot(error_list_80(:,1),error_list_80(:,7),'-square','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_80,10)),...
    'DisplayName',['M = ',num2str(n_80)])
hold on
plot(error_list_90(:,1),error_list_90(:,7),'-+','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_90,10)),...
    'DisplayName',['M = ',num2str(n_90)])
hold on
plot(error_list_100(:,1),error_list_100(:,7),'-diamond','Linewidth',2,'MarkerIndices',...
    round(linspace(1,Nt_100,10)),...
    'DisplayName',['M = ',num2str(n_100)])
hold off 
hl = legend('show','Location','northwest');
set(hl,'Interpreter','latex')
xlabel('t','Interpreter','latex')
ylabel('$\mbox{Iterations}$','Interpreter','latex')
title('Fixed Point Iterations','Interpreter','latex')
f = gcf;
fontsize(f,20,"points")
set(f,'Units','Inches');
pos = get(f,'Position');
set(f,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f,'plots_m_3_over_2/1D_porous_medium_iter.pdf','-dpdf','-r0')



[max_1,max_1_ind] = max(error_list_60(:,7));
disp(['The maximum number of iterations for n = ',num2str(n_60),...
    ' is ',num2str(max_1),...
    ' and it occurs at time ',num2str(error_list_60(max_1_ind,1))])
avg_1 = mean(error_list_60(:,7));
disp(['The average number of iterations for n = ',num2str(n_60),...
    ' is ',num2str(avg_1)])


[max_2,max_2_ind] = max(error_list_70(:,7));
disp(['The maximum number of iterations for n = ',num2str(n_70),...
    ' is ',num2str(max_2),...
    ' and it occurs at time ',num2str(error_list_70(max_2_ind,1))])
avg_2 = mean(error_list_70(:,7));
disp(['The average number of iterations for n = ',num2str(n_70),...
    ' is ',num2str(avg_2)])

[max_3,max_3_ind] = max(error_list_80(:,7));
disp(['The maximum number of iterations for n = ',num2str(n_80),...
    ' is ',num2str(max_3),...
    ' and it occurs at time ',num2str(error_list_80(max_3_ind,1))])
avg_3 = mean(error_list_80(:,7));
disp(['The average number of iterations for n = ',num2str(n_80),...
    ' is ',num2str(avg_3)])

[max_4,max_4_ind] = max(error_list_90(:,7));
disp(['The maximum number of iterations for n = ',num2str(n_90),...
    ' is ',num2str(max_4),...
    ' and it occurs at time ',num2str(error_list_90(max_4_ind,1))])
avg_4 = mean(error_list_90(:,7));
disp(['The average number of iterations for n = ',num2str(n_90),...
    ' is ',num2str(avg_4)])

[max_5,max_5_ind] = max(error_list_100(:,7));
disp(['The maximum number of iterations for n = ',num2str(n_100),...
    ' is ',num2str(max_5),...
    ' and it occurs at time ',num2str(error_list_100(max_5_ind,1))])
avg_5 = mean(error_list_100(:,7));
disp(['The average number of iterations for n = ',num2str(n_100),...
    ' is ',num2str(avg_5)])








