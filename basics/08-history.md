# history Command

## What is `history`?

The `history` command displays a list of previously executed commands in the current user's shell session. It helps users review, reuse, and manage command history, making it easier to repeat or troubleshoot previous commands.

---

## Syntax

```bash
history
```

---

## Basic Usage

### Display Command History

```bash
history
```

Displays all previously executed commands.

Example Output:

```text
1  pwd
2  ls
3  mkdir Linux
4  cd Linux
5  touch notes.txt
6  vim notes.txt
7  history
```

---

## Useful Options

### Display the Last 10 Commands

```bash
history 10
```

Shows only the last 10 executed commands.

---

### Clear Command History

```bash
history -c
```

Clears the current shell's command history.

> **Note:** This clears the in-memory history for the current shell session.

---

### Write Current History to the History File

```bash
history -w
```

Writes the current session's command history to the history file (usually `~/.bash_history`).

---

## Reuse Previous Commands

### Execute the Previous Command

```bash
!!
```

Runs the last executed command again.

---

### Execute a Command by Number

Suppose your history contains:

```text
25  ls -l
26  pwd
27  mkdir DevOps
```

Run command **27** again:

```bash
!27
```

---

### Search Command History

Press:

```text
Ctrl + R
```

Then start typing part of a previous command.

Example:

```text
docker
```

The shell searches your command history for matching commands.

Press:

```text
Enter
```

to execute the selected command.

---

## Example

```bash
pwd

ls

mkdir Linux

history
```

Output:

```text
15  pwd
16  ls
17  mkdir Linux
18  history
```

---

## Real-World Use

DevOps engineers frequently use `history` to:

- Review previously executed commands
- Repeat long commands
- Troubleshoot configuration changes
- Recall AWS CLI, Docker, Git, or Kubernetes commands

Example:

```bash
history | grep aws
```

Displays only previously executed AWS CLI commands.

Another example:

```bash
history | grep docker
```

Displays Docker-related commands.

---

## Common Mistakes

### Assuming History is Shared Between All Users

Each Linux user has their own command history.

User A cannot see User B's history unless they have appropriate permissions.

---

### Clearing History Permanently

```bash
history -c
```

Only clears the current shell's history.

To remove the saved history file as well:

```bash
history -c
history -w
```

---

### Forgetting About Sensitive Commands

Avoid entering passwords directly in commands because they may be saved in your history.

❌

```bash
mysql -u root -pMyPassword
```

Use safer authentication methods whenever possible.

---

## Tips

- Use `Ctrl + R` for quick command searches.
- Use `history | grep keyword` to find specific commands.
- Use `!!` to repeat the previous command.
- Regularly review your history while learning Linux.

---

## Interview Question

**Q:** What is the purpose of the `history` command?

**A:** The `history` command displays a list of previously executed commands, allowing users to review, search, and reuse command history.

---

**Q:** How do you search command history?

**A:**

Use:

```text
Ctrl + R
```

or

```bash
history | grep keyword
```

---

## Quick Summary

| Command | Description |
|---------|-------------|
| `history` | Display command history |
| `history 10` | Display the last 10 commands |
| `history -c` | Clear command history |
| `history -w` | Save history to the history file |
| `!!` | Execute the previous command |
| `!number` | Execute a command by its history number |
| `Ctrl + R` | Search command history interactively |

---

## Practice Exercise

Run the following commands:

```bash
pwd

ls

mkdir Linux

touch notes.txt

history
```

Now search for the `mkdir` command:

```bash
history | grep mkdir
```

Expected Output:

```text
23  mkdir Linux
```

---

## Related Commands

- `pwd` – Display the current working directory.
- `ls` – List files and directories.
- `grep` – Search for patterns in text.
- `clear` – Clear the terminal screen.
- `bash` – The Bourne Again Shell that maintains command history.
