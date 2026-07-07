# free Command

## What is `free`?

The `free` command displays information about the system's memory usage, including **RAM (Random Access Memory)** and **swap memory**. It shows how much memory is used, free, available, and allocated for buffers and cache.

It is one of the most commonly used commands by Linux administrators and DevOps engineers to monitor system memory.

---

## Syntax

```bash
free [OPTIONS]
```

---

## Basic Usage

### Display Memory Usage

```bash
free
```

Displays the system's memory usage in kilobytes (KB).

Example Output:

```text
               total        used        free      shared  buff/cache   available
Mem:         4045632     1256320      865432      102400     1923880     2489312
Swap:        2097148           0     2097148
```

---

## Useful Options

### Human-Readable Format

```bash
free -h
```

Displays memory usage in a human-readable format (MB or GB).

Example Output:

```text
               total        used        free      shared  buff/cache   available
Mem:           3.9Gi       1.2Gi       845Mi       100Mi       1.8Gi       2.4Gi
Swap:          2.0Gi          0B       2.0Gi
```

---

### Display Memory in Megabytes

```bash
free -m
```

Displays memory usage in megabytes (MB).

---

### Display Memory in Gigabytes

```bash
free -g
```

Displays memory usage in gigabytes (GB).

---

### Continuously Monitor Memory

```bash
free -h -s 5
```

Refreshes the memory information every **5 seconds**.

---

## Example

```bash
free -h
```

Output:

```text
               total        used        free      shared  buff/cache   available
Mem:           7.7Gi       2.3Gi       3.1Gi       120Mi       2.3Gi       5.0Gi
Swap:          2.0Gi          0B       2.0Gi
```

---

## Understanding the Output

| Column | Description |
|---------|-------------|
| total | Total installed memory |
| used | Memory currently in use |
| free | Completely unused memory |
| shared | Memory shared between processes |
| buff/cache | Memory used for buffers and cache |
| available | Memory available for new applications without swapping |
| Swap | Virtual memory stored on disk |

---

## Real-World Use

DevOps engineers use the `free` command to monitor server memory and troubleshoot performance issues.

Example:

```bash
free -h
```

Check memory usage before deploying an application or investigating slow system performance.

Monitor memory continuously:

```bash
free -h -s 2
```

Updates memory usage every **2 seconds**.

---

## Common Mistakes

### Forgetting the Human-Readable Option

❌

```bash
free
```

The output is displayed in kilobytes, which can be difficult to interpret.

✅

```bash
free -h
```

Displays memory usage in MB or GB.

---

### Misinterpreting the `free` Column

Many beginners think low **free** memory means the system has a problem.

Linux uses unused RAM as cache to improve performance. The **available** column is a better indicator of how much memory is actually available for applications.

---

### Ignoring Swap Usage

High swap usage may indicate that the system does not have enough physical RAM, which can reduce performance.

---

## Tips

- Use `free -h` for easy-to-read memory information.
- Monitor the **available** memory instead of focusing only on the **free** memory.
- Combine `free` with `top` or `htop` to identify memory-intensive processes.

---

## free vs df

| `free` | `df` |
|---------|------|
| Displays memory (RAM) usage | Displays disk space usage |
| Includes swap memory | Includes file systems |
| Used for memory monitoring | Used for storage monitoring |

---

## Interview Question

**Q:** What is the purpose of the `free` command?

**A:** The `free` command displays information about the system's RAM and swap memory usage.

---

**Q:** What does the `-h` option do?

**A:** The `-h` option displays memory usage in a human-readable format such as MB or GB.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `free` | Display memory usage |
| `free -h` | Human-readable memory usage |
| `free -m` | Display memory in MB |
| `free -g` | Display memory in GB |
| `free -h -s 5` | Refresh memory usage every 5 seconds |

---

## Practice Exercise

Run the following commands:

```bash
free

free -h

free -m

free -g

free -h -s 3
```

Observe:

- Total RAM
- Used memory
- Free memory
- Available memory
- Swap memory

Press **Ctrl + C** to stop the continuous monitoring.

---

## Related Commands

- `top` – Display running processes and system resource usage.
- `htop` – Interactive process viewer.
- `vmstat` – Display virtual memory statistics.
- `df` – Display disk space usage.
- `nproc` – Display the number of CPU processing units.
