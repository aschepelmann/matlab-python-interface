%{
    Name: exampleScript.m
    Date: 2017-06-15
    Author: A. Schepelmann
    Description: This script is example code for runPythodMethod(...), 
    which interfaces MATLAB with Python to process an input matrix.

    Change log:
    - 2017-06-15: Initial version - AS
%}

clear all;
clc;
clear classes; % Clear from memory and reload Python module

moduleName='interfaceTest';
methodName='doubleList';

testArray=[1,2,3,4,5]; % Declare 1D test array
result=runPythonMethod(testArray,moduleName,methodName);
disp(result)

testArray=[1,2,3,4,5;6,7,8,9,10]; % Declare 2D test array
result=runPythonMethod(testArray,moduleName,methodName);
disp(result)

testArray=ones([3,3,3]); % Declare 3D test array
result=runPythonMethod(testArray,moduleName,methodName);
disp(result)
