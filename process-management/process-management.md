# Process Management in Linux

## What is a Process?

A **process** is a running instance of a program. Every command or application you execute in Linux runs as a process and is assigned a unique **Process ID (PID)**.

For example:

- Opening a terminal starts a shell process.
- Running `vim` creates a Vim process.
- Running a web server like Nginx creates one or more Nginx processes.

Linux allows you to view, monitor, and control these processes using various commands.

---

## Why is Process Management Important?

Process management helps you:

- Monitor running applications
- Troubleshoot high CPU or memory usage
- Stop unresponsive programs
- Restart services
- Monitor server health

It is an essential skill for Linux administrators and DevOps engineers.

---

## Common Process Management Commands

| Command | Description |
|---------|-------------|
| `ps` | Display running processes |
| `ps -ef` | Display all running processes with detailed information |
| `top` | Real-time process monitoring |
| `kill` | Terminate a process by PID |
| `killall` | Terminate processes by name |
| `pkill` | Kill processes using a name or pattern |
| `pgrep` | Find the PID of a process |
| `jobs` | Display background jobs |
| `bg` | Resume a stopped job in the background |
| `fg` | Bring a background job to the foreground |
| `nohup` | Run a process that continues after logout |

---

## View Running Processes

```bash
ps
```

Displays processes associated with the current terminal.

---

## View All Running Processes

```bash
ps -ef
```

Example Output:

```text
UID        PID  PPID  C STIME TTY      TIME CMD
root         1     0  0 08:00 ?        00:00:02 /sbin/init
ubuntu    2541  2520  0 10:10 pts/0    00:00:00 bash
ubuntu    3124  2541  0 10:20 pts/0    00:00:00 vim notes.txt
```

---

## Find a Specific Process

```bash
ps -ef | grep nginx
```

or

```bash
pgrep nginx
```

---

## Monitor Processes in Real Time

```bash
top
```

Displays:

- CPU usage
- Memory usage
- Running processes
- System load

Press:

```text
q
```

to exit.

---

## Kill a Process

First, find the PID.

```bash
ps -ef | grep nginx
```

Example:

```text
ubuntu   3145
```

Terminate it:

```bash
kill 3145
```

---

## Force Kill a Process

```bash
kill -9 3145
```

The `-9` signal (**SIGKILL**) immediately terminates the process.

> ⚠️ Use `kill -9` only when a process does not respond to a normal `kill`.

---

## Kill a Process by Name

```bash
killall nginx
```

or

```bash
pkill nginx
```

---

## Background Processes

Run a command in the background:

```bash
sleep 60 &
```

Display background jobs:

```bash
jobs
```

Bring it back to the foreground:

```bash
fg
```

Resume a stopped job in the background:

```bash
bg
```

---

## Run a Process After Logout

```bash
nohup ./backup.sh &
```

The process continues running even after you close the terminal.

---

## Signals

Linux uses **signals** to communicate with processes.

| Signal | Number | Description |
|---------|--------|-------------|
| SIGTERM | 15 | Gracefully terminate a process |
| SIGKILL | 9 | Forcefully terminate a process |
| SIGSTOP | 19 | Pause a process |
| SIGCONT | 18 | Resume a paused process |

---

## Real-World Use

A DevOps engineer notices high CPU usage.

Check running processes:

```bash
top
```

Find the application:

```bash
ps -ef | grep java
```

Terminate the unresponsive process:

```bash
kill PID
```

Or restart the application service.

---

## Common Mistakes

### Using `kill -9` Immediately

❌

```bash
kill -9 1234
```

Always try:

```bash
kill 1234
```

first.

---

### Killing the Wrong Process

Always verify the PID:

```bash
ps -ef
```

before terminating a process.

---

### Forgetting Background Jobs

Check background jobs using:

```bash
jobs
```

---

## Tips

- Use `top` to monitor processes in real time.
- Use `ps -ef | grep process_name` to locate a process.
- Use `pgrep` to quickly find a PID.
- Use `kill` before `kill -9`.
- Use `nohup` for long-running scripts.

---

## Interview Questions

### Q: What is a process?

**A:** A process is a running instance of a program.

---

### Q: What is the difference between `ps` and `top`?

**A:**

- `ps` displays a snapshot of running processes.
- `top` provides real-time monitoring.

---

### Q: What does `kill -9` do?

**A:** It sends the **SIGKILL** signal, forcing the process to terminate immediately.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `ps` | View running processes |
| `ps -ef` | View all running processes |
| `top` | Real-time monitoring |
| `pgrep` | Find process ID |
| `kill PID` | Terminate a process |
| `kill -9 PID` | Forcefully terminate a process |
| `killall process` | Kill by process name |
| `pkill process` | Kill matching processes |
| `jobs` | Show background jobs |
| `bg` | Resume background job |
| `fg` | Bring job to foreground |
| `nohup command &` | Run process after logout |

---

## Practice Exercise

Run the following commands:

```bash
ps

ps -ef

top

sleep 60 &

jobs

fg

pgrep bash

kill PID
```

Replace `PID` with the actual Process ID displayed by `pgrep` or `ps`.

---

## Related Commands

- `ps` – Display running processes.
- `top` – Real-time process monitoring.
- `kill` – Terminate a process.
- `pgrep` – Find a process ID.
- `pkill` – Kill processes by name.
- `jobs` – Display background jobs.
- `nohup` – Run commands after logout.
- `free` – Display memory usage.
- `nproc` – Display CPU core count.