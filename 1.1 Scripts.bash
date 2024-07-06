## 1.1 Scripts

# Shebang line, tells the shell to execute the script using the given interpreter
#!/bin/bash
#!/bin/sh

# ============================================================================================== #

# $0: The name of the script
# $1-9: The first 9 arguments to the script
# $#: The number of arguments passed to the script
# $@: All the arguments supplied to the script
# $?: The exit status of the most recently run process

# Example 1
greeting=$1
echo ${greeting}, world \(planet\)!

# Example 2
echo You executed $0, with $# arguments, and they were: $@

# ============================================================================================== #

# []: Test command
# if/elif/else/fi: Conditional statements

# Example 1
if [ -d $1 ]
then
    echo $1 is a directory
elif [ -f $1 ]
then
    echo $1 is a file
else
    echo $1 is not valid
fi


# Example 2
if [ $? -eq 0 ]
then
    echo Success
else
    echo Failure
    exit 1
fi



# ============================================================================================== #