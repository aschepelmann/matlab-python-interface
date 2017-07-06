"""
@name: interfaceTest.py
@author: A. Schepelmann
@date: 2017-06-16
@description: Python module to double elements of argument.
"""
def doubleList(x):
    if isinstance(x,list): #x is a list
        y=[0]*len(x) #Pre-allocate new list
        for i in range(len(x)):
            y[i]=x[i]*2
    else: #x is a scalar
        y=x*2
    return y

def main():
    print("@name: interfaceTest.py")
    print("@author: A. Schepelmann")
    print("@date: 2017-06-16")
    print("@description: Python module to double elements of argument.")
    
if __name__ == '__main__':
    main()