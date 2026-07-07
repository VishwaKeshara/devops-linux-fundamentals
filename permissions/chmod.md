# chmod Command

## What is `chmod`?

The `chmod` (**Change Mode**) command is used to change the permissions of files and directories in Linux. It controls who can **read**, **write**, or **execute** a file or directory.

It is one of the most important Linux commands for managing file security and is widely used by Linux administrators and DevOps engineers.

---

## Syntax

```bash
chmod [OPTIONS] MODE FILE
```

---

## Understanding File Permissions

Linux permissions are divided into three categories:

| User | Description |
|------|-------------|
| **User (u)** | The owner of the file |
| **Group (g)** | Users who belong to the file's group |
| **Others (o)** | Everyone else |

Each category can have three permissions:

| Permission | Symbol | Value |
|------------|--------|------:|
| Read | `r` | 4 |
| Write | `w` | 2 |
| Execute | `x` | 1 |

---

## Numeric Permission Values

Permissions are represented using numbers.

| Number | Permission |
|--------:|------------|
| 7 | Read + Write + Execute (4+2+1) |
| 6 | Read + Write (4+2) |
| 5 | Read + Execute (4+1) |
| 4 | Read Only |
| 3 | Write + Execute (2+1) |
| 2 | Write Only |
| 1 | Execute Only |
| 0 | No Permission |

---

## Basic Usage

### Give Full Permissions

```bash
chmod 777 script.sh
```

Grants **read, write, and execute** permissions to:

- Owner
- Group
- Others

---

### Give Owner Full Access Only

```bash
chmod 700 script.sh
```

- Owner → Read, Write, Execute
- Group → No permission
- Others → No permission

---

### Make a Script Executable

```bash
chmod +x script.sh
```

Adds execute permission.

Now you can run:

```bash
./script.sh
```

---

## Symbolic Mode

Instead of numbers, you can use symbols.

### Add Execute Permission

```bash
chmod u+x script.sh
```

Adds execute permission for the owner.

---

### Remove Write Permission

```bash
chmod g-w file.txt
```

Removes write permission from the group.

---

### Give Read Permission to Others

```bash
chmod o+r notes.txt
```

Adds read permission for others.

---

## Example

Create a script:

```bash
touch hello.sh
```

Edit it:

```bash
vim hello.sh
```

Add:

```bash
#!/bin/bash

echo "Hello, DevOps!"
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
Hello, DevOps!
```

---

## Viewing File Permissions

Use:

```bash
ls -l
```

Example:

```text
-rwxr-xr-- 1 ubuntu ubuntu 120 Jun 30 hello.sh
```

Explanation:

| Part | Meaning |
|------|---------|
| `-` | Regular file |
| `rwx` | Owner permissions |
| `r-x` | Group permissions |
| `r--` | Others permissions |

---

## Common Permission Examples

| Command | Meaning |
|---------|---------|
| `chmod 777 file` | Everyone has full access |
| `chmod 755 file` | Owner has full access, others can read and execute |
| `chmod 644 file` | Owner can read/write, others can only read |
| `chmod 600 file` | Only owner can read and write |
| `chmod 700 file` | Only owner has full access |

---

## Real-World Use

DevOps engineers use `chmod` to:

- Make shell scripts executable
- Secure configuration files
- Restrict access to sensitive files
- Configure deployment scripts
- Manage application permissions

Example:

```bash
chmod +x deploy.sh
```

Before running:

```bash
./deploy.sh
```

---

## Common Mistakes

### Using `777` Everywhere

❌

```bash
chmod 777 secrets.txt
```

This allows anyone to read, modify, or execute the file, creating a serious security risk.

✅ Use the **least privilege principle**. Grant only the permissions that are required.

---

### Forgetting Execute Permission

Trying to run:

```bash
./script.sh
```

May result in:

```text
Permission denied
```

Fix:

```bash
chmod +x script.sh
```

---

### Confusing Files and Directories

Directories also have permissions.

For directories:

- `r` → List files
- `w` → Create or delete files
- `x` → Enter (access) the directory

---

## Tips

- Use `chmod +x` before running shell scripts.
- Avoid using `777` unless absolutely necessary.
- Verify permissions using:

```bash
ls -l
```

- Follow the **principle of least privilege** for better security.

---

## chmod vs chown

| `chmod` | `chown` |
|----------|----------|
| Changes file permissions | Changes file owner or group |
| Controls read, write, execute access | Controls ownership |
| Used for security | Used for ownership management |

---

## Interview Question

**Q:** What is the purpose of the `chmod` command?

**A:** The `chmod` command changes the permissions of files and directories, controlling who can read, write, or execute them.

---

**Q:** What does `chmod 755 file` mean?

**A:**

- Owner → Read, Write, Execute
- Group → Read, Execute
- Others → Read, Execute

---

**Q:** Why is `chmod 777` generally discouraged?

**A:** Because it gives **everyone** full read, write, and execute permissions, which can expose files to accidental modification or unauthorized access. It should only be used in rare situations where such broad access is appropriate.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `chmod +x file` | Make a file executable |
| `chmod 755 file` | Owner: full access; Group/Others: read and execute |
| `chmod 644 file` | Owner: read/write; Group/Others: read only |
| `chmod 700 file` | Owner: full access only |
| `chmod 777 file` | Everyone has full access (**not recommended**) |

---

## Practice Exercise

Create a script:

```bash
touch demo.sh
```

Edit it:

```bash
vim demo.sh
```

Add:

```bash
#!/bin/bash

echo "Learning chmod!"
```

Save the file.

Make it executable:

```bash
chmod +x demo.sh
```

Verify permissions:

```bash
ls -l demo.sh
```

Run it:

```bash
./demo.sh
```

Expected Output:

```text
Learning chmod!
```

---

## Related Commands

- `ls` – Display file permissions and directory contents.
- `chown` – Change file owner and group.
- `chgrp` – Change a file's group ownership.
- `umask` – Set default file and directory permissions.
- `stat` – Display detailed file information.
```
