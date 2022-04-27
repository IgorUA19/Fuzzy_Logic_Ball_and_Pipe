% A MATLAB script to control Rowans Systems & Control Floating Ball 
% Apparatus designed by Mario Leone, Karl Dyer and Michelle Frolio. 
% The current control system is a PID controller.
%
% Created by Kyle Naddeo, Mon Jan 3 11:19:49 EST 
% Modified by YOUR NAME AND DATE

%% Start fresh
close all; clc; clear device;

%% Connect to device
 device = serialport('COM7',19200);

%% Parameters
target      = 0.5;   % Desired height of the ball [m]
sample_rate = 0.25;  % Amount of time between controll actions [s]

%% Give an initial burst to lift ball and keep in air
set_pwm(device, 4000);
pause(2)

%Sets drops the ball to the first marker specified
fis = readfis('Control2'); %Reads the rules outlined in the fuzzy controller
out = evalfis(fis,.727)    %Inputs a heigh and the out is the PWM
set_pwm(device, out);      %Set's PWM to the value outputed in the previouse line.
pause(10) %Waits before moving on

%Drops the ball 
fis2 = readfis('Control2'); %Reads the rules outlined in the fuzzy controller
out2 = evalfis(fis2, .5)    %Inputs a heigh and the out is the PWM
set_pwm(device, out2);      %Set's PWM to the value outputed in the previouse line.
pause(.7) %Waits before moving on

%Lifts the  ball to the second marker specified
fis3 = readfis('Control2'); %Reads the rules outlined in the fuzzy controller
out3 = evalfis(fis3, .74)   %Inputs a heigh and the out is the PWM
set_pwm(device, out3);      %Set's PWM to the value outputed in the previouse line.
pause(10) %Waits before moving on

%Lifts the ball to the third marker specified
fis4 = readfis('Control2'); %Reads the rules outlined in the fuzzy controller
out4 = evalfis(fis4, .8)    %Inputs a heigh and the out is the PWM
set_pwm(device, out4);      %Set's PWM to the value outputed in the previouse line.
pause(10) %Waits before moving on




