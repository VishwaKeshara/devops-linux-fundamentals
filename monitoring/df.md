# df Command

## What is `df`?

The `df` (**Disk Free**) command displays information about the file system's disk space usage. It shows the total size, used space, available space, and usage percentage for mounted file systems.

It is one of the most commonly used commands by Linux administrators and DevOps engineers to monitor disk usage.

---

## Syntax

```bash
df [OPTIONS]
```

---

## Basic Usage

### Display Disk Space Usage

```bash
df
```

Displays disk usage information for all mounted file systems.

Example Output:

```text
Filesystem     1K-blocks     Used Available Use% Mounted on
/dev/sda1       41152828 12582912  26476544  33% /
```

---

## Useful Options

### Human-Readable Format

```bash
df -h
```

Displays disk sizes in a human-readable format (KB, MB, GB, TB).

Example Output:

```text
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        40G   12G   26G  33% /
```

---

### Display File System Type

```bash
df -T
```

Shows the file system type along with disk usage.

Example Output:

```text
Filesystem     Type  Size  Used Avail Use% Mounted on
/dev/sda1      ext4   40G   12G   26G  33% /
```

---

### Human-Readable with File System Type

```bash
df -Th
```

Displays disk usage in a human-readable format along with the file system type.

---

### Display a Specific File System

```bash
df -h /
```

Shows disk usage information for the root (`/`) file system only.

---

## Example

```bash
df -h
```

Output:

```text
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        40G   12G   26G  33% /
tmpfs           1.9G     0  1.9G   0% /run/user/1000
```

---

## Understanding the Output

| Column | Description |
|---------|-------------|
| Filesystem | Name of the storage device |
| Size | Total disk capacity |
| Used | Disk space currently in use |
| Avail | Available free space |
| Use% | Percentage of disk space used |
| Mounted on | Mount point of the file system |

---

## Real-World Use

DevOps engineers use `df` to monitor available disk space on servers and prevent storage-related issues.

Example:

```bash
df -h
```

Check the root partition before deploying an application:

```bash
df -h /
```

Check disk usage before creating backups or copying large files.

---

## Common Mistakes

### Forgetting the Human-Readable Option

❌

```bash
df
```

Output may be difficult to read because sizes are displayed in 1K blocks.

✅

```bash
df -h
```

Displays sizes in KB, MB, or GB.

---

### Confusing `df` with `du`

❌

`df`

Shows disk usage of the entire file system.

`du`

Shows disk usage of individual files and directories.

---

### Ignoring High Disk Usage

If the `Use%` column is close to 100%, the system may run out of disk space, causing applications or services to fail.

Regularly monitor disk usage on production servers.

---

## Tips

- Use `df -h` for a quick overview of disk usage.
- Monitor the root (`/`) partition regularly.
- Use `du` to identify which directories are consuming the most space.

---

## df vs du

| `df` | `du` |
|-------|------|
| Shows file system disk usage | Shows directory or file disk usage |
| Displays total and available space | Displays space used by specific files or directories |
| Used for monitoring storage | Used for finding large files or folders |

---

## Interview Question

**Q:** What is the purpose of the `df` command?

**A:** The `df` command displays disk space usage for mounted file systems, including total, used, and available space.

---

**Q:** What does the `-h` option do?

**A:** The `-h` option displays disk sizes in a human-readable format such as KB, MB, GB, or TB.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `df` | Display disk space usage |
| `df -h` | Display human-readable disk usage |
| `df -T` | Display file system type |
| `df -Th` | Human-readable output with file system type |
| `df -h /` | Display disk usage for the root file system |

---

## Practice Exercise

Run the following commands:

```bash
df

df -h

df -Th

df -h /
```

Observe:

- Total disk size
- Used space
- Available space
- File system type
- Disk usage percentage

---

## Related Commands

- `du` – Display disk usage of files and directories.
- `free` – Display memory usage.
- `lsblk` – List block storage devices.
- `mount` – Display mounted file systems.
- `fdisk` – Manage disk partitions.
