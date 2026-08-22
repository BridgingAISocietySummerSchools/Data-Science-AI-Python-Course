#!/bin/bash

# Setup script for the Python for Data Science Workshop
# Enhanced version with error handling and system checks

set -e  # Exit on any error

echo "🐍 Python for Data Science Workshop — Environment Setup"
echo "=============================================="
echo ""

# Color codes for better output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check Python version
print_status "Checking Python installation..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1)
    print_success "Found $PYTHON_VERSION"
    
    # Check if version is 3.7 or higher
    PYTHON_MIN_VERSION="3.7"
    PYTHON_CURRENT=$(python3 -c "import sys; print('.'.join(map(str, sys.version_info[:2])))")
    
    if python3 -c "import sys; exit(0 if sys.version_info >= (3,7) else 1)"; then
        print_success "Python version $PYTHON_CURRENT meets requirements (>= $PYTHON_MIN_VERSION)"
    else
        print_error "Python version $PYTHON_CURRENT is too old. Please upgrade to Python 3.7 or higher."
        exit 1
    fi
else
    print_error "Python 3 is not installed. Please install Python 3.7 or higher."
    exit 1
fi

# Check if pip is available
print_status "Checking pip installation..."
if command -v pip3 &> /dev/null; then
    print_success "pip3 is available"
else
    print_error "pip3 is not available. Please install pip."
    exit 1
fi

# Check available disk space
print_status "Checking available disk space..."
AVAILABLE_SPACE=$(df . | tail -1 | awk '{print $4}')
REQUIRED_SPACE=1048576  # 1GB in KB
if [ $AVAILABLE_SPACE -gt $REQUIRED_SPACE ]; then
    print_success "Sufficient disk space available"
else
    print_warning "Low disk space. At least 1GB recommended."
fi

# Remove existing virtual environment if it exists
if [ -d "venv" ]; then
    print_warning "Existing virtual environment found. Removing..."
    rm -rf venv
fi

# Create virtual environment
print_status "Creating virtual environment..."
python3 -m venv venv
if [ $? -eq 0 ]; then
    print_success "Virtual environment created successfully"
else
    print_error "Failed to create virtual environment"
    exit 1
fi

# Activate virtual environment
print_status "Activating virtual environment..."
source venv/bin/activate
if [ $? -eq 0 ]; then
    print_success "Virtual environment activated"
else
    print_error "Failed to activate virtual environment"
    exit 1
fi

# Upgrade pip
print_status "Upgrading pip..."
pip install --upgrade pip > /dev/null 2>&1
if [ $? -eq 0 ]; then
    print_success "pip upgraded successfully"
else
    print_warning "pip upgrade had issues, continuing..."
fi

# Check if requirements.txt exists
if [ ! -f "requirements.txt" ]; then
    print_error "requirements.txt not found in current directory"
    exit 1
fi

# Install required packages
print_status "Installing required packages from requirements.txt..."
pip install -r requirements.txt
if [ $? -eq 0 ]; then
    print_success "All packages installed successfully"
else
    print_error "Failed to install some packages"
    exit 1
fi

# Install development dependencies if available
if [ -f "requirements-dev.txt" ]; then
    print_status "Installing development dependencies..."
    pip install -r requirements-dev.txt > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        print_success "Development dependencies installed"
    else
        print_warning "Some development dependencies failed to install"
    fi
fi

# Install and setup Jupyter kernel
print_status "Setting up Jupyter kernel..."
python -m ipykernel install --user --name=data-science-course --display-name="Python (Data Science Course)" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    print_success "Jupyter kernel installed successfully"
else
    print_error "Failed to install Jupyter kernel"
    exit 1
fi

# Verify installations
print_status "Verifying installations..."
python -c "import numpy, pandas, matplotlib, jupyter" 2>/dev/null
if [ $? -eq 0 ]; then
    print_success "All core packages verified"
else
    print_error "Package verification failed"
    exit 1
fi

# Create .gitignore if it doesn't exist
if [ ! -f ".gitignore" ]; then
    print_status "Creating .gitignore file..."
    cat > .gitignore << EOL
# Virtual Environment
venv/
env/
.env

# Jupyter Notebook checkpoints
.ipynb_checkpoints/

# Python cache
__pycache__/
*.pyc
*.pyo

# macOS
.DS_Store

# IDE files
.vscode/
.idea/
*.swp
*.swo

# Data files (uncomment if needed)
# *.csv
# *.json
# data/
EOL
    print_success ".gitignore created"
fi

# Final system information
echo ""
echo "🎉 Setup Complete!"
echo "=================="
echo ""
print_success "Environment Details:"
echo "  📁 Virtual Environment: $(pwd)/venv"
echo "  🐍 Python Version: $(python --version)"
echo "  📦 Pip Version: $(pip --version | cut -d' ' -f2)"
echo "  🔧 Jupyter Kernel: data-science-course"
echo ""

print_status "Installed Packages:"
pip list | grep -E "(numpy|pandas|matplotlib|jupyter|seaborn|plotly|scikit-learn)"
echo ""

print_status "Next Steps:"
echo "  1. Activate the environment: ${GREEN}source venv/bin/activate${NC}"
echo "  2. Start Jupyter notebook: ${GREEN}jupyter notebook${NC}"
echo "  3. Select kernel: ${GREEN}Python (Data Science Course)${NC}"
echo "  4. Open: ${GREEN}01_introduction/01_welcome_to_python.ipynb${NC} (Track 1, notebook 1 of 5)"
echo ""

print_status "Useful Commands:"
echo "  🔧 Activate environment: ${GREEN}source venv/bin/activate${NC}"
echo "  🚀 Start Jupyter: ${GREEN}jupyter notebook${NC}"
echo "  📊 List packages: ${GREEN}pip list${NC}"
echo "  🔄 Update packages: ${GREEN}pip install -r requirements.txt --upgrade${NC}"
echo "  🛑 Deactivate: ${GREEN}deactivate${NC}"
echo ""

print_success "Ready to start learning! 🚀"
echo ""
echo "Need help? Check README.md or CONTRIBUTING.md"
