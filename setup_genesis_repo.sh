#!/bin/bash

# GENESIS Civilization Platform - One-Command Repository Setup
# Usage: ./setup_genesis_repo.sh [repository-name] [github-username]

set -e  # Exit on any error

# Configuration
REPO_NAME="${1:-genesis-civilization-platform}"
GITHUB_USER="${2:-yourusername}"
CURRENT_DIR=$(pwd)

echo "🚀 Setting up GENESIS Civilization Platform Repository..."
echo "Repository: $REPO_NAME"
echo "GitHub User: $GITHUB_USER"
echo ""

# Create main directory
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p docs/{api_reference,research,tutorials,images}
mkdir -p src/genesis_platform/{agents,environment,learning,cultural_memory,monitoring,infrastructure,utils}
mkdir -p tests/{unit,integration,behavioral,fixtures/{test_configs,sample_data}}
mkdir -p configs/{experiments,agents,environments,training}
mkdir -p examples/notebooks
mkdir -p scripts
mkdir -p deployment/{kubernetes,docker,terraform}
mkdir -p research/{papers,experimental_results,hypotheses,collaboration}
mkdir -p .github/{workflows,ISSUE_TEMPLATE}

# Create README.md
echo "📝 Creating README.md..."
cat > README.md << 'EOF'
# GENESIS - Civilization Emergence Platform

