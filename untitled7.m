%Guang Yang Simulation for the sixth graph in the paper

clear; clc;

 

 

a1 =1;
b1 = 1;
a2 =1;
b2 = 1;
c2 =1
a3 =1;
b3 = 1;
c3 = 1;
 



ode_rhs = @(t,x) [x(1).*(a1-b1.*x(2));...

                 x(2).*(-a2-b2.*x(3) + c2.*x(1));...

                x(3).*(-a3+c3.*x(2));];

 



a0 = 1;

b0 = 1; 

c0 = 1; 


x0 = [a0;b0;c0];

 



tspan = [0 50]; 

[t,x] = ode45(@(t,x) ode_rhs(t,x), tspan, x0);

 


figure(1); clf;

plot(t,x(:,1),'LineWidth',4); hold on

plot(t,x(:,2),'LineWidth',4);

plot(t,x(:,3),'LineWidth',4);

xlabel('Time'); ylabel('Population Size');

legend('x_1', 'x_2', 'x_3')

set(gca,'FontSize',20)

 

return 

tspan = [0 50]; 

[t,x] = ode45(@(t,x) ode_rhs(t,x), tspan, x0);

 

figure(2); clf;

plot(t,x(:,1),'LineWidth',4); hold on


plot(t,C - 2.*x(:,2) - x(:,1),'LineWidth',4);

plot(t,x(:,2),'LineWidth',4);

xlabel('Time'); ylabel('Population Size');

legend('x_1', 'x_2', 'x_3')

set(gca,'FontSize',20)