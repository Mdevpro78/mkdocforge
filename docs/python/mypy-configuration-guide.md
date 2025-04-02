# 🔍 Python Type Checking with Mypy

> A comprehensive guide to type checking in Python using Mypy

## 🚀 Quick Start

### Installation

```bash
python3 -m pip install -U mypy
```

### Basic Usage

```python
# example.py
def greet(name: str) -> str:
    return f"Hello, {name}!"


# Run type checking
# mypy example.py
```

## ⚙️ Configuration

### Core Settings

#### This Project's mypy.ini

```ini
{{ includex("mypy.ini") }}
```

---

```ini
[mypy]
python_version = 3.11
strict = True
mypy_path = src
namespace_packages = True
```

### 🔒 Strict Mode Features

- ✅ `disallow_untyped_defs`: All functions must have type annotations
- ✅ `strict_optional`: No implicit Optional types
- ✅ `check_untyped_defs`: Type check all functions
- ✅ `disallow_untyped_decorators`: Require decorator type annotations

## 📝 Type Checking Guidelines

### ✨ Best Practices

#### Function Annotations

```python
# ✅ Good
def calculate_total(
    prices: list[float], tax_rate: float
) -> float:
    return sum(prices) * (1 + tax_rate)


# ❌ Bad
def calculate_total(prices, tax_rate):
    return sum(prices) * (1 + tax_rate)
```

#### Optional Types

```python
# ✅ Good
from typing import Optional


def get_user(user_id: Optional[int] = None) -> str:
    return "guest" if user_id is None else f"user_{user_id}"


# ❌ Bad
def get_user(user_id=None) -> str:
    return "guest" if user_id is None else f"user_{user_id}"
```

## 🔧 Common Patterns

### 🏭 Working with Classes

```python
from typing import Protocol


class Drawable(Protocol):
    def draw(self) -> None: ...


def render(entity: Drawable) -> None:
    entity.draw()
```

### 🔄 Generic Types

```python
from typing import TypeVar, Sequence

T = TypeVar("T")


def first_element(seq: Sequence[T]) -> T:
    if not seq:
        raise ValueError("Empty sequence")
    return seq[0]
```

## ❗ Troubleshooting

### Common Errors

#### 🚫 Missing Return Type

```python
# Error: Function is missing a return type annotation
def add(a: int, b: int):  # ❌
    return a + b


# Fixed:
def add(a: int, b: int) -> int:  # ✅
    return a + b
```

#### 🚫 Optional Type Mismatch

```python
# Error: Incompatible return value type
def get_name(user_id: int) -> str:  # ❌
    user = find_user(user_id)
    return user.name if user else None


# Fixed:
def get_name(user_id: int) -> Optional[str]:  # ✅
    user = find_user(user_id)
    return user.name if user else None
```

## 📚 Resources

### Official Resources

- [🌟 Mypy GitHub Repository](https://github.com/python/mypy)
- [📖 Official Documentation](https://mypy.readthedocs.io/)
- [📝 Type Hints Cheat Sheet](https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html)

### Additional Resources

- [💬 Typing Discussions](https://github.com/python/typing/discussions)
- [🎯 Common Issues Page](https://github.com/python/mypy/wiki/Common-Issues)
- [📢 Python Typing Blog](https://mypy-lang.blogspot.com/)

### IDE Integration

- 💻 VS Code: Built-in support
- 📝 PyCharm: Native support
- 🔧 Vim/Neovim: Via ALE or Syntastic
- ✨ Sublime Text: Via SublimeLinter-contrib-mypy

---

> 💡 **Pro Tip**: Use `dmypy run` for faster incremental type checking during development.
