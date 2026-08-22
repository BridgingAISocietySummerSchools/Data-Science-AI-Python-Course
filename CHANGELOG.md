# Changelog 📝

All notable changes to the Python for Data Science Workshop will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Comprehensive documentation structure
- Development dependencies file
- Contributing guidelines
- MIT License

## [5.0.0] - 2026-08-22

A **curriculum restructure**: the two tracks are now clearly differentiated by purpose —
Track 1 is the *minimum common foundation* taught live in 90 minutes, Track 2 is the
*depth*, extended into machine learning and deep learning.

### Added ✨
- **Track 1 is now a five-notebook guided tour** of the whole Python/Data-Science
  ecosystem, sized honestly for a 90-minute session including questions:
  `01_welcome_to_python` (~15 min) → `02_data_structures` (~18 min) →
  `03_control_flow` (~12 min) → `04_functions` (~12 min) → `05_pandas_intro` (~18 min).
  Two of these are new: **`02_data_structures.ipynb`** (lists, tuples, dictionaries,
  and the list-of-dicts "table" shape) and **`04_functions.ipynb`** (functions as their
  own topic, motivated by felt copy-paste pain).
- **Four new Track 2 notebooks**, filling the real gaps in the arc:
  - `08_data_cleaning_preprocessing.ipynb` — missing values, dtypes, duplicates,
    inconsistent categories, outliers, scaling and encoding.
  - `10_exploratory_data_analysis.ipynb` — the EDA workflow on a real bundled dataset.
  - `11_machine_learning_basics.ipynb` — the conceptual on-ramp: supervised vs
    unsupervised, features/target, train/test, the workflow loop, evaluation metrics,
    and overfitting demonstrated with train/test score curves.
  - `13_pytorch_basics.ipynb` — tensors, autograd, a small neural network, and the
    training loop written by hand.
- **"🔗 Building on Track 1" notes** in every Track 2 notebook whose topic appears in
  the live session, stating what is recap and what is new — so returning students can
  skip ahead and cold starters know they are not missing a prerequisite.
- `torch >= 2.0` added to `requirements.txt` (Track 2 notebook 13 only; preinstalled
  in Google Colab).

### Changed 🔄
- **Track 1 rebalanced.** `01_welcome_to_python` was cut from ~35 to ~15 minutes (lists
  moved to the new data-structures notebook); `02_control_flow_essentials` became
  `03_control_flow.ipynb` — functions moved out into their own notebook and `while`
  loops were added; `03_first_data_analysis` became `05_pandas_intro.ipynb`, gaining
  `pd.read_csv()`, `.shape`/`.info()` inspection and a computed column.
- **Track 2 renumbered into a logical progression** (14 notebooks). Functions now come
  before NumPy and pandas; pandas is followed immediately by cleaning, visualisation
  and EDA; the ML concepts notebook precedes the practical scikit-learn workflow:
  `05_pandas_preview` → `07_pandas_essentials`, `06_functions_modules` →
  `05_functions_and_modules`, `07_numpy_fundamentals` → `06_numpy_fundamentals`,
  `08_matplotlib_basics` → `09_visualization_matplotlib`, `09_scikit_learn_basics` →
  `12_scikit_learn_workflow`, `10_capstone_project` → `14_capstone_project`.
- `12_scikit_learn_workflow` repositioned as the *practical workflow* notebook now that
  the concepts live in notebook 11.
- All READMEs rewritten around the two-track design principle, with Colab badges for
  all 19 notebooks and the summer-school brand applied (lapis-blue `#416bcc` accent,
  logo lockup with light/dark cuts).

## [4.0.0] - 2026-08-22

Restructured the course into **two tracks** for the Bridging AI & Society Summer Schools.

### Added ✨
- **`01_introduction/`** — a new 90-minute, instructor-led **Introduction Session** for
  complete beginners, with three purpose-built notebooks:
  `01_welcome_to_python.ipynb`, `02_control_flow_essentials.ipynb`,
  `03_first_data_analysis.ipynb`. Includes live-session "🎯 Try it" micro-exercises
  and "💬 Discuss" prompts connecting code to AI & society questions.
- Per-track `README.md` files: a session plan with timings and instructor notes for
  the introduction, and a learning-path overview for the advanced track.
- **"Open in Colab" badge in the first cell of every notebook**, plus a
  "Working in Google Colab" guide in the root README (save-a-copy-in-Drive,
  Run-all, restart tips).
