# Shell Basics

## What is a Shell?

A **Shell** is a command-line interpreter that acts as an interface between the **user** and the **Linux operating system (Kernel)**. It receives commands from the user, passes them to the kernel for execution, and displays the results.

Think of the shell as a translator—it converts your commands into actions that the operating system can understand.

---

## How the Shell Works

```text
+---------+       +--------+       +--------+
|  User   | ----> | Shell  | ----> | Kernel |
+---------+       +--------+       +--------+
                      |
                      v
              Executes Commands
                      |
                      v
                Displays Output
```

---

## Why is the Shell Important?

The shell allows you to:

- Execute Linux commands
- Manage files and directories
- Run shell scripts
- Automate repetitive tasks
- Monitor system resources
- Manage processes
- Interact with cloud services and servers

It is one of the most important tools for Linux users, System Administrators, and DevOps Engineers.

---

## Popular Linux Shells

| Shell | Description |
|--------|-------------|
| **Bash** | Bourne Again Shell (Most widely used Linux shell) |
| **sh** | Bourne Shell |
| **Zsh** | Extended Bash with additional features |
| **Ksh** | Korn Shell |
| **Fish** | User-friendly interactive shell |

Check your current shell:

```bash
echo $SHELL
```

Example Output:

```text
/bin/bash
```

---

## What is Bash?

**Bash (Bourne Again Shell)** is the default shell on many Linux distributions.

Features:

- Command history
- Auto-completion
- Variables
- Shell scripting
- Job control
- Command aliases
- Pipes and redirection

Most DevOps automation scripts are written in **Bash**.

---

## Shell Prompt

A typical shell prompt looks like this:

```text
vishwa@ubuntu:~$
```

Explanation:

| Part | Meaning |
|------|---------|
| `vishwa` | Current user |
| `ubuntu` | Hostname (computer name) |
| `~` | Current directory (Home directory) |
| `$` | Normal user prompt |

Root user prompt:

```text
root@ubuntu:~#
```

The `#` symbol indicates the root (administrator) user.

---

## Running Linux Commands

Example:

```bash
pwd
```

Output:

```text
/home/vishwa
```

Another example:

```bash
ls
```

Displays files and directories in the current location.

---

## Running Multiple Commands

Separate commands using a semicolon (`;`):

```bash
pwd; ls; date
```

Each command runs one after another.

---

## Command Chaining

Run the next command only if the previous command succeeds:

```bash
mkdir Linux && cd Linux
```

If `mkdir` fails, `cd Linux` will not run.

---

## Command History

View previously executed commands:

```bash
history
```

Search command history:

```text
Ctrl + R
```

---

## Variables

Create a variable:

```bash
name="Linux"
```

Display it:

```bash
echo $name
```

Output:

```text
Linux
```

---

## Environment Variables

Display the current user:

```bash
echo $USER
```

Display the home directory:

```bash
echo $HOME
```

Display the current shell:

```bash
echo $SHELL
```

Display the system PATH:

```bash
echo $PATH
```

---

## Shell Scripting

Create a shell script:

```bash
vim hello.sh
```

Add:

```bash
#!/bin/bash

echo "Hello, Linux!"
```

Make it executable:

```bash
chmod +x hello.sh
```

Run it:

```bash
./hello.sh
```

Output:

```text
Hello, Linux!
```

---

## Real-World Use

DevOps engineers use the shell to:

- Automate deployments
- Manage Linux servers
- Execute AWS CLI commands
- Manage Docker containers
- Monitor system resources
- Configure applications
- Write automation scripts

The shell is an essential tool for day-to-day DevOps operations.

---

## Common Mistakes

### Forgetting to Make a Script Executable

❌

```bash
./script.sh
```

May return:

```text
Permission denied
```

✅ Fix:

```bash
chmod +x script.sh
```

---

### Using the Wrong Shell

Some scripts are written specifically for **Bash**.

Always include the shebang line:

```bash
#!/bin/bash
```

---

### Forgetting Quotes Around Variables

❌

```bash
echo $name
```

When variables contain spaces, always use quotes:

```bash
echo "$name"
```

---

## Tips

- Learn Bash before exploring other shells.
- Use `history` to review previous commands.
- Use `man` to learn new commands.
- Practice writing small shell scripts regularly.

---

## Interview Questions

### Q: What is a shell?

**A:** A shell is a command-line interpreter that acts as an interface between the user and the Linux kernel, allowing users to execute commands and automate tasks.

---

### Q: What is Bash?

**A:** Bash (Bourne Again Shell) is the most commonly used Linux shell. It supports command execution, scripting, automation, variables, and job control.

---

### Q: What is the purpose of a shell script?

**A:** A shell script automates a sequence of commands, making repetitive tasks faster, more consistent, and less error-prone.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `echo $SHELL` | Display the current shell |
| `echo $USER` | Display the current user |
| `echo $HOME` | Display the home directory |
| `echo $PATH` | Display the PATH environment variable |
| `history` | Display command history |
| `chmod +x script.sh` | Make a script executable |
| `./script.sh` | Run a shell script |

---

## Practice Exercise

Run the following commands:

```bash
echo $USER

echo $HOME

echo $SHELL

pwd

ls

history
```

Create and execute your first shell script:

```bash
vim hello.sh
```

Add:

```bash
#!/bin/bash

echo "Welcome to Shell Scripting!"
```

Make it executable:

```bash
chmod +x hello.sh
```

Run:

```bash
./hello.sh
```

Expected Output:

```text
Welcome to Shell Scripting!
```

---

## Related Topics

- `set -x` – Enable debug mode in shell scripts.
- `set -e` – Exit a script when a command fails.
- Variables – Store and use values in scripts.
- Shebang (`#!/bin/bash`) – Specify the script interpreter.
- `trap` – Handle signals and cleanup tasks.
- `chmod` – Change file permissions.
