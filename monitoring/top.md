# top Command

## What is `top`?

The `top` command displays real-time information about the running processes and system resource usage in Linux. It provides a live view of CPU usage, memory usage, running processes, system uptime, and load average.

It is one of the most important monitoring tools used by Linux administrators and DevOps engineers to troubleshoot performance issues.

---

## Syntax

```bash
top
```

---

## Basic Usage

### Monitor System Processes

```bash
top
```

Displays a live view of running processes and system resource usage.

Press:

```text
q
```

to quit.

---

## Understanding the Output

Example Output:

```text
top - 10:45:12 up 2 days,  3:15,  2 users,  load average: 0.15, 0.20, 0.18

Tasks: 152 total,   1 running, 151 sleeping

%Cpu(s):  8.5 us,  2.3 sy, 89.2 id

MiB Mem :  7850 total,  2500 used,  3200 free,  2150 buff/cache

PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM COMMAND
1234 ubuntu   20   0  420000  32000  15000 S  5.0  0.4 nginx
```

---

## Top Section Explanation

| Field | Description |
|---------|-------------|
| Uptime | How long the system has been running |
| Users | Number of logged-in users |
| Load Average | System workload over the last 1, 5, and 15 minutes |
| Tasks | Number of running, sleeping, stopped, and zombie processes |
| CPU | CPU utilization statistics |
| Memory | RAM usage |
| Swap | Swap memory usage |

---

## Process Information

| Column | Description |
|---------|-------------|
| PID | Process ID |
| USER | Process owner |
| PR | Process priority |
| NI | Nice value |
| VIRT | Virtual memory used |
| RES | Physical memory used |
| SHR | Shared memory |
| S | Process state |
| %CPU | CPU usage |
| %MEM | Memory usage |
| COMMAND | Process name |

---

## Useful Keyboard Shortcuts

| Key | Description |
|-----|-------------|
| `q` | Quit `top` |
| `P` | Sort by CPU usage |
| `M` | Sort by memory usage |
| `k` | Kill a process |
| `r` | Change process priority (renice) |
| `h` | Display help |
| `1` | Show CPU usage for each core |

---

## Example

Start the monitoring tool:

```bash
top
```

To sort processes by CPU usage:

Press:

```text
P
```

To sort by memory usage:

Press:

```text
M
```

To exit:

```text
q
```

---

## Real-World Use

DevOps engineers use `top` to:

- Monitor CPU usage
- Monitor memory usage
- Identify high CPU-consuming processes
- Identify memory-intensive applications
- Troubleshoot slow servers
- Monitor application performance

Example:

A server becomes slow.

Run:

```bash
top
```

If a Java process is consuming 95% CPU, you can identify its PID and investigate further.

---

## Common Mistakes

### Assuming `top` Runs Only Once

❌

Many beginners think `top` displays information once.

Actually, it continuously refreshes until you quit.

Press:

```text
q
```

to exit.

---

### Confusing CPU Idle with CPU Usage

Example:

```text
%Cpu(s): 95.0 id
```

This means:

- CPU is **95% idle**
- Only **5% is being used**

---

### Killing the Wrong Process

Before using the `k` command inside `top`, verify the correct Process ID (PID).

Killing an important system process may cause service interruptions.

---

## Tips

- Press `P` to quickly identify CPU-intensive processes.
- Press `M` to identify memory-intensive processes.
- Use `top` together with `ps` for troubleshooting.
- Use `htop` if you prefer a more user-friendly interface.

---

## top vs ps

| `top` | `ps` |
|--------|------|
| Real-time monitoring | Snapshot of running processes |
| Continuously updates | Displays current process information once |
| Interactive | Non-interactive |
| Used for performance monitoring | Used for scripting and process lookup |

---

## Interview Question

**Q:** What is the purpose of the `top` command?

**A:** The `top` command displays real-time information about running processes, CPU usage, memory usage, and overall system performance.

---

**Q:** How do you sort processes by CPU usage in `top`?

**A:** Press:

```text
P
```

---

**Q:** How do you sort processes by memory usage?

**A:** Press:

```text
M
```

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `top` | Monitor running processes in real time |
| `P` | Sort by CPU usage |
| `M` | Sort by memory usage |
| `k` | Kill a process |
| `r` | Change process priority |
| `1` | Display CPU usage for each core |
| `q` | Quit `top` |

---

## Practice Exercise

Run the following command:

```bash
top
```

Try the following:

1. Observe CPU and memory usage.
2. Press `P` to sort by CPU usage.
3. Press `M` to sort by memory usage.
4. Press `1` to display CPU usage for each core.
5. Press `h` to view help.
6. Press `q` to quit.

---

## Related Commands

- `ps` – Display running processes.
- `htop` – Interactive process viewer.
- `free` – Display memory usage.
- `nproc` – Display the number of CPU processing units.
- `uptime` – Display system uptime and load average.
- `kill` – Terminate a process.
```
