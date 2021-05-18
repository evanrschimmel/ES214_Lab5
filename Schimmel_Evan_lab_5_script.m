clc
clear variables
close all

load('working_model_results');

m_a=1.0; %kg
m_d=0.16; %kg
L=1.0; %m
R=0.133; %m
Ja=0.75; %kg-m^2
Jd=0.0014151; %kg-m^2
k=10.0; %N-m/rad

thetaA0=0; %rad
theta_dot_A0=0; %rad/s
thetaD0=0; %rad
thetadot_D0=0; %rad/s
r0=0.2; %m
tf=0.414;
maxstep=0.01;
tol=1e-6;

sim('Schimmel_Evan_lab_5_model')

plot(t_WM,thetadotA_WM,t_WM,thetadotD_WM,t,theta_dot_A,'--',t,theta_dot_D,'--');
axis([0 0.414 -inf inf]);
xlabel('Time [s]');
ylabel('Angular velocity [rad/s]');
legend('Arm model given data','Disk model given data','Arm model simulation','Disk model simulation');