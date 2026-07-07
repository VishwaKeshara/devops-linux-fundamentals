# Understanding Linux File Permissions

## What are File Permissions?

Linux file permissions determine **who can read, write, or execute** a file or directory. They help protect files from unauthorized access and ensure that only the appropriate users can modify or execute them.

Every file and directory has three permission categories:

- **User (Owner)**
- **Group**
- **Others**

Each category can have three types of permissions:

- **Read (r)**
- **Write (w)**
- **Execute (x)**

---

## Viewing File Permissions

Use the following command:

```bash
ls -l
```

Example Output:

```text
-rwxr-xr-- 1 ubuntu ubuntu 2048 Jul 10 script.sh
```

---

## Understanding the Output

```text
-rwxr-xr--
```

Breakdown:

| Part | Meaning |
|------|---------|
| `-` | File type (`-` = regular file, `d` = directory) |
| `rwx` | Owner permissions |
| `r-x` | Group permissions |
| `r--` | Others permissions |

Visual representation:

```text
-rwxr-xr--
 │││ │││ │││
 │││ │││ └── Others
 │││ └────── Group
 └────────── Owner
```

---

## Permission Types

### Read (`r`)

**Symbol:** `r`

**Value:** `4`

Allows a user to:

- View the contents of a file.
- List the contents of a directory.

Example:

```bash
cat notes.txt
```

---

### Write (`w`)

**Symbol:** `w`

**Value:** `2`

Allows a user to:

- Modify a file.
- Delete a file (if directory permissions allow).
- Create new files in a directory.

Example:

```bash
echo "Hello" >> notes.txt
```

---

### Execute (`x`)

**Symbol:** `x`

**Value:** `1`

Allows a user to:

- Execute a script or program.
- Enter a directory.

Example:

```bash
./deploy.sh
```

---

## Numeric Permission Values

Linux combines the values of `r`, `w`, and `x`.

| Number | Binary | Permission |
|--------:|--------|------------|
| 0 | 000 | No permissions |
| 1 | 001 | Execute |
| 2 | 010 | Write |
| 3 | 011 | Write + Execute |
| 4 | 100 | Read |
| 5 | 101 | Read + Execute |
| 6 | 110 | Read + Write |
| 7 | 111 | Read + Write + Execute |

---

## Common Permission Examples

### 777

```text
rwx rwx rwx
```

| Owner | Group | Others |
|--------|-------|--------|
| Read, Write, Execute | Read, Write, Execute | Read, Write, Execute |

Everyone has full access.

> ⚠️ **Not recommended** because it allows anyone to modify or execute the file.

---

### 755

```text
rwx r-x r-x
```

| Owner | Group | Others |
|--------|-------|--------|
| Read, Write, Execute | Read, Execute | Read, Execute |

Commonly used for executable scripts and directories.

---

### 644

```text
rw- r-- r--
```

| Owner | Group | Others |
|--------|-------|--------|
| Read, Write | Read | Read |

Commonly used for configuration files and text files.

---

### 600

```text
rw-------
```

Only the owner can read and write the file.

Ideal for:

- SSH private keys
- Password files
- Sensitive configuration files

---

### 700

```text
rwx------
```

Only the owner has full access.

Often used for:

- Personal scripts
- Private directories

---

## File vs Directory Permissions

Permissions behave differently for files and directories.

| Permission | File | Directory |
|------------|------|-----------|
| Read (`r`) | View file contents | List directory contents |
| Write (`w`) | Modify file | Create, delete, or rename files |
| Execute (`x`) | Run the file as a program | Enter (access) the directory |

---

## Changing Permissions

Use the `chmod` command.

Example:

```bash
chmod 755 script.sh
```

Make a script executable:

```bash
chmod +x deploy.sh
```

Remove write permission from the group:

```bash
chmod g-w report.txt
```

---

## Real-World Use

DevOps engineers use file permissions to:

- Secure configuration files.
- Make deployment scripts executable.
- Protect SSH private keys.
- Restrict access to sensitive files.
- Control access to application directories.

Examples:

```bash
chmod 600 ~/.ssh/id_rsa
```

```bash
chmod +x deploy.sh
```

```bash
chmod 755 scripts/
```

---

## Common Mistakes

### Using `777` Everywhere

❌

```bash
chmod 777 script.sh
```

This gives everyone full access and can create serious security risks.

✅ Prefer:

```bash
chmod 755 script.sh
```

or

```bash
chmod 700 script.sh
```

depending on the use case.

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

### Confusing Ownership with Permissions

Changing permissions:

```bash
chmod 755 file.txt
```

does **not** change the file owner.

To change ownership, use:

```bash
chown user:user file.txt
```

---

## Best Practices

- Follow the **Principle of Least Privilege**.
- Avoid `777` unless absolutely necessary.
- Use `755` for executable scripts and directories.
- Use `644` for most text and configuration files.
- Use `600` for private or sensitive files.
- Verify permissions using:

```bash
ls -l
```

---

## Interview Questions

### Q: What do Linux file permissions control?

**A:** They control who can read, write, or execute files and directories.

---

### Q: What does `chmod 755 file` mean?

**A:**

- Owner → Read, Write, Execute
- Group → Read, Execute
- Others → Read, Execute

---

### Q: Why is `chmod 777` considered insecure?

**A:** Because it allows everyone to read, modify, and execute the file, increasing the risk of accidental or unauthorized changes.

---

## Quick Summary

| Permission | Numeric Value |
|------------|--------------:|
| Read | 4 |
| Write | 2 |
| Execute | 1 |

| Permission | Numeric |
|------------|---------|
| `rwx` | 7 |
| `rw-` | 6 |
| `r-x` | 5 |
| `r--` | 4 |

Common permissions:

| Command | Purpose |
|---------|---------|
| `chmod 755 file` | Executable scripts |
| `chmod 644 file` | Standard text/configuration files |
| `chmod 600 file` | Private files |
| `chmod 700 directory` | Private directories |
| `chmod +x script.sh` | Make a script executable |

---

## Practice Exercise

Create a file:

```bash
touch demo.sh
```

View its permissions:

```bash
ls -l demo.sh
```

Make it executable:

```bash
chmod +x demo.sh
```

Verify the changes:

```bash
ls -l demo.sh
```

Try changing the permissions:

```bash
chmod 644 demo.sh

chmod 755 demo.sh

chmod 700 demo.sh
```

Observe how the permissions change after each command.

---

## Related Commands

- `chmod` – Change file permissions.
- `chown` – Change file owner and group.
- `chgrp` – Change file group ownership.
- `umask` – Set default permissions for new files and directories.
- `stat` – Display detailed file information.
- `ls -l` – View file permissions and ownership.
