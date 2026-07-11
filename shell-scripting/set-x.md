# set -x Command

## What is `set -x`?

The `set -x` command enables **debug mode** in a Bash shell script. When enabled, Bash prints each command and its expanded arguments to the terminal **before executing it**.

This is extremely useful for debugging shell scripts and understanding the flow of execution.

---

## Syntax

```bash
set -x
```

To disable debug mode:

```bash
set +x
```

---

## Basic Usage

Create a script:

```bash
vim debug.sh
```

Add the following:

```bash
#!/bin/bash

set -x

name="Vishwa"

echo "Hello $name"

pwd

date
```

Save the file and make it executable:

```bash
chmod +x debug.sh
```

Run the script:

```bash
./debug.sh
```

---

## Example Output

```text
+ name=Vishwa
+ echo 'Hello Vishwa'
Hello Vishwa
+ pwd
/home/ubuntu
+ date
Thu Jul 10 10:15:30 UTC 2026
```

Notice that every command is displayed before it is executed.

---

## Disable Debug Mode

Use:

```bash
set +x
```

Example:

```bash
#!/bin/bash

echo "Debug starts here"

set -x

pwd
date

set +x

echo "Debug mode disabled"
ls
```

Only the commands between `set -x` and `set +x` will be displayed in debug mode.

---

## Real-World Use

DevOps engineers frequently use `set -x` to:

- Debug deployment scripts
- Troubleshoot automation failures
- Verify command execution
- Check variable expansion
- Identify script errors

Example:

```bash
#!/bin/bash

set -x

aws s3 ls

docker ps

kubectl get pods
```

This helps verify that each command is executed correctly.

---

## Common Mistakes

### Leaving Debug Mode Enabled in Production

❌

```bash
set -x
```

Leaving debug mode enabled in production scripts can expose sensitive information such as:

- Passwords
- API Keys
- AWS Access Keys
- Tokens

Always disable debug mode before deploying production scripts unless actively troubleshooting.

---

### Confusing `set -x` with `set -e`

These options serve different purposes.

| Command | Purpose |
|----------|----------|
| `set -x` | Display each command before execution (debugging) |
| `set -e` | Exit immediately if a command fails |

They are often used together:

```bash
set -ex
```

This enables debugging and stops the script on the first error.

---

## Tips

- Enable `set -x` only while debugging.
- Use `set +x` to disable debug output after troubleshooting.
- Avoid printing sensitive information when debug mode is enabled.

---

## Interview Question

### Q: What is the purpose of `set -x`?

**A:** It enables Bash debug mode, displaying each command before it is executed.

---

### Q: How do you disable debug mode?

**A:**

```bash
set +x
```

---

### Q: Why should you avoid using `set -x` in production?

**A:** Because it may expose sensitive information such as passwords, API keys, and authentication tokens in the terminal or log files.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `set -x` | Enable debug mode |
| `set +x` | Disable debug mode |
| `set -ex` | Enable debug mode and exit on errors |

---

## Practice Exercise

Create a file:

```bash
vim debug.sh
```

Add:

```bash
#!/bin/bash

set -x

echo "Current User:"
whoami

echo "Current Directory:"
pwd

echo "Current Date:"
date
```

Make it executable:

```bash
chmod +x debug.sh
```

Run it:

```bash
./debug.sh
```

Observe how each command is displayed before execution.

---

## Related Commands

- `set -e` – Exit the script immediately if a command fails.
- `set +x` – Disable debug mode.
- `bash` – Execute Bash scripts.
- `chmod` – Make scripts executable.
- `echo` – Print text or variables to the terminal.
