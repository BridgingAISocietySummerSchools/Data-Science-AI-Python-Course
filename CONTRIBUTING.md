# Contributing to Python Data Science Course 🤝

We welcome contributions to make this course even better! Here's how you can help:

## 📋 Types of Contributions

### 🐛 Bug Reports
- Found an error in a notebook? Report it!
- Include the notebook name and cell number
- Describe what you expected vs. what happened

### 💡 Content Improvements
- Suggest new examples or exercises
- Improve explanations or add clarifications
- Fix typos or formatting issues

### 🆕 New Features
- Propose new mini-challenges
- Suggest additional datasets for practice
- Add new visualization examples

## 🚀 Getting Started

### Prerequisites
- Python 3.8 or higher
- Git installed on your machine
- Jupyter Notebook/Lab

### Setting Up Development Environment

1. **Fork the repository**
   ```bash
   # Click the "Fork" button on GitHub, then clone your fork
   git clone https://github.com/YOUR_USERNAME/Data-Science-AI-Python-Course.git
   cd Data-Science-AI-Python-Course
   ```

2. **Set up virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   pip install -r requirements-dev.txt
   ```

4. **Run setup script**
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

## 📝 Contribution Guidelines

### Code Style
- Follow PEP 8 for Python code
- Use clear, descriptive variable names
- Add comments to explain complex concepts
- Keep cells focused and not too long

### Notebook Guidelines
- Start each notebook with a clear introduction
- Include learning objectives
- Add mini-challenges throughout
- End with a summary and next steps
- Test all code cells before submitting

### Documentation
- Update README.md if adding new features
- Document any new dependencies
- Include examples for new functionality

## 🔄 Submission Process

1. **Create a new branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**
   - Edit notebooks using Jupyter
   - Test all code thoroughly
   - Update documentation as needed

3. **Commit your changes**
   ```bash
   git add .
   git commit -m "Add: Clear description of your changes"
   ```

4. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Fill out the template (see below)

## 📋 Pull Request Template

```markdown
## Description
Brief description of what this PR does.

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement
- [ ] Code refactoring

## Testing
- [ ] All notebooks run without errors
- [ ] New code includes appropriate comments
- [ ] Documentation updated (if needed)

## Screenshots (if applicable)
Add screenshots of new visualizations or outputs.

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] No merge conflicts
```

## 🧪 Testing Your Changes

Before submitting, please:

1. **Run all notebooks**
   ```bash
   jupyter nbconvert --to notebook --execute 01_introduction/*.ipynb 02_advanced_self_learning/*.ipynb
   ```

2. **Check code quality**
   ```bash
   black . --check
   flake8 . --max-line-length=88
   ```

3. **Verify dependencies**
   ```bash
   pip-compile requirements.in  # If you added new packages
   ```

## 📊 Dataset Contributions

When adding new datasets:
- Ensure data is publicly available
- Include proper attribution
- Keep file sizes reasonable (<10MB)
- Document data sources and structure
- Consider privacy and ethical implications

## 🎯 Content Standards

### Learning Objectives
Each notebook should have clear:
- What students will learn
- Prerequisites knowledge
- Expected time to complete

### Code Quality
- Well-commented code
- Error handling where appropriate
- Consistent naming conventions
- Reproducible results

### Exercises and Challenges
- Progressive difficulty
- Clear instructions
- Provided solutions or hints
- Real-world relevance

## 🏆 Recognition

Contributors will be:
- Listed in the CHANGELOG.md
- Mentioned in README.md contributors section
- Credited in relevant notebook sections

## 💬 Getting Help

Need help contributing?
- Open an issue with the "question" label
- Check existing issues for similar questions
- Review the course documentation

## 📜 Code of Conduct

This project follows a simple code of conduct:
- Be respectful and constructive
- Help create a welcoming learning environment
- Focus on educational value
- Respect different learning styles and backgrounds

## 🔍 Review Process

1. **Automated Checks**: CI will run basic tests
2. **Maintainer Review**: A project maintainer will review your PR
3. **Feedback**: You may receive requests for changes
4. **Merge**: Once approved, your contribution will be merged!

Thank you for helping make this course better for everyone! 🎉

---
*Happy coding and learning! 🐍📊*
