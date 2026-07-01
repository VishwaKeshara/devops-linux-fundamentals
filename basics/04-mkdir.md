# mkdir Command

## What is `mkdir`?

The `mkdir` (**Make Directory**) command is used to create one or more new directories in the Linux file system.

It is one of the most commonly used commands for organizing files and creating project folders.

---

## Syntax

```bash
mkdir [OPTIONS] DIRECTORY_NAME
```

---

## Basic Usage

### Create a New Directory

```bash
mkdir Linux
```

Creates a directory named `Linux`.

---

## Useful Options

### Create Multiple Directories

```bash
mkdir Project1 Project2 Project3
```

Creates three directories at once.

---

### Create Parent Directories

```bash
mkdir -p Projects/Linux/Bash
```

The `-p` option creates parent directories automatically if they do not already exist.

Without `-p`, the command will fail if the parent directory doesn't exist.

---

### Display a Message for Each Created Directory

```bash
mkdir -v Linux
```

Output:

```text
mkdir: created directory 'Linux'
```

The `-v` (**verbose**) option displays a message after creating each directory.

---

## Example

```bash
mkdir DevOps

cd DevOps

pwd
```

Output:

```text
/home/vishwa/DevOps
```

---

## Real-World Use

A DevOps engineer may create directories to organize projects, configuration files, scripts, and logs.

Example:

```bash
mkdir -p ~/Projects/AWS/scripts

mkdir -p ~/Projects/AWS/logs

mkdir -p ~/Projects/AWS/backups
```

This creates a well-structured project directory for AWS automation.

---

## Common Mistakes

### Creating a Directory That Already Exists

❌

```bash
mkdir Linux
```

Output:

```text
mkdir: cannot create directory 'Linux': File exists
```

If you're unsure whether the directory exists, use:

```bash
mkdir -p Linux
```

The `-p` option prevents an error if the directory already exists.

---

### Forgetting Quotes Around Directory Names

❌

```bash
mkdir My Project
```

This creates two directories:

* `My`
* `Project`

✅ Correct

```bash
mkdir "My Project"
```

Creates a single directory named `My Project`.

---

### Creating Nested Directories Without `-p`

❌

```bash
mkdir Projects/Linux/Bash
```

Output:

```text
mkdir: cannot create directory 'Projects/Linux/Bash': No such file or directory
```

✅ Correct

```bash
mkdir -p Projects/Linux/Bash
```

---

## Tips

* Use meaningful directory names.
* Use `mkdir -p` when creating nested directories.
* Verify the directory was created successfully with:

```bash
ls
```

or

```bash
pwd
```

---

## Interview Question

**Q:** What is the purpose of the `mkdir` command?

**A:** The `mkdir` command is used to create one or more directories in the Linux file system.

---

**Q:** What does the `-p` option do?

**A:** The `-p` option creates parent directories automatically if they do not exist and prevents an error if the target directory already exists.

---

## Quick Summary

| Command                   | Description                      |
| ------------------------- | -------------------------------- |
| `mkdir folder`            | Create a new directory           |
| `mkdir dir1 dir2`         | Create multiple directories      |
| `mkdir -p path/to/folder` | Create nested directories        |
| `mkdir -v folder`         | Display a message after creation |

---

## Practice Exercise

Run the following commands:

```bash
mkdir LinuxPractice

mkdir LinuxProjects DevOpsProjects

mkdir -p Projects/AWS/Scripts

ls
```

### Expected Output

```text
DevOpsProjects
LinuxPractice
LinuxProjects
Projects
```
