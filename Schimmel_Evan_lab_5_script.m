clc
clear variables
close all

load('working_model_results');

m_a=1.0; %kg, mass of bar
m_d=0.16; %kg, mass of disk
L=1.0; %m, length of bar
R=0.133; %m, distance from rotation point to disk center
Ja=0.75; %kg-m^2, mass moment of inertia of bar
Jd=0.0014151; %kg-m^2, mass moment of inertia of disk
k=10.0; %N-m/rad, spring constant

thetaA0=0; %rad, initial bar displacement
theta_dot_A0=0; %rad/s, initial bar angular velocity
thetaD0=0; %rad, initial disk displacement
thetadot_D0=0; %rad/s, initial disk angular velocity
r0=0.2; %m, initial distance from rotation point to disk center
tf=0.414; %s, simulation runtime
maxstep=0.01;
tol=1e-6;

sim('Schimmel_Evan_lab_5_model')

plot(t_WM,thetadotA_WM,t_WM,thetadotD_WM,t,theta_dot_A,'--',t,theta_dot_D,'--');
axis([0 0.414 -inf inf]);
xlabel('Time [s]');
ylabel('Angular velocity [rad/s]');
legend('Arm model given data','Disk model given data','Arm model simulation','Disk model simulation');