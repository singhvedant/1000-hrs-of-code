I lost count of days after day 15, but stopped making folders after day8.

# 1000 Hours of code 
This is my journey at perfecting my self. I have got a job kinda thing that trains me so I am tracking it here in github.
Lets GOO!!
## DAY 1
Basic Linux Commands

## DAY 2
0. Compiler and Interpreter
Compiler compiles the whole program into machine code and then executes
Interpreter reads and runs the code line by line

1. Shell scripting :
.sh files are used to write scripts in shell
We can use arthematics, loops, if-else. Many things like normal programming for flow control and data control.

2. Variables : 
Containers for values
Name should be Noun (Naming Conventions)
hello starting with small letters(camelCase)
"$" is used to refer to the variables

3. Make a Tic-tac-toe game in Shell Script

## DAY 3
1. Git
- VCS - version control system, manages the changes to code in repository
- Git add (.) : Staging the files for github repository (dot to stage all the files at once)
- Git commit -m "commit message here" : storing the staged files in local repo
- Git stash : Stores the changes temporarily in local repo so we can change the repo and work on other issues and come back later.
- Git push : Updates the commits in local repository to remote repository
- Git -b "branch_name" : Create a branch
- Git checkout : change a branch if used -b then can create a new branch and change at the same time
- (-M) flag can be used to change the master branch
- init->-M main->checkout->do_Changes->add->commit->push-to-branch->checkout main->merge->push-to-main


## DAY 4
1. Git
- git Rebase for solving conflicts
- 

2. Make a code for measuring the lengths of 2D-line segments by taking inputs of cartesian points


## Searching
Algorithm
1. Linear
2. binary

Use loop
Use Boolean and Flag

## JAVA
The new keyword is used to allocate memory at runtime. 
All objects get memory in Heap memory area.

### Interfaces
The interface in Java is a mechanism to achieve abstraction.

#### Uses of Interfaces in Java are mentioned below:
- It is used to achieve total abstraction.
- Since java does not support multiple inheritances in the case of class, by using an interface - it can achieve multiple inheritances.
- Any class can extend only 1 class, but can any class implement an infinite number of interfaces.
- It is also used to achieve loose coupling(minimal reliance on shared resources or communication protocols).
- Interfaces are used to implement abstraction. 

#### The advantages of using interfaces in Java are as follows:
Without bothering about the implementation part, we can achieve the security of the implementation.
In Java, multiple inheritances are not allowed, however, you can use an interface to make use of it as you can implement more than one interface.

The final keyword in Java is a non-access modifier that can be used to declare variables, methods, and classes as final. This means that the value of a final variable cannot be changed after it has been initialised, a final method cannot be overridden by a subclass, and a final class cannot be extended.

##### We can now add default implementation for interface methods. This default implementation has a special use and does not affect the intention behind interfaces.

##### we can now define static methods in interfaces that can be called independently without an object. 


## Collection Framework
Collection is a group of Objects
Framework - Provides predefined Architecture, set of classes and interfaces, It's optional

Collection Framework : Architecture for storing and manipulating a group of objects. (Interfaces, Classes and Algorithms)

Sets use hash function to store data and hence cannot have duplicate values
Similarly in HashMap the key is passed through hash function and the key is stored in the location along with the values, therefore we shall have duplicate values but no duplicate keys.

## Exception Handeling
Exception stops the current method and error stops the program
Checked exceptions are compile time exception - Implicit handling
Keyword - " Throws " handles the exception implicitly 
Throws is used in method signature

Unchecked exceptions are run time exceptions - 
Unchecked exceptions are always handled implicitly.
Keyword - " Throw " explicitly throws an exception 

## JDBC - ODBC
### Database Connectvitity process
- Initialize Driver
- Connect The Driver
- Convert Instance to the object of the system (Create Statement)
- Run Queries
- Close the Connection