[![CI/CD Pipeline](https://github.com/GITHUB_USER/genesis-civilization-platform/workflows/CI/badge.svg)](https://github.com/GITHUB_USER/genesis-civilization-platform/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A distributed simulation platform for studying the emergence of digital civilizations through advanced multi-agent reinforcement learning, self-play algorithms, and cultural evolution mechanisms.

## 🌟 Key Features

- **Multi-Level Self-Play**: Individual, competitive, cooperative, and cultural learning systems
- **Bounded Specialist Agents**: Complementary limitations that encourage natural cooperation
- **Cultural Memory**: Persistent knowledge systems that accumulate across generations
- **Archipelago World**: Resource-diverse environment that incentivizes trade and specialization
- **Phase Transition Detection**: Automated detection of critical thresholds in emergence
- **Distributed Training**: Scalable training across multiple GPUs and machines

## 🚀 Quick Start

```bash
# Clone repository
git clone https://github.com/GITHUB_USER/genesis-civilization-platform.git
cd genesis-civilization-platform

# Install dependencies
pip install -r requirements.txt
pip install -e .

# Run basic experiment
python examples/quickstart_experiment.py
```

## 📚 Documentation

- **[Technical Specification](docs/technical_specification.md)** - Complete 50,000+ word implementation guide
- **[GENESIS Agent Instructions](docs/genesis_agent_instructions.md)** - AI agent behavior specifications
- **[Installation Guide](docs/installation.md)** - Detailed setup instructions
- **[API Reference](docs/api_reference/)** - Complete API documentation

## 🔬 Research

This platform enables research into:
- Cooperative AI and emergent social behaviors
- Cultural evolution and knowledge transmission
- Phase transitions in collective intelligence
- Multi-agent coordination and communication

See [research/](research/) directory for experimental results and academic papers.

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

## 📄 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.

---

**Built with ❤️ by the Civilization AI Research Lab**
EOF

# Replace placeholder with actual GitHub username
sed -i.bak "s/GITHUB_USER/$GITHUB_USER/g" README.md && rm README.md.bak

# Create .gitignore
echo "📝 Creating .gitignore..."
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyTorch
*.pth
*.pt

# Jupyter Notebooks
.ipynb_checkpoints

# Environment files
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# Experiment data
checkpoints/
experiments/
logs/
wandb/
*.log
*.out

# OS
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Large files
*.tar.gz
*.zip
data/
models/
*.h5
*.pkl
*.pickle

# Temporary files
*.tmp
*.temp
tmp/
temp/
EOF

# Create requirements.txt
echo "📝 Creating requirements.txt..."
cat > requirements.txt << 'EOF'
# Core ML/AI Libraries
torch>=2.0.0
torchvision>=0.15.0
torchaudio>=2.0.0
numpy>=1.21.0
scipy>=1.7.0
pandas>=1.3.0

# Visualization
matplotlib>=3.5.0
seaborn>=0.11.0
plotly>=5.0.0

# Network Analysis
networkx>=2.6.0

# Machine Learning
scikit-learn>=1.0.0
ray[default]>=2.0.0

# Configuration Management
hydra-core>=1.1.0
omegaconf>=2.1.0

# Experiment Tracking
wandb>=0.12.0

# Database Connections
redis>=4.0.0
pymongo>=4.0.0
psycopg2-binary>=2.9.0

# Infrastructure
kubernetes>=24.0.0
docker>=6.0.0

# Development Tools
pytest>=7.0.0
pytest-cov>=4.0.0
black>=22.0.0
isort>=5.10.0
mypy>=0.950
flake8>=5.0.0

# Documentation
sphinx>=5.0.0
sphinx-rtd-theme>=1.0.0

# Utilities
tqdm>=4.60.0
colorlog>=6.0.0
python-dotenv>=0.19.0
EOF

# Create setup.py
echo "📝 Creating setup.py..."
cat > setup.py << 'EOF'
from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

with open("requirements.txt", "r", encoding="utf-8") as fh:
    requirements = [line.strip() for line in fh if line.strip() and not line.startswith("#")]

setup(
    name="genesis-civilization-platform",
    version="0.1.0",
    author="Civilization AI Research Lab",
    author_email="research@civilization-ai.org",
    description="A distributed simulation platform for studying digital civilization emergence",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/GITHUB_USER/genesis-civilization-platform",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Science/Research",
        "Topic :: Scientific/Engineering :: Artificial Intelligence",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
    ],
    python_requires=">=3.8",
    install_requires=requirements,
    extras_require={
        "dev": [
            "pytest>=7.0.0",
            "pytest-cov>=4.0.0",
            "black>=22.0.0",
            "isort>=5.10.0",
            "mypy>=0.950",
            "flake8>=5.0.0",
        ],
        "docs": [
            "sphinx>=5.0.0",
            "sphinx-rtd-theme>=1.0.0",
        ],
    },
    entry_points={
        "console_scripts": [
            "genesis-train=genesis_platform.scripts.train:main",
            "genesis-evaluate=genesis_platform.scripts.evaluate:main",
            "genesis-analyze=genesis_platform.scripts.analyze:main",
        ],
    },
)
EOF

# Replace placeholder in setup.py
sed -i.bak "s/GITHUB_USER/$GITHUB_USER/g" setup.py && rm setup.py.bak

# Create LICENSE
echo "📝 Creating LICENSE..."
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2025 Civilization AI Research Lab

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

# Create GitHub Actions CI
echo "📝 Creating GitHub Actions CI..."
cat > .github/workflows/ci.yml << 'EOF'
name: CI/CD Pipeline

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main ]

jobs:
  test:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        python-version: [3.8, 3.9, "3.10"]

    steps:
    - uses: actions/checkout@v3
    
    - name: Set up Python ${{ matrix.python-version }}
      uses: actions/setup-python@v3
      with:
        python-version: ${{ matrix.python-version }}
    
    - name: Cache pip dependencies
      uses: actions/cache@v3
      with:
        path: ~/.cache/pip
        key: ${{ runner.os }}-pip-${{ hashFiles('**/requirements.txt') }}
        restore-keys: |
          ${{ runner.os }}-pip-
    
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install -r requirements.txt
        pip install -e .[dev]
    
    - name: Lint with flake8
      run: |
        flake8 src/ tests/ --count --select=E9,F63,F7,F82 --show-source --statistics
        flake8 src/ tests/ --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
    
    - name: Check code formatting with black
      run: black --check src/ tests/
    
    - name: Check import sorting with isort
      run: isort --check-only src/ tests/
    
    - name: Type checking with mypy
      run: mypy src/ --ignore-missing-imports
    
    - name: Test with pytest
      run: |
        pytest tests/ --cov=src/ --cov-report=xml --cov-report=html
    
    - name: Upload coverage to Codecov
      uses: codecov/codecov-action@v3
      with:
        file: ./coverage.xml
        flags: unittests
        name: codecov-umbrella
