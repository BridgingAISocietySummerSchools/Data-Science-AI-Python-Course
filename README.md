<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/BridgingAISocietySummerSchools/.github/main/assets/logo-lockup-on-dark.svg">
  <img src="https://raw.githubusercontent.com/BridgingAISocietySummerSchools/.github/main/assets/logo-lockup.svg" alt="Bridging AI & Society Summer Schools" width="360">
</picture>

# Python for Data Science Workshop

[![Python Version](https://img.shields.io/badge/python-3.10%2B-416bcc)](https://python.org)
[![Jupyter](https://img.shields.io/badge/jupyter-notebook-416bcc)](https://jupyter.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-416bcc.svg)](LICENSE)
[![Difficulty](https://img.shields.io/badge/level-beginner%20%E2%86%92%20intermediate-416bcc)](#%EF%B8%8F-course-structure-two-tracks)
[![Summer School](https://img.shields.io/badge/Bridging%20AI%20%26%20Society-Summer%20Schools-1c2025)](https://bridgingaiandsociety.org)

> **The official Python workshop of the [Bridging AI & Society Summer Schools](https://bridgingaiandsociety.org).**
> A **90-minute live introduction** that gives everyone a common foundation, and a **14-notebook self-learning track** that takes you from *"What's a variable?"* all the way to machine learning and your first neural network.

---

## 🌍 Part of the Bridging AI & Society Summer Schools

This course is one building block of the [Bridging AI & Society Summer Schools](https://bridgingaiandsociety.org) ([GitHub](https://github.com/BridgingAISocietySummerSchools)) — open, interdisciplinary teaching materials that connect the technical foundations of machine learning with the societal implications of AI. Participants come from many academic backgrounds, and **no coding experience is assumed**.

The materials follow three principles:

1. **Accessibility** — intuition-first explanations instead of assumed knowledge.
2. **Active learning** — interaction, experimentation, and discussion instead of passive lectures.
3. **Societal context** — technical concepts connected to real-world and ethical questions.

After this Python course, the natural next step is the [Hands-On-Notebooks](https://github.com/BridgingAISocietySummerSchools/Hands-On-Notebooks) collection on machine-learning models.

---

## 🗺️ Course structure: two tracks

| Track | Format | Duration | Purpose |
|-------|--------|----------|---------|
| **[1 — Introduction Session](01_introduction/)** | Live, instructor-led | **90 minutes** (incl. questions) | The **minimum common foundation** — a guided tour of the whole Python/Data-Science ecosystem |
| **[2 — Advanced & Self-Learning](02_advanced_self_learning/)** | Self-paced | **~10–13 hours** | The **depth** — every Track 1 topic in detail, then cleaning, EDA, machine learning, and PyTorch |

The design principle: **Track 1 establishes the foundation, Track 2 provides the depth.** Track 1 deliberately stops short of detail so it genuinely fits 90 minutes with room for discussion; Track 2 revisits each topic properly and keeps going.

### 🐣 Track 1 — Introduction Session (90 minutes, live)

Five short notebooks, ~75 minutes of content plus ~15 minutes of questions and discussion. Every notebook opens directly in Google Colab — **no installation needed**.

| # | Notebook | Time | Covers |
|---|----------|------|--------|
| 1 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/01_introduction/01_welcome_to_python.ipynb) **Welcome to Python** | ~15 min | What Python is and why it matters for Data Science & AI; notebooks; basic syntax; variables; data types; arithmetic; f-strings |
| 2 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/01_introduction/02_data_structures.ipynb) **Data Structures** | ~18 min | Lists, tuples/sequences, dictionaries — what each is for and basic operations |
| 3 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/01_introduction/03_control_flow.ipynb) **Control Flow** | ~12 min | `if / elif / else`, `for` loops, `while` loops — short and conceptual |
| 4 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/01_introduction/04_functions.ipynb) **Functions** | ~12 min | What functions are, defining and calling, parameters, return values, structuring code |
| 5 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/01_introduction/05_pandas_intro.ipynb) **First Steps with Pandas** | ~18 min | DataFrames, loading tabular data, inspection, selecting/filtering, simple manipulation, a first chart |

👉 Session plan with timings and instructor notes: [`01_introduction/README.md`](01_introduction/README.md)

### 🚀 Track 2 — Advanced & Self-Learning (self-paced)

Fourteen notebooks that build directly on Track 1 and go substantially deeper.

**🧱 Python Fundamentals — in depth**

| # | Notebook | Time |
|---|----------|------|
| 1 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/01_python_basics.ipynb) **Python Basics** — types, conversion pitfalls, rounding, float precision | 30–35 min |
| 2 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/02_control_structures.ipynb) **Control Structures** — loops in depth, convergence, `break/continue`, `try/except` | 35–40 min |
| 3 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/03_lists_data_structures.ipynb) **Lists and Sequences** — slicing, comprehensions, `zip`, tuples, aliasing | 30–40 min |
| 4 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/04_dictionaries_advanced.ipynb) **Dictionaries and Nested Data** — nested structures, counting, JSON | 30–35 min |
| 5 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/05_functions_and_modules.ipynb) **Functions and Modules** — `return` vs `print`, `*args`/`**kwargs`, scope, imports | 35–40 min |

**🧰 Data Science Toolkit**

| # | Notebook | Time |
|---|----------|------|
| 6 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/06_numpy_fundamentals.ipynb) **NumPy Fundamentals** — arrays, vectorisation, broadcasting, axes | 30–40 min |
| 7 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/07_pandas_essentials.ipynb) **Pandas Essentials** — `loc`/`iloc`, boolean masks, `groupby` | 30–40 min |
| 8 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/08_data_cleaning_preprocessing.ipynb) **Data Cleaning and Preprocessing** — missing values, dtypes, duplicates, outliers, scaling, encoding | 45–55 min |
| 9 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/09_visualization_matplotlib.ipynb) **Visualisation with Matplotlib** — Figure/Axes, choosing the right chart, subplots | 35–45 min |
| 10 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/10_exploratory_data_analysis.ipynb) **Exploratory Data Analysis** — the EDA workflow on a real dataset | 50–60 min |

