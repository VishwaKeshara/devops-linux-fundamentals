# cat Command

## What is `cat`?

The `cat` (**Concatenate**) command is used to display, create, and combine the contents of text files in Linux. It is one of the most commonly used commands for viewing file contents directly from the terminal.

---

## Syntax

```bash
cat [OPTIONS] FILE_NAME
```

---

## Basic Usage

### Display File Content

```bash
cat notes.txt
```

Displays the contents of `notes.txt` in the terminal.

---

## Useful Options

### Display Line Numbers

```bash
cat -n notes.txt
```

Displays the file contents with line numbers.

---

### Display Multiple Files

```bash
cat file1.txt file2.txt
```

Displays the contents of both files one after another.

---

### Create a New File

```bash
cat > notes.txt
```

Type your content and press:

```text
Ctrl + D
```

to save and exit.

---

### Append Content to a File

```bash
cat >> notes.txt
```

Adds new content to the end of the existing file without overwriting it.

Press:

```text
Ctrl + D
```

to save.

---

## Example

```bash
touch hello.txt

cat > hello.txt
```

Type:

```text
Hello Linux!
Welcome to DevOps.
```

Press:

```text
Ctrl + D
```

Display the file:

```bash
cat hello.txt
```

Output:

```text
Hello Linux!
Welcome to DevOps.
```

---

## Real-World Use

DevOps engineers often use `cat` to quickly view configuration files, log files, or shell scripts.

Example:

```bash
cat /etc/hosts
```

View a shell script:

```bash
cat deploy.sh
```

View a configuration file:

```bash
cat nginx.conf
```

---

## Common Mistakes

### Using `cat` for Large Files

❌

```bash
cat large.log
```

This may flood the terminal with thousands of lines.

✅ Better

```bash
less large.log
```

or

```bash
head large.log
```

or

```bash
tail large.log
```

---

### Accidentally Overwriting a File

❌

```bash
cat > notes.txt
```

This replaces the existing file contents.

✅ Append instead

```bash
cat >> notes.txt
```

---

### Using `cat` on Binary Files

❌

```bash
cat image.png
```

The output will be unreadable because binary files are not meant to be displayed as text.

---

## Tips

- Use `cat` for small text files.
- Use `less` for large files.
- Combine `cat` with pipes (`|`) to filter output.

Example:

```bash
cat users.txt | grep admin
```

Displays only lines containing the word `admin`.

---

## cat vs vim

| `cat` | `vim` |
|--------|-------|
| Displays file contents | Edits file contents |
| Can create simple files | Full-featured text editor |
| Best for viewing files | Best for editing files |
| Non-interactive | Interactive |

---

## Interview Question

**Q:** What is the purpose of the `cat` command?

**A:** The `cat` command is used to display, create, append, and combine text files in Linux.

---

**Q:** What is the difference between `cat > file` and `cat >> file`?

**A:**

- `cat > file` creates a new file or overwrites an existing file.
- `cat >> file` appends new content to the end of an existing file.

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `cat file.txt` | Display file contents |
| `cat -n file.txt` | Display file contents with line numbers |
| `cat file1 file2` | Display multiple files |
| `cat > file.txt` | Create or overwrite a file |
| `cat >> file.txt` | Append content to a file |

---

## Practice Exercise

Run the following commands:

```bash
touch notes.txt

cat > notes.txt
```

Type:

```text
Linux Fundamentals
DevOps Learning
```

Press:

```text
Ctrl + D
```

Now display the file:

```bash
cat notes.txt
```

### Expected Output

```text
Linux Fundamentals
DevOps Learning
```

---

## Related Commands

- `touch` – Create an empty file.
- `vim` – Create and edit text files.
- `less` – View large files page by page.
- `head` – Display the first lines of a file.
- `tail` – Display the last lines of a file.
