# matlab-python-interface
Method and example code to call and pass data between Python module methods and MATLAB.

Code to enable Python module method calls from MATLAB.  Data is passed between MATLAB and Python as a list.  Also includes example code to illustrate functionality.

**NOTE:** The command "clear classes;" must be present in the higher-level function calling this method to force MATLAB to reload the latest version of the executed Python script. 

## Files
### Program files
- runPythonMethod.m:
	- Inputs:
		- inputArray (N-D numerical data)
		- moduleName (String: name of Python module)
		- methodName (String: name of Python method)
	- Output:
		- result (N-D numerical data)

### Example files (These call runPythonMethod.m and pass test data back and forth)
- examples/exampleScript.m:
- examples/interfaceTest.py