- **Colab "Run all" safety**: no notebook cell raises an uncaught error —
  intentional "Debug me 🐞" bugs are commented out until deliberately uncommented.

### Changed 🔄
- The ten existing notebooks moved to **`02_advanced_self_learning/`** — the
  self-paced **Advanced & Self-Learning** track (filenames unchanged).
- Every advanced notebook received a refinement pass: track naming in headers,
  corrected next-step pointers, typo/factual fixes, deprecation checks, and a
  verified top-to-bottom execution.
- Root `README.md` rewritten around the two-track structure, with summer-school
  framing and updated Colab links.

### Removed 🗑️
- Outdated meta-documents superseded by the new structure:
  `Course Enhancement Summary.md`, `Python for Data Science - 3 Hour Beginner Course.md`,
  `README_COMPREHENSIVE.md` (all recoverable from git history).

## [3.0.0] - 2026-05-13

A **complete elevation pass** focusing on didactic quality, technical robustness,
visual polish, and professional presentation. Every notebook was rebuilt from
the ground up while preserving filenames and the overall curriculum order.

### Added ✨
- **Modern, modular structure** for every notebook: title block with module
  badge, time estimate, difficulty, learning objectives, prerequisites,
  intuition-first sections, applied example, exercises with full solutions,
  key takeaways and self-assessment checklist.
- **"Debug me 🐞" exercise** in every notebook — students learn to read and fix
  broken code, which is a core skill the original course was missing.
- **Detailed solutions** (collapsed in `<details>` HTML blocks) for every
  exercise, explaining the *reasoning*, not just the code.
- **Mini-projects** at the end of each notebook (compound interest, grade
  analyser, dashboard, etc.) for integration practice.
- **Conceptual diagrams** in markdown (figure/axes anatomy, broadcasting,
  scope, split→apply→combine, ML workflow).
- **NumPy notebook**: previously 6 cells, now a full lesson covering arrays,
  shape, dtypes, indexing, slicing, vectorisation, broadcasting, axes,
  reshape/stack/split, reproducible randomness, and an applied example.
- **Matplotlib notebook**: previously 8 cells, now a structured tour through
  the Figure/Axes model, line/scatter/bar/hist/box/heatmap charts,
  subplots, annotations, and a debugging exercise.
- **Pandas Preview notebook**: previously broken (referenced `df` without
  defining it), now a coherent first DataFrame tutorial with reading from
  CSV-strings, filtering, groupby, pivot_table, and a built-in `.plot()`
  demonstration.
