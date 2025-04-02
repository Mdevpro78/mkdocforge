# Material Icons Standardization Plan

This document outlines the inconsistencies found in Material icon usage across our documentation and the standardization plan to fix them.

## Identified Inconsistencies

### Section Headers

According to our guidelines, section headers (h2, h3) should use icons without size classes (default size). However, the following inconsistencies were found:

1. In `python/rye_commands.md`, section headers use `.middle` class:

    - `## :material-rocket-launch:{ .middle } Development Tools Installation`
    - `### :material-palette:{ .middle } Code Formatting & Linting`
    - `### :material-package-variant:{ .middle } Package Management`
    - `### :material-language-rust:{ .middle } Rust Integration`
    - `## :material-tools:{ .middle } Toolchain Management`
    - `## :material-text-box-outline:{ .middle } Command Format Reference`

2. In `past-performance/past-performance-hub.md`, some h4 headers use `.lg .middle` classes:

    - `#### :material-format-list-bulleted:{ .lg .middle } 2. Organize`
    - `#### :material-chart-bar:{ .lg .middle } 3. Analyze`
    - `#### :material-lightbulb-outline:{ .lg .middle } 4. Extract Lessons`
    - `#### :material-share-variant:{ .lg .middle } 5. Share`

### Status Indicators

Status indicators should use the appropriate status class (`.success`, `.warning`, `.error`, `.info`). Most files follow this guideline correctly, but there are some inconsistencies in spacing and formatting:

1. In `past-performance/templates/past-performance-comprehensive.md` and other templates, some status indicators have no space between the icon and the class:

    - `:material-check-circle:{.success}` (missing space before `{`)
    - `:material-progress-clock:{.warning}` (missing space before `{`)
    - `:material-alert-circle:{.error}` (missing space before `{`)

2. In `past-performance/templates/past-performance-temp-02.md`, there's an inconsistent use of `.failure` instead of `.error`:

    - `:material-close-circle:{.failure}` (should be `.error` according to standards)

### Navigation Links

Navigation links should use `.lg .middle` classes. Most files follow this guideline correctly.

### Icon Links

Icon links should use `.middle` alignment without size class. All icon links follow this guideline correctly.

## Standardization Plan

1. **Section Headers**: Remove size and alignment classes from all section headers (h2, h3, h4) to use the default size as per guidelines.

2. **Status Indicators**:

    - Add space between icon and class definition where missing
    - Replace `.failure` with `.error` for consistency

3. **Documentation**: Update the material-icons-guide.md to clarify that h4 headers should also follow the same guidelines as h2 and h3 headers.

## Implementation Priority

1. Fix section headers in `python/rye_commands.md`
2. Fix section headers in `past-performance/past-performance-hub.md`
3. Fix status indicators in performance templates
4. Update documentation if needed
