# Documentation Standards

This document outlines the documentation standards for our production-ready open source Python project. Following these guidelines ensures code is maintainable, accessible to new contributors, and meets professional software engineering standards.

## File Headers

Every Python file should begin with a standardized header:

```python
"""
Module: module_name.py

Description: A concise (1-2 sentence) description of the module's purpose.

This module provides functionality for... [more detailed description]

Copyright (c) [Year] [Project Name]
[License information]
"""
```

## Import Organization

Imports should be organized in blocks with comments:

```python
# Standard library imports
import os
import sys
from typing import Dict, List, Optional, Union

# Third-party imports
import numpy as np
import pandas as pd
from fastapi import FastAPI, Depends

# Local application imports
from app.core.config import settings
from app.models.user import User
from app.utils.helpers import format_response
```

## Class Documentation

Classes should have comprehensive docstrings:

```python
class UserService:
    """
    Manages user-related operations and business logic.

    This service handles user creation, authentication, profile management,
    and related operations. It serves as an abstraction layer between
    the API endpoints and the database models.

    Attributes:
        db_session: Database session for database operations
        cache_manager: Optional cache manager for performance optimization
        config: Service configuration parameters
    """
```

## Method and Function Documentation

Methods and functions should have descriptive docstrings following this format:

````python
def process_user_data(
    user_id: int,
    update_data: Dict[str, Any],
    *,
    partial: bool = False,
) -> Union[User, None]:
    """
    Process and validate user data before updating the database.

    This function validates the incoming data against business rules,
    performs any necessary transformations, and prepares it for
    database operations.

    Args:
        user_id: The unique identifier of the user
        update_data: Dictionary containing user fields to update
        partial: If True, allows partial updates; otherwise requires all fields

    Returns:
        Updated User object if successful, None if user not found

    Raises:
        ValidationError: If the update data fails validation
        PermissionError: If the operation is not allowed for the user
        DatabaseError: If a database operation fails

    Example:
        ```python
        try:
            updated_user = process_user_data(
                user_id=42,
                update_data={"name": "New Name", "email": "new@example.com"},
                partial=True
            )
        except ValidationError as e:
            log_error(e)
        ```
    """
````

## Variable Annotations and Constants

Constants and class variables should be well-documented:

```python
# Maximum number of login attempts before account lockout
# Increasing this value may impact security but improve user experience
MAX_LOGIN_ATTEMPTS: int = 5

# API rate limits (requests per minute) for different user tiers
# These values should be adjusted based on server capacity and load testing
RATE_LIMITS: Dict[str, int] = {
    "free": 60,  # 1 request per second
    "basic": 300,  # 5 requests per second
    "premium": 1200,  # 20 requests per second
}
```

## Inline Comments

Use inline comments sparingly and only for complex logic:

```python
# Good - explains "why", not "what"
if user.last_login < (datetime.now() - timedelta(days=90)):
    # Force password reset for accounts inactive over 90 days per security policy
    user.require_password_change = True

# Avoid - merely restates the code
# Get the user's name
user_name = user.get_name()
```

## Type Annotations

With mypy strict mode enabled, ensure comprehensive typing:

```python
def get_active_users(
    department: Optional[str] = None,
    status: List[str] = ["active", "pending"],
    include_metadata: bool = False,
) -> Dict[str, Union[List[User], Dict[str, Any]]]:
    """Get active users, optionally filtered by department."""
    # Function implementation...
```

## Error Handling Documentation

Document error handling patterns:

```python
try:
    # Attempt to process the payment
    transaction = payment_processor.charge(amount, token)

    # Transaction successful, update order status
    order.status = "paid"
    order.transaction_id = transaction.id
except PaymentDeclinedError as e:
    # Payment method was declined by the payment processor
    # Log detailed error for troubleshooting but return a user-friendly message
    logger.error(
        f"Payment declined: {str(e)}, Code: {e.decline_code}"
    )
    return ServiceResult(
        success=False,
        error_code="PAYMENT_DECLINED",
        message="Your payment method was declined. Please try another card or contact your bank.",
    )
except PaymentProcessorError as e:
    # An error occurred with the payment processor itself
    # This requires system administrator attention
    logger.critical(f"Payment processor error: {str(e)}")
    notify_admin(
        "payment_processor_failure",
        context={"order_id": order.id},
    )
    return ServiceResult(
        success=False,
        error_code="SYSTEM_ERROR",
        message="We're experiencing technical difficulties processing payments. Our team has been notified.",
    )
```

