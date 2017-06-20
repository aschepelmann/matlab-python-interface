function result = runPythonMethod(inputArray,moduleName,methodName)
%{
    Name: runPythonMethod.m
    Date: 2017-06-15
    Author: A. Schepelmann
    Description: This method passes MATLAB data to a method in a 
    Python script referenced by the moduleName and methodName strings, and
    returns the processed data.
    Notes: The command "clear classes;" must be present in higher-level 
    function calling this method to force MATLAB to reload the latest 
    version of the executed Python script. 

    Change log:
    - 2017-06-15: Initial version - AS
%}

inputDims=size(inputArray);

mod = py.importlib.import_module(moduleName);
py.importlib.reload(mod);

funcPath=['py.',moduleName,'.',methodName]; % Concatenate function string
fun=str2func(funcPath); % Create function handle

inputArray=reshape(inputArray,[],1)'; %Reshape to 1xN
pyList=py.list(inputArray); % Create Python list
pyList=fun(pyList); % Pass list to Python function
result=cell(pyList); % Convert list to cell array
result=reshape(result,inputDims); %Restore original shape
result=cell2mat(result); % Convert cell array to mat

end

