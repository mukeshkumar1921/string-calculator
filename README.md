# 🧮 String Calculator TDD – Ruby on Rails

This project implements the **String Calculator Kata** using **Ruby on Rails**, developed with a **Test-Driven Development (TDD)** approach using **RSpec**.

## 📌 Features

- Returns `0` for an empty string input
- Returns the number itself for a single number input
- Supports sum of multiple numbers separated by commas
- Supports new line characters (`\n`) as valid delimiters
- Allows custom delimiters like `//;\n1;2`
- Throws an exception for negative numbers, listing all of them

## ✅ TDD Workflow

Each commit in this repository reflects a step in the **Red → Green → Refactor** cycle:

- 🔴 Write a failing test
- ✅ Make it pass with minimal implementation
- 🧹 Refactor for clarity and simplicity

You can explore the commit history to see how the code evolved step-by-step.

## 🛠️ Setup Instructions

### Prerequisites

- Ruby 3.0+
- Rails 7+
- Bundler
- Git

### Installation

```bash
# Clone the repository
git clone https://github.com/mukeshkumar1921/string-calculator.git
cd mukesh-kumar-string-calculator

# Install dependencies
bundle install

# Run tests
bundle exec rspec
