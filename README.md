
### Uses of bash scripts.
File management, system administration, fully automated basis.
- Privilege escalation?
- Shell is the interpreter.

The shebang explains what interpreter is being used.
bash(terminal instance), shell(not full access in terms of functionality)

Revert permissions: -x (read only)
Grant permissions: +x (read & execute)
(./) means to use the specified interpreter.

### Variables.
Never have spaces before or after the = sign, for initialization of variables. They need to be uppercase as well.
Variable name rules:
    - never start with a digit or underscore. eg: 01_STUDENT=""

if you have a space between the variable and values, this is a comparison not an assignment. 

### Testing.
```console
help test
```

### Pingsweep
If you wanted to ping a set of ip addresses and check if they are online or not
sequence can use characters, keywords, numbers...