EOF

# Create all __init__.py files
echo "📝 Creating Python package structure..."
touch src/__init__.py
touch src/genesis_platform/__init__.py
touch src/genesis_platform/agents/__init__.py
touch src/genesis_platform/environment/__init__.py
touch src/genesis_platform/learning/__init__.py
touch src/genesis_platform/cultural_memory/__init__.py
touch src/genesis_platform/monitoring/__init__.py
touch src/genesis_platform/infrastructure/__init__.py
touch src/genesis_platform/utils/__init__.py
touch tests/__init__.py

# Create default configuration
echo "📝 Creating default configuration..."
cat > configs/default.yaml << 'EOF'
# GENESIS Platform Default Configuration
experiment:
  name: "basic_civilization_emergence"
  description: "Default experiment configuration"
  
world:
  type: "archipelago"
  grid_size: [20, 20]
  num_islands: 8
  
agents:
  population_size: 32
  specializations_per_agent: 2
  
training:
  num_generations: 100
  episodes_per_generation: 50
  episode_length: 1000
  
logging:
  level: "INFO"
  wandb_project: "genesis_civilization"
EOF

# Create basic documentation files
echo "📝 Creating documentation structure..."
cat > docs/README.md << 'EOF'
# GENESIS Platform Documentation

Welcome to the GENESIS Civilization Emergence Platform documentation.

## Quick Navigation

- [Technical Specification](technical_specification.md) - Complete implementation guide
- [GENESIS Agent Instructions](genesis_agent_instructions.md) - AI agent behavior
- [Installation Guide](installation.md) - Setup instructions
- [Quick Start](quickstart.md) - Get started quickly
- [API Reference](api_reference/) - Complete API documentation

## Research Documentation

- [Research Papers](../research/papers/) - Academic publications
- [Experimental Results](../research/experimental_results/) - Study outcomes
- [Research Hypotheses](../research/hypotheses/) - Current theories

## Tutorials

- [Basic Tutorial](tutorials/basic_experiment.md) - Your first experiment
- [Custom Agents](tutorials/custom_agents.md) - Building custom agents
- [Distributed Training](tutorials/distributed_training.md) - Scaling up
EOF

echo "# Installation Guide" > docs/installation.md
echo "# Quick Start Tutorial" > docs/quickstart.md
echo "# Configuration Guide" > docs/configuration.md

# Create basic example
echo "📝 Creating quickstart example..."
cat > examples/quickstart_experiment.py << 'EOF'
#!/usr/bin/env python3
"""
GENESIS Platform - Quickstart Example
Basic civilization emergence experiment
"""

def main():
    print("🚀 GENESIS Civilization Platform")
    print("This is a placeholder for the quickstart experiment.")
    print("Once the platform is implemented, this will run a basic")
    print("civilization emergence simulation.")
    
    # TODO: Implement basic experiment
    # from genesis_platform import CivilizationExperiment
    # experiment = CivilizationExperiment()
    # results = experiment.run()
    
if __name__ == "__main__":
    main()
EOF

chmod +x examples/quickstart_experiment.py

# Create basic training script
echo "📝 Creating training script..."
cat > scripts/train.py << 'EOF'
#!/usr/bin/env python3
"""
GENESIS Platform - Training Script
Main training entry point
"""

import argparse

