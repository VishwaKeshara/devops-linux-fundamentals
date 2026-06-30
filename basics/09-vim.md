# vim Command

## What is `vim`?

`vim` (**Vi IMproved**) is a powerful command-line text editor used to create, edit, and manage text files in Linux. It is the improved version of the original `vi` editor and is widely used by Linux administrators, DevOps engineers, and developers.

---

## Syntax

```bash
vim [FILE_NAME]
```

---

## Basic Usage

### Create a New File

```bash
vim notes.txt
```

If `notes.txt` does not exist, Vim creates a new file.

### Open an Existing File

```bash
vim script.sh
```

Opens the file for editing.

---

## Vim Modes

Vim has different modes for different tasks.

### 1. Normal Mode

This is the default mode when Vim opens.

Use it to:

* Navigate through the file
* Delete lines
* Copy and paste text
* Search text

---

### 2. Insert Mode

Press:

```text
i
```

Now you can type and edit text.

To return to Normal Mode, press:

```text
Esc
```

---

### 3. Command Mode

Press:

```text
:
```

Use this mode to save, quit, search, and execute commands.

---

## Common Commands

| Command | Description             |
| ------- | ----------------------- |
| `i`     | Enter Insert Mode       |
| `Esc`   | Return to Normal Mode   |
| `:w`    | Save the file           |
| `:q`    | Quit Vim                |
| `:wq`   | Save and quit           |
| `:q!`   | Quit without saving     |
| `dd`    | Delete the current line |
| `yy`    | Copy the current line   |
| `p`     | Paste copied text       |
| `/text` | Search for "text"       |
| `u`     | Undo the last change    |

---

## Example

```bash
vim hello.txt
```

Press:

```text
i
```

Type:

```text
Hello Linux!
Welcome to Vim.
```

Press:

```text
Esc
```

Save and exit:

```text
:wq
```

---

## Real-World Use

DevOps engineers frequently use Vim to edit configuration files directly on Linux servers.

Example:

```bash
vim /etc/hosts
```

or

```bash
vim ~/.bashrc
```

or

```bash
vim deploy.sh
```

Since many Linux servers don't have graphical editors installed, Vim is an essential tool for editing files remotely over SSH.

---

## Common Mistakes

### Forgetting to Enter Insert Mode

❌ Start typing immediately.

Nothing happens because Vim starts in **Normal Mode**.

✅ Press:

```text
i
```

before typing.

---

### Forgetting to Save

After editing a file:

Press:

```text
Esc
```

Then:

```text
:w
```

to save your changes.

---

### Unable to Exit Vim

Many beginners don't know how to exit.

Use:

Save and Quit

```text
:wq
```

Quit Without Saving

```text
:q!
```

---

## Tips

* Press `Esc` if you're unsure which mode you're in.
* Learn the basic commands (`i`, `Esc`, `:wq`, `:q!`) first.
* Use `vimtutor` to practice Vim interactively.

Run:

```bash
vimtutor
```

---

## Vim vs Touch

| `touch`                  | `vim`                     |
| ------------------------ | ------------------------- |
| Creates an empty file    | Creates and edits files   |
| Cannot edit content      | Can edit file content     |
| Commonly used in scripts | Interactive text editor   |
| Useful for automation    | Useful for manual editing |

---

## Interview Question

**Q:** What is the difference between `vi` and `vim`?

**A:** `vim` (Vi IMproved) is an enhanced version of `vi` with additional features such as syntax highlighting, undo history, better navigation, and plugin support.

---

**Q:** How do you save and quit a file in Vim?

**A:**

Press:

```text
Esc
```

Then type:

```text
:wq
```

and press **Enter**.

---

## Quick Summary

* `vim` stands for **Vi IMproved**.
* Used to create and edit text files.
* Starts in **Normal Mode**.
* Press `i` to enter **Insert Mode**.
* Press `Esc` to return to **Normal Mode**.
* Use `:wq` to save and quit.
* Use `:q!` to quit without saving.

---

## Practice Exercise

Run the following commands:

```bash
vim practice.txt
```

1. Press `i`
2. Type:

```text
Hello, Linux!
This is my first Vim file.
```

3. Press `Esc`
4. Type:

```text
:wq
```

5. Verify the file contents:

```bash
cat practice.txt
```

### Expected Output

```text
Hello, Linux!
This is my first Vim file.
```
