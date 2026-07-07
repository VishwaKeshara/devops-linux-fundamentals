# nproc Command

## What is `nproc`?

The `nproc` (**Number of Processing Units**) command displays the number of CPU processing units (cores) available to the current process. It is commonly used to determine how many CPU cores are available for running applications and scripts.

It is a useful command for Linux administrators, developers, and DevOps engineers when optimizing applications and allocating system resources.

---

## Syntax

```bash
nproc
```

---

## Basic Usage

### Display the Number of CPU Cores

```bash
nproc
```

Displays the number of CPU processing units available.

Example Output:

```text
4
```

This means the system has **4 CPU processing units** available.

---

## Useful Options

### Display All Installed Processing Units

```bash
nproc --all
```

Displays the total number of processing units installed on the system, including offline CPUs.

Example Output:

```text
8
```

---

### Ignore a Number of CPUs

```bash
nproc --ignore=2
```

Displays the number of available processing units after ignoring the specified number.

Example Output:

```text
6
```

If the system has 8 CPUs, ignoring 2 leaves 6 available.

---

## Example

```bash
nproc
```

Output:

```text
8
```

This indicates that the system has **8 CPU processing units** available.

---

## Real-World Use

DevOps engineers use `nproc` to optimize scripts and applications based on the number of available CPU cores.

Example:

```bash
make -j$(nproc)
```

Compiles a project using all available CPU cores, significantly reducing build time.

Another example:

```bash
docker build --cpus=$(nproc) .
```

Allocates available CPU resources during a Docker build.

---

## Common Mistakes

### Confusing CPU Cores with CPU Usage

❌

```bash
nproc
```

The `nproc` command **does not display CPU usage**.

It only displays the number of available processing units.

To monitor CPU usage, use:

```bash
top
```

or

```bash
htop
```

---

### Assuming It Shows Physical CPUs

`nproc` reports the number of processing units available to the current process.

On systems with Hyper-Threading, this may include logical CPUs rather than physical cores.

---

## Tips

- Use `nproc` before compiling large projects.
- Combine it with `make` to speed up builds.
- Use it in automation scripts to make them adapt to different hardware.

Example:

```bash
make -j$(nproc)
```

This automatically uses all available CPU cores.

---

## nproc vs lscpu

| `nproc` | `lscpu` |
|----------|----------|
| Displays the number of available processing units | Displays detailed CPU information |
| Simple and fast | Provides architecture, model, cache, threads, sockets, and more |
| Commonly used in scripts | Commonly used for system information |

---

## Interview Question

**Q:** What is the purpose of the `nproc` command?

**A:** The `nproc` command displays the number of CPU processing units available to the current process.

---

**Q:** Why is `nproc` commonly used with `make`?

**A:** It automatically determines the number of available CPU cores, allowing `make` to run parallel compilation jobs for faster builds.

Example:

```bash
make -j$(nproc)
```

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `nproc` | Display available CPU processing units |
| `nproc --all` | Display all installed processing units |
| `nproc --ignore=2` | Ignore the specified number of CPUs |

---

## Practice Exercise

Run the following commands:

```bash
nproc

nproc --all

nproc --ignore=1
```

Observe:

- Number of available CPU cores
- Total installed CPU cores
- Available cores after ignoring one CPU

---

## Related Commands

- `lscpu` – Display detailed CPU architecture information.
- `top` – Monitor CPU and memory usage.
- `htop` – Interactive process viewer.
- `free` – Display memory usage.
- `uptime` – Display system uptime and load average.
```
