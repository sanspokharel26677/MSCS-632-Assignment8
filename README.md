
# Family Tree Program in Prolog 👨‍👩‍👧‍👦

This project implements a simple **Family Tree System** using the **Prolog** programming language. It defines family relationships using logical rules and facts, and allows the user to query the tree to find relationships such as parents, grandparents, siblings, cousins, and descendants.

## 🧠 Features

- Define basic family relationships (`parent`, `male`, `female`)
- Derive `grandparent`, `sibling`, and `cousin` relationships
- Implement recursive logic to determine `descendant`
- Run logic-based queries using Prolog's inference engine

---

## 📁 File Structure

- `family_tree.pl` – Prolog source code containing facts and rules
- `README.md` – Project documentation
- Report document – Includes implementation write-up and sample query results

---

## ⚙️ How to Install and Run Prolog on macOS

1. **Install Homebrew** (if you don't already have it):
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Install SWI-Prolog** using Homebrew:
    ```bash
    brew install swi-prolog
    ```

3. **Verify Installation**:
    ```bash
    swipl
    ```

    You should enter the Prolog interactive shell.

---

## ▶️ How to Run the Program

1. **Save the file** `family_tree.pl` in your local directory.

2. **Open Terminal** and navigate to that directory:
    ```bash
    cd path/to/your/folder
    ```

3. **Start Prolog**:
    ```bash
    swipl
    ```

4. **Load the program file**:
    ```prolog
    [family_tree].
    ```

5. **Run queries** like:
    ```prolog
    parent(john, X).
    grandparent(john, X).
    descendant(elena, john).
    ```

6. **Exit Prolog**:
    ```prolog
    halt.
    ```

---

## ✅ Example Queries

```prolog
parent(john, X).          % Who are John's children?
grandparent(X, tom).      % Who is the grandparent of Tom?
sibling(mary, mike).      % Are Mary and Mike siblings?
cousin(alice, elena).     % Are Alice and Elena cousins?
descendant(elena, john).  % Is Elena a descendant of John?
```

---

## 📚 References

- [SWI-Prolog Website](https://www.swi-prolog.org)
- Bratko, I. (2012). *Prolog Programming for Artificial Intelligence*.

---

This project was developed as part of the MSCS-632 Advanced Programming Languages course at University of the Cumberlands.