**🤖 Machine Learning & Deep Learning**

| # | Notebook | Time |
|---|----------|------|
| 11 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/11_machine_learning_basics.ipynb) **Machine Learning Basics** — supervised vs unsupervised, features/target, train/test, evaluation, overfitting | 45–55 min |
| 12 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/12_scikit_learn_workflow.ipynb) **The Scikit-Learn Workflow** — classification, regression, pipelines, `GridSearchCV` | 60–75 min |
| 13 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/13_pytorch_basics.ipynb) **PyTorch Basics** — tensors, autograd, a small neural network, the training loop | 45–55 min |

**🏆 Capstone**

| # | Notebook | Time |
|---|----------|------|
| 14 | [![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop/blob/main/02_advanced_self_learning/14_capstone_project.ipynb) **Capstone Project** — a full end-to-end analysis | 60–90 min |

👉 Track overview and learning path: [`02_advanced_self_learning/README.md`](02_advanced_self_learning/README.md)

---

## ☁️ Working in Google Colab

Every notebook is **fully Colab-ready**: no installation, no downloads, no local files — all data is generated in the notebooks or loaded from libraries, and everything used comes pre-installed in Colab (including PyTorch).

- **Open**: click any *Open in Colab* badge above, in the track READMEs, or in the **first cell of every notebook**.
- **Save your work**: Colab opens the notebook read-only from GitHub. Click **File → Save a copy in Drive** once at the start to keep your changes and solutions.
- **Run everything**: **Runtime → Run all** works in every notebook — no cell raises an error (even the *"Debug me 🐞"* exercises are safely commented out until you deliberately uncomment them).
- **Start fresh**: **Runtime → Restart session and run all** gives you a clean slate.

---

## 🎯 Who this course is for

Designed for **complete beginners** who want to use Python specifically for data science, machine learning, and analytical work — not generic application development.

- A summer-school participant from a non-technical field who wants to *understand AI by building it*.
- A business professional moving from spreadsheets to code.
- A student in a quantitative field (statistics, economics, biology, physics, social science).
- A researcher who wants to script analyses instead of clicking through dropdowns.
- A career-switcher targeting data analyst / data scientist / ML engineer roles.

**Prerequisites:** none. A laptop, a browser, and curiosity are enough.

## 🌟 What makes this course different?

**🎯 Data-science focused from day one.** Every concept connects to real workflows. List slicing is taught as `X[0:3]` — the same syntax you'll meet in scikit-learn. Dictionaries are taught as the JSON-shaped records you'll get from every API.

**🧠 Intuition before syntax.** Each section opens with *why* a concept matters before showing *how* it works — analogies, diagrams, mental models.

**🎓 Two tracks, one arc.** A live session that fits a real timetable, and a self-study track that goes properly deep. Track 2 notebooks open with a "🔗 Building on Track 1" note, so returning students know what is recap and newcomers know they are not missing anything.

**💬 Discussion built in.** Following the summer-school philosophy, the introduction notebooks include short discussion prompts connecting code to questions about data and society.

**💡 Exercises with full solutions.** Every notebook has exercises — including *"Debug me 🐞"* challenges — and every exercise has a detailed solution explaining the *reasoning*, not just the code.

## 📚 Learning objectives

After **Track 1** you will be able to read and write simple Python, use lists/tuples/dictionaries, write conditionals, loops and functions, and load, inspect and filter a dataset with pandas.

After **Track 2** you will additionally be able to:

- Write clean, idiomatic Python with comprehensions, robust error handling, and well-structured functions.
- Manipulate numerical data with **NumPy** and tabular data with **pandas**.
- **Clean and preprocess** messy real-world data — missing values, wrong dtypes, duplicates, outliers, encoding, scaling.
- Build clear, publication-quality **visualisations** and run a disciplined **exploratory data analysis**.
- Explain the core **machine-learning** concepts and apply the full workflow in **scikit-learn** — split, fit, evaluate, tune — without the classic beginner mistakes.
- Build and train a small neural network in **PyTorch**, and explain what the training loop does.
- Communicate findings through a dashboard and a short executive summary.

## ▶️ Getting started

### Option A — Google Colab (recommended, 0 setup)

Click any of the **Open in Colab** badges above. Sign in with a Google account. That's it.

### Option B — Run locally

```bash
# clone the repo
git clone https://github.com/BridgingAISocietySummerSchools/Python-for-Data-Science-Workshop.git
cd Python-for-Data-Science-Workshop

# either: one-shot setup script
./setup.sh

# or: manual venv
python3 -m venv venv
source venv/bin/activate          # Windows: venv\Scripts\activate
pip install -r requirements.txt
jupyter notebook
```

Start with `01_introduction/01_welcome_to_python.ipynb`, or jump into Track 2 if you already know some Python.

## 🗂️ Repository layout

```
📁 Python-for-Data-Science-Workshop/
├── 📁 01_introduction/                     # Track 1 — 90-minute live session
│   ├── 📄 README.md                        #   Session plan + instructor notes
│   ├── 📓 01_welcome_to_python.ipynb
│   ├── 📓 02_data_structures.ipynb
│   ├── 📓 03_control_flow.ipynb
│   ├── 📓 04_functions.ipynb
│   └── 📓 05_pandas_intro.ipynb
├── 📁 02_advanced_self_learning/           # Track 2 — 14 self-paced notebooks
│   ├── 📄 README.md                        #   Track overview + learning path
│   ├── 📓 01_python_basics.ipynb           #   … through …
│   └── 📓 14_capstone_project.ipynb        #   End-to-end capstone
├── 📄 README.md                            # ← you are here
├── 📄 Python Data Science Cheat Sheet.md   # Quick syntax reference
├── 📄 CHANGELOG.md                         # Version history
├── 📄 CONTRIBUTING.md                      # How to contribute
├── 📄 requirements.txt                     # Python dependencies
├── 📄 requirements-dev.txt                 # Dev-only dependencies
└── 🛠️ setup.sh                             # One-shot local setup
```

## 🧯 Troubleshooting

**Imports fail in Colab.** Almost never happens — Colab has the full stack, PyTorch included. If it does, run `!pip install <package>` in a fresh cell.

**Matplotlib plots don't show locally.** Make sure you're running a Jupyter notebook (not a `.py` file). In some setups you may need `%matplotlib inline` in the first cell.

**Jupyter won't start locally.** `pip install --upgrade jupyter` usually fixes it. Fresh venv: `rm -rf venv && python3 -m venv venv && source venv/bin/activate && pip install -r requirements.txt`.

**PyTorch is slow to install locally.** It is a large package. If you only want the PyTorch notebook, running it in Colab is far quicker — PyTorch is already there.

## 📦 Dependencies

The full list lives in [`requirements.txt`](requirements.txt). The pinned core:

- `numpy ≥ 1.24`
- `pandas ≥ 2.0`
- `matplotlib ≥ 3.7`
- `scikit-learn ≥ 1.3`
- `torch ≥ 2.0`  (Track 2, notebook 13 only)
- `scipy ≥ 1.10`
- `jupyter ≥ 1.0`

Python **3.10 or newer** is recommended (we use PEP 604 union types).

## 📚 Further reading

- 📘 [Official Python tutorial](https://docs.python.org/3/tutorial/)
- 🔢 [NumPy user guide](https://numpy.org/doc/stable/user/)
- 🐼 [Pandas getting-started](https://pandas.pydata.org/getting_started.html)
- 📊 [Matplotlib tutorials](https://matplotlib.org/stable/tutorials/)
- 🤖 [Scikit-learn user guide](https://scikit-learn.org/stable/user_guide.html)
- 🔥 [PyTorch tutorials](https://pytorch.org/tutorials/)
- 🏆 [Kaggle Learn](https://www.kaggle.com/learn) — free, project-based DS courses
- 📖 [Hands-On Machine Learning](https://www.oreilly.com/library/view/hands-on-machine-learning/9781492032632/) — A. Géron, the gold-standard book

📰 **Related reading:** [Learn Python for Data Science](https://medium.com/@christoph.j.weisser28/learn-python-a-course-designed-specifically-for-data-science-and-ai-f5a3ed1de719)

---

## 🤝 Contributing

We welcome contributions! Check [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines. Found a typo, a bug, or a clearer way to explain something? Open an issue or a PR.

## 📄 License

MIT — see [LICENSE](LICENSE).

---

*Every expert was once a beginner. The only difference is they started.*

**Welcome — and have fun. What will you build with your data-science skills? 🚀**

<div align="center">

**Made with ❤️ for the [Bridging AI & Society Summer Schools](https://bridgingaiandsociety.org)**

[⬆ Back to top](#python-for-data-science-workshop)

</div>