## TODO Comments

Format TODOs with ownership and issue tracking:

```python
# TODO(username): Refactor this method to improve performance
# Issue: #123, Expected completion: 2023-Q3

# FIXME(username): This is a temporary workaround for the issue with
# third-party API responses. Remove once API is updated.
# Issue: #456
```

## API Documentation

API endpoints should include detailed docstrings for auto-generated documentation:

```python
@router.post(
    "/users/", response_model=UserResponse, status_code=201
)
async def create_user(
    user_data: UserCreate,
    db: Database = Depends(get_db),
    current_user: User = Depends(get_current_user),
) -> UserResponse:
    """
    Create a new user in the system.

    This endpoint registers a new user with the provided information.
    Admin privileges are required to create users with staff roles.

    Parameters:
    - **user_data**: User information including username, email, and password

    Returns:
    - **UserResponse**: Created user details (excluding password)

    Raises:
    - **403**: Insufficient permissions
    - **409**: Username or email already exists
    - **422**: Validation error in provided data

    Security:
    - Requires authentication
    - Requires 'users:create' permission
    """
```

## Configuration Documentation

Configuration parameters should be thoroughly documented:

```python
# Database configuration
DB_HOST: str = os.getenv("DB_HOST", "localhost")
DB_PORT: int = int(os.getenv("DB_PORT", "5432"))
DB_NAME: str = os.getenv("DB_NAME", "app_db")
DB_USER: str = os.getenv("DB_USER", "postgres")
DB_PASSWORD: str = os.getenv(
    "DB_PASSWORD", ""
)  # Empty string for local development

# Connection pooling settings
# Min pool size affects startup time, max pool size affects memory usage
# These values should be tuned based on application load testing
MIN_DB_POOL_SIZE: int = int(os.getenv("MIN_DB_POOL_SIZE", "5"))
MAX_DB_POOL_SIZE: int = int(os.getenv("MAX_DB_POOL_SIZE", "20"))
```

## Logging Guide

Include comments that explain logging patterns:

```python
# Log authentication attempts for security auditing
# These logs should be retained for at least 90 days per compliance requirements
logger.info(
    "Authentication attempt",
    extra={
        "username": username,
        "ip_address": request.client.host,
        "user_agent": request.headers.get(
            "User-Agent", "Unknown"
        ),
        "success": success,
        "failure_reason": None if success else failure_reason,
    },
)
```

## Project Structure Documentation

Comment on project structure in README files:

```markdown
## Project Structure

- `app/` - Main application package
  - `api/` - API endpoints and routers
  - `core/` - Core functionality and configuration
  - `db/` - Database models and migrations
  - `services/` - Business logic layer
  - `utils/` - Utility functions and helpers
- `tests/` - Test suite organized by module
- `docs/` - Documentation files
- `scripts/` - Maintenance and deployment scripts
```

## Testing Documentation

Document test cases clearly:

```python
def test_user_registration_valid_data():
    """
    Test that user registration succeeds with valid data.

    This test verifies that:
    1. A user can be registered with valid data
    2. The response contains the expected user information
    3. The password is properly hashed in the database
    4. A confirmation email is triggered
    """
```

## Version History Documentation

Track changes in version updates:

```python
"""
Version History:
- 1.2.0 (2023-09-15): Added support for OAuth2 providers (GitHub, Google)
- 1.1.2 (2023-08-10): Fixed race condition in concurrent user creation
- 1.1.1 (2023-07-22): Performance improvements in user search
- 1.1.0 (2023-07-01): Added user profile management features
- 1.0.0 (2023-06-15): Initial stable release
"""
```

## External Resources

When possible, provide links to relevant resources:

```python
# Implementation based on the algorithm described in:
# https://en.wikipedia.org/wiki/Levenshtein_distance
# Performance optimization techniques from:
# https://jamesturk.github.io/jellyfish/
def calculate_similarity(str1: str, str2: str) -> float:
    """Calculate text similarity score between two strings."""
```

## Maintainability Comments

Add comments to flag sections that may require future attention:

```python
# PERFORMANCE: This operation is O(n²) - consider implementing the
# more efficient algorithm described in the docs for large datasets

# COMPATIBILITY: This code relies on Python 3.11+ pattern matching

# SECURITY: Input sanitization is critical here to prevent XSS attacks
```