def main():
    parser = argparse.ArgumentParser(description='GENESIS Platform Training')
    parser.add_argument('--config', type=str, default='configs/default.yaml',
                       help='Configuration file path')
    parser.add_argument('--generations', type=int, default=100,
                       help='Number of generations to train')
    
    args = parser.parse_args()
    
    print(f"🚀 Starting GENESIS training with config: {args.config}")
    print(f"Training for {args.generations} generations")
    
    # TODO: Implement training loop
    # from genesis_platform import CivilizationExperiment
    # experiment = CivilizationExperiment.from_config(args.config)
    # results = experiment.train(generations=args.generations)

if __name__ == "__main__":
    main()
EOF

chmod +x scripts/train.py

# Create CONTRIBUTING.md
echo "📝 Creating CONTRIBUTING.md..."
cat > CONTRIBUTING.md << 'EOF'
# Contributing to GENESIS Platform

We welcome contributions to the GENESIS Civilization Emergence Platform! This document outlines how to contribute effectively.

## Quick Start

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes
4. Add tests for new functionality
5. Run the test suite: `pytest tests/`
6. Commit your changes: `git commit -m 'Add amazing feature'`
7. Push to your branch: `git push origin feature/amazing-feature`
8. Open a Pull Request

## Development Setup

```bash
# Clone your fork
git clone https://github.com/yourusername/genesis-civilization-platform.git
cd genesis-civilization-platform

# Install in development mode
pip install -e .[dev]

# Run tests
pytest tests/
```

## Code Style

- Follow PEP 8
- Use Black for formatting: `black src/ tests/`
- Use isort for imports: `isort src/ tests/`
- Type hints are required for all functions

## Areas We Need Help

- [ ] Agent architecture implementations
- [ ] Environment system development
- [ ] Multi-level self-play algorithms
- [ ] Cultural memory systems
- [ ] Distributed training optimization
- [ ] Documentation and tutorials
- [ ] Research collaboration

## Research Contributions

We especially welcome:
- Novel cooperation emergence mechanisms
- Cultural evolution algorithms
- Phase transition detection methods
- Scalability improvements
- Experimental validation studies

Thank you for contributing! 🎉
EOF

# Create Docker files
echo "📝 Creating Docker configuration..."
cat > Dockerfile << 'EOF'
FROM nvidia/cuda:11.8-devel-ubuntu20.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3.9 \
    python3.9-dev \
    python3-pip \
    git \
    cmake \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Install the package
RUN pip3 install -e .

# Set environment variables
ENV PYTHONPATH=/app
ENV CUDA_VISIBLE_DEVICES=0,1,2,3

# Default command
CMD ["python3", "scripts/train.py", "--config", "configs/default.yaml"]
EOF

# Create basic docker-compose
cat > docker-compose.yml << 'EOF'
version: '3.8'

services:
  genesis-training:
    build: .
    volumes:
      - ./configs:/app/configs
      - ./checkpoints:/app/checkpoints
      - ./logs:/app/logs
    environment:
      - WANDB_API_KEY=${WANDB_API_KEY}
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              count: 1
              capabilities: [gpu]

  redis:
    image: redis:7-alpine
    ports:
      - "6379:6379"
    volumes:
      - redis_data:/data

volumes:
  redis_data:
EOF

# Initialize git repository
echo "📝 Initializing git repository..."
git init
git add .
git commit -m "Initial commit: Complete GENESIS platform structure

- Add comprehensive project structure
- Include all essential configuration files
- Set up GitHub Actions CI/CD pipeline
- Add documentation templates
- Create development environment setup
- Include Docker containerization
- Add basic example scripts"

echo ""
echo "✅ GENESIS Repository Setup Complete!"
echo ""
echo "📁 Created directory: $REPO_NAME"
echo "📊 Files created: $(find . -type f | wc -l) files"
echo "📂 Directories created: $(find . -type d | wc -l) directories"
echo ""
echo "🔧 Next Steps:"
echo "1. cd $REPO_NAME"
echo "2. Create GitHub repository: $REPO_NAME"
echo "3. git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "4. git push -u origin main"
echo "5. Copy your technical specification to docs/"
echo "6. Copy your agent instructions to docs/"
echo ""
echo "🚀 Repository ready for development!"
