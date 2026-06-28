# pwd Command

## What is `pwd`?

The `pwd` (**Print Working Directory**) command displays the absolute path of the current working directory. It helps you identify your current location in the Linux file system.

---

## Syntax

```bash
pwd
```

---

## Basic Usage

```bash
pwd
```

Displays the full path of the current working directory.

---

## Example Output

```text
/home/vishwa/Documents
```

The output above indicates that the current working directory is `Documents`, located inside the user's home directory.

---

## Common Use Cases

### Check Your Current Location

```bash
pwd
```

Use this command whenever you're unsure which directory you're currently working in.

### Verify Directory After Navigation

```bash
cd Downloads
pwd
```

Output:

```text
/home/vishwa/Downloads
```

This confirms that you've successfully changed into the `Downloads` directory.

### Move Back and Verify

```bash
cd ..
pwd
```

Output:

```text
/home/vishwa
```

The `cd ..` command moves to the parent directory, and `pwd` verifies your new location.

---

## Example

```bash
mkdir LinuxPractice
cd LinuxPractice
pwd
```

Output:

```text
/home/vishwa/LinuxPractice
```

---

## Real-World Use

Before creating, modifying, or deleting files on a Linux server, use `pwd` to verify that you're working in the correct directory. This helps prevent accidental changes in the wrong location.

---

## Common Mistakes

❌ Assuming you're in the correct directory without checking.

```bash
rm -rf logs
```

✅ Verify your location first.

```bash
pwd
ls
```

---

❌ Confusing `pwd` with `ls`.

* `pwd` shows **where you are**.
* `ls` shows **what is inside the current directory**.

---

## Interview Question

**Q:** What does the `pwd` command do?

**A:** The `pwd` command prints the absolute path of the current working directory.

---

## Quick Summary

* `pwd` stands for **Print Working Directory**.
* Displays the absolute path of the current directory.
* Helps verify your current location before performing file operations.
* One of the most commonly used Linux commands.