- **Functions notebook**: previously 14 cells, now a full lesson covering
  parameters, defaults, *args/**kwargs, scope, mutable-default pitfall,
  docstrings, type hints, lambdas, imports, plus a modular data-cleaning
  example.
- **Capstone project**: now a true end-to-end story (data → EDA → dashboard
  → regression → executive summary) demonstrating Simpson\'s paradox via
  per-city slopes.
- **Random seeds** everywhere for reproducibility (`np.random.default_rng(42)`).
- **Colab-friendly setup** in every notebook.

### Fixed 🐛
- **Notebook 9 used the deprecated `load_boston`** dataset, which was removed
  from scikit-learn ≥ 1.2 — replaced with `fetch_california_housing`.
- **Notebook 5 referenced `df` without defining a DataFrame** — fully fixed.
- **Notebook 6** title mismatch ("Notebook 5") corrected.
- **Notebook 7** title mismatch ("Notebook 6") corrected.
- **Notebook 8** had **cells out of order** and duplicated imports — rebuilt
  with a logical teaching arc.
- All notebooks now **execute top-to-bottom** in a fresh kernel without
  errors (verified with `nbclient`).
- Updated **scikit-learn API usage** (`fit/predict/score`, `Pipeline`,
  `StandardScaler`, `GridSearchCV`, `train_test_split(stratify=)`).

### Changed 🔄
- README rewritten for clarity and professional presentation, with a
  module-grouped table of contents, learning-path diagram, dependency table,
  and troubleshooting section.
- `requirements.txt` modernised: bumped to `numpy ≥ 1.24`, `pandas ≥ 2.0`,
  `matplotlib ≥ 3.7`, `scikit-learn ≥ 1.3`; removed dev tools.
- Notebook kernel metadata cleaned up; output cells stripped for clean
  diffs.
- Uniform plot styling (matched palette, removed top/right spines, light
  grid) across every chart in the course.

### Removed 🗑️
- `plotly` removed from the main dependency list (kept as optional).
- `black` and `flake8` moved to `requirements-dev.txt` only.

## [2.0.0] - 2024-12-19

### Added ✨
- **Renumbered notebook structure** (01-09) for better organization
- **Investment portfolio analysis** in Python basics notebook
- **Enhanced pandas preview** with real-world data examples
- **Mini-challenges** throughout all notebooks for interactive learning
- **Self-assessment checklists** at the end of each notebook
- **Comprehensive README** with badges, installation instructions, and professional formatting
- **Troubleshooting section** with common issues and solutions
- **Hardware requirements** table for optimal performance
- **Project structure visualization** with emojis and descriptions
- **Course enhancement summary** documenting all improvements

### Changed 🔄
- **Notebook naming convention**: From mixed numbering to consistent 01-09 format
  - `04.5_pandas_preview.ipynb` → `05_pandas_preview.ipynb`
  - All subsequent notebooks renumbered accordingly
- **Enhanced capstone project** with more comprehensive analysis requirements
- **Improved code comments** and explanations throughout all notebooks
- **Updated README.md** to reflect new structure and highlight course features
- **Modernized setup.sh** script with better error handling

### Enhanced 🚀
- **Python basics notebook** now includes:
  - Investment portfolio calculation examples
  - Real-world data analysis scenarios
  - Interactive coding exercises
- **Pandas preview** expanded with:
  - Data cleaning examples
  - Visualization integration
  - Performance optimization tips
- **All notebooks** now feature:
  - Learning objectives at the beginning
  - Progress checkpoints throughout
  - Summary and next steps at the end

### Documentation 📚
- **README_COMPREHENSIVE.md**: Professional-grade documentation with:
  - GitHub badges and shields
  - Detailed installation instructions
  - Hardware requirements table
  - Troubleshooting guide
  - Performance benchmarks
  - Contributing guidelines
- **Updated course description** files to match new structure
- **Enhanced markdown formatting** throughout all documentation

### Technical Improvements 🔧
- **Consistent code style** across all notebooks
- **Improved error handling** in example code
- **Better data visualization** examples
- **Enhanced code documentation** with inline comments
- **Optimized notebook performance** for better user experience

## [1.0.0] - 2024-01-01

### Added
- Initial course structure with 8 notebooks
- Basic Python programming concepts
- Data science fundamentals
- NumPy and Pandas introduction
- Matplotlib visualization basics
- Capstone project framework
- Requirements.txt with essential packages
- Basic setup script

### Features
- **01_python_basics.ipynb**: Variables, data types, basic operations
- **02_control_structures.ipynb**: If statements, loops, conditions
- **03_lists_data_structures.ipynb**: Lists, tuples, sets
- **04_dictionaries_advanced.ipynb**: Dictionaries and advanced concepts
- **04.5_pandas_preview.ipynb**: Early introduction to Pandas
- **05_functions_modules.ipynb**: Function definition and modules
- **06_numpy_fundamentals.ipynb**: Array operations and mathematics
- **07_matplotlib_basics.ipynb**: Data visualization
- **08_capstone_project.ipynb**: Comprehensive final project

---

## Version History Summary

| Version | Release Date | Major Changes |
|---------|-------------|---------------|
| 3.0.0   | 2026-05-13  | Full educational rewrite: didactic restructuring, every notebook rebuilt, bug fixes, modern sklearn, polished visuals, complete solutions |
| 2.0.0   | 2024-12-19  | Complete restructure, enhanced content, professional documentation |
| 1.0.0   | 2024-01-01  | Initial release with core curriculum |

## Upcoming Features 🔮

### Planned for v2.1.0
- [ ] Interactive widgets for better engagement
- [ ] Additional datasets for practice
- [ ] Video tutorial links
- [ ] Advanced machine learning preview
- [ ] Cloud deployment examples

### Planned for v3.0.0
- [ ] Advanced data science topics
- [ ] Deep learning introduction
- [ ] API integration examples
- [ ] Database connectivity
- [ ] Production deployment guide

## Contributors 👥

Thanks to all contributors who helped make this course better:
- Course maintainers and developers
- Community contributors
- Beta testers and feedback providers

---

*For detailed information about any release, check the commit history and pull requests.*
