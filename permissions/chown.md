# chown Command

## What is `chown`?

The `chown` (**Change Owner**) command is used to change the **owner** and **group** of a file or directory in Linux.

It is commonly used by Linux administrators and DevOps engineers to manage file ownership, configure applications, and secure files.

> **Note:** Changing file ownership usually requires **root (sudo)** privileges.

---

## Syntax

```bash
chown [OPTIONS] OWNER[:GROUP] FILE
```

---

## Basic Usage

### Change File Owner

```bash
sudo chown ubuntu file.txt
```

Changes the owner of `file.txt` to `ubuntu`.

---

### Change Owner and Group

```bash
sudo chown ubuntu:developers file.txt
```

Changes:

- Owner → `ubuntu`
- Group → `developers`

---

### Change Only the Group

```bash
sudo chown :developers file.txt
```

Keeps the owner unchanged but changes the group.

---

## Useful Options

### Change Ownership Recursively

```bash
sudo chown -R ubuntu:developers project/
```

Changes the owner and group of the directory and **all files and subdirectories** inside it.

---

### Display Verbose Output

```bash
sudo chown -v ubuntu file.txt
```

Displays every ownership change made.

Example Output:

```text
changed ownership of 'file.txt' from root to ubuntu
```

---

## Example

Create a file:

```bash
touch notes.txt
```

View ownership:

```bash
ls -l notes.txt
```

Output:

```text
-rw-r--r-- 1 root root 0 Jul 10 notes.txt
```

Change the owner:

```bash
sudo chown ubuntu notes.txt
```

Verify:

```bash
ls -l notes.txt
```

Output:

```text
-rw-r--r-- 1 ubuntu root 0 Jul 10 notes.txt
```

---

## Understanding the Output

Example:

```text
-rw-r--r-- 1 ubuntu developers 2048 Jul 10 script.sh
```

| Field | Description |
|--------|-------------|
| `ubuntu` | File owner |
| `developers` | File group |

---

## Real-World Use

DevOps engineers use `chown` to:

- Change ownership after copying files.
- Configure web server directories.
- Set ownership for application files.
- Manage deployment directories.
- Configure Docker volumes.
- Secure log files and configuration files.

Example:

```bash
sudo chown -R www-data:www-data /var/www/html
```

This gives ownership of a web application directory to the `www-data` user and group.

---

## Common Mistakes

### Forgetting `sudo`

❌

```bash
chown ubuntu file.txt
```

May result in:

```text
Operation not permitted
```

✅

```bash
sudo chown ubuntu file.txt
```

---

### Confusing `chown` with `chmod`

| Command | Purpose |
|----------|----------|
| `chown` | Changes the owner and/or group |
| `chmod` | Changes file permissions |

Example:

```bash
sudo chown ubuntu file.txt
```

Changes ownership.

```bash
chmod 755 file.txt
```

Changes permissions.

---

### Using Recursive Mode Incorrectly

❌

```bash
sudo chown -R ubuntu /
```

This changes ownership for the entire filesystem and can break the operating system.

Always double-check the directory before using `-R`.

---

## Tips

- Use `ls -l` to verify file ownership.
- Use `sudo` when changing ownership.
- Be careful with the `-R` option.
- Use `chown` for ownership and `chmod` for permissions.

---

## chown vs chmod

| `chown` | `chmod` |
|----------|----------|
| Changes file owner and group | Changes file permissions |
| Requires appropriate privileges | Changes read, write, and execute permissions |
| Used for ownership management | Used for access control |

---

## Interview Questions

### Q: What is the purpose of the `chown` command?

**A:** The `chown` command changes the owner and/or group of a file or directory.

---

### Q: What does the `-R` option do?

**A:** It changes ownership **recursively**, applying the change to all files and subdirectories.

---

### Q: What is the difference between `chown` and `chmod`?

**A:**

- `chown` changes ownership.
- `chmod` changes permissions.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `sudo chown user file` | Change file owner |
| `sudo chown user:group file` | Change owner and group |
| `sudo chown :group file` | Change group only |
| `sudo chown -R user:group directory` | Change ownership recursively |
| `ls -l` | View file ownership |

---

## Practice Exercise

Create a file:

```bash
touch demo.txt
```

View ownership:

```bash
ls -l demo.txt
```

Change the owner (replace `your_username` with your Linux username):

```bash
sudo chown your_username demo.txt
```

Change the owner and group:

```bash
sudo chown your_username:your_username demo.txt
```

Verify the changes:

```bash
ls -l demo.txt
```

---

## Related Commands

- `chmod` – Change file permissions.
- `chgrp` – Change a file's group ownership.
- `ls -l` – View file permissions and ownership.
- `stat` – Display detailed file information.
- `id` – Display user and group information.
- `whoami` – Display the current username.
