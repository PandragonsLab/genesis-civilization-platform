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
