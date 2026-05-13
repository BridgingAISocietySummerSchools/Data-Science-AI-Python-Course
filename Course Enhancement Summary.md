# Course Enhancement Summary (v3.0 — 2026-05-13)

This document records the most recent full-pass elevation of the course.
It complements `CHANGELOG.md` with a higher-level, narrative view of *what changed and why*.

## Headline numbers

| Metric                                            | Before  | After   | Δ        |
|---------------------------------------------------|---------|---------|----------|
| Total cells across all notebooks                  | 259     | **509** | +250 (~2×) |
| Markdown cells (explanations, intuition)          | ~145    | **311** | +166      |
| Code cells (runnable examples)                    | ~114    | **198** | +84       |
| Notebooks that **run without errors top-to-bottom** | 7 / 10  | **10 / 10** | +3        |
| `### Exercise` blocks                             | ~24     | **48**  | +24       |
| Worked-out solutions                              | 0       | **54**  | +54       |
| "Debug me 🐞" exercises                            | 0       | **9**   | +9        |
| Per-notebook learning-objectives section          | 4 / 10  | **10 / 10** | +6        |
| Per-notebook self-assessment checklist            | 5 / 10  | **10 / 10** | +5        |

## What changed in each notebook

| #   | Notebook                  | Before     | After      | Key improvements                                                                                                  |
|-----|---------------------------|------------|------------|-------------------------------------------------------------------------------------------------------------------|
| 01  | Python Basics             | 36 cells   | 47 cells   | Intuition-first explanations, f-string deep dive, investment portfolio kept, full solutions, debug-me exercise.    |
| 02  | Control Structures        | 51 cells   | 53 cells   | Cleaner flow, decision-tree intuition, scope/while pitfalls, FizzBuzz, robust accumulator pattern.                  |
| 03  | Lists & Sequences         | 39 cells   | 54 cells   | Visual slicing diagram, list comprehensions, tuples, nested lists, aliasing pitfall.                               |
| 04  | Dictionaries              | 31 cells   | 43 cells   | JSON connection, list-of-dicts as tables, `Counter` / `defaultdict`, sorting by lambda.                            |
| 05  | Pandas Preview            | **15 cells (broken)** | 53 cells   | **Fixed runtime bug** (missing DataFrame), full DataFrame tour, groupby, pivot_table, built-in plotting. |
| 06  | Functions and Modules     | 14 cells   | 48 cells   | Defaults, `*args` / `**kwargs`, scope, mutable-default trap, docstrings, type hints, lambdas, imports.             |
| 07  | NumPy Fundamentals        | **6 cells**| 49 cells   | Now a full chapter: shape, dtype, slicing, vectorisation, **broadcasting** with intuition, axis aggregations.      |
| 08  | Matplotlib Basics         | **8 cells (broken cell order)** | 51 cells | Rebuilt around Figure/Axes model; line, scatter, bar, hist, box, heatmap, annotations, dashboard.        |
| 09  | Scikit-Learn Basics       | 39 cells   | 67 cells   | **Replaced deprecated `load_boston`** with California Housing; pipelines, `GridSearchCV`, full ML workflow.        |
| 10  | Capstone (Weather)        | 20 cells   | 44 cells   | Full story arc with dashboard + per-city regression + Simpson\'s paradox insight + executive-summary exercise.     |

## Headline didactic improvements

1. **Intuition before syntax.** Each section now opens with a one-paragraph
   *why* (often with an ASCII diagram or analogy) before showing the code.
2. **Modular notebook template.** Every notebook starts with a header that
   states module, time, difficulty, learning objectives, and prerequisites;
   and closes with key takeaways, a self-assessment checklist, and a
   pointer to the next step.
3. **Solutions everywhere.** Every exercise has a complete solution in a
   collapsible `<details>` block, written to *teach the reasoning*, not
   just dump code.
4. **"Debug me 🐞" exercises.** Every notebook contains at least one
   intentionally-broken cell so students practice reading and fixing code —
   a critical skill no amount of "happy path" examples can teach.
5. **Mini-projects.** Each notebook ends with an integration project that
   combines the lesson\'s concepts (compound interest table, grade
   analyser, comfort-index, climate similarity, ...).

## Headline technical improvements

- **Modern scikit-learn API** used everywhere (`Pipeline`, `train_test_split(stratify=)`, `GridSearchCV`, `fetch_california_housing`).
- **Modern NumPy randomness** (`np.random.default_rng(seed)`).
- **Reproducible seeds** in every notebook.
- **Clean kernel metadata**, `kernelspec` normalised to `python3`.
- **Outputs stripped** so git diffs stay readable.
- **Notebooks execute top-to-bottom** in a fresh kernel — verified with `nbclient`.

## Headline visual improvements

- Consistent plot styling across all notebooks: same palette
  (`#4C72B0 / #DD8452 / #55A467 / #C44E52 / #8172B2`), `grid.alpha=0.3`,
  removed top/right spines.
- Multi-panel **dashboards** in Notebooks 5, 8, and 10.
- Heatmap correlation matrix in Notebook 8.
- Per-city regression overlay + similarity heatmap in Notebook 10.
- ASCII conceptual diagrams in markdown for: f-string formatting,
  list slicing semantics, scope, broadcasting, Figure/Axes anatomy,
  the ML workflow, and the learning path.

## Repository-level improvements

- `README.md` rewritten: clearer learning-path diagram, time budget,
  audience description, troubleshooting, modern dependencies.
- `requirements.txt` modernised (`numpy ≥ 1.24`, `pandas ≥ 2.0`,
  `matplotlib ≥ 3.7`, `scikit-learn ≥ 1.3`); dev tools moved to
  `requirements-dev.txt`.
- `CHANGELOG.md` updated with a comprehensive `[3.0.0]` entry.

## Known remaining limitations / future work

- **No interactive widgets yet.** A future pass could add `ipywidgets`-driven
  exploratory cells.
- **No video walkthroughs.** Course is text-only.
- **Single dataset per notebook.** A future enhancement could provide
  parallel "alternative dataset" exercises to vary the practice.
- **No unit-test scaffolding** for student answers. Currently solutions
  are shown but not auto-graded.
- **Notebook 9 grid search** is intentionally tiny (`cv=2`, 4 combos) to
  keep total runtime manageable on free Colab — feel free to expand it
  on a faster machine.

---

*Generated 2026-05-13 during the v3.0 educational-quality elevation pass.*
