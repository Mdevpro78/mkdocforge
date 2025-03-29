# Material Icons Usage Guide

> :material-format-color-fill:{ .md .middle } A guide to using Material Design icons consistently throughout documentation

## Overview

This guide establishes standards for using Material Design icons across our documentation to ensure visual consistency and improve user experience. By following these guidelines, we maintain a cohesive visual language throughout the project. Material icons provide visual cues that enhance readability and navigation while maintaining a professional appearance.

## Icon Styling Classes

We've implemented standardized CSS classes to control icon appearance. Use these classes consistently when adding icons to documentation.

### Size Classes

| Class | Size   | Use Case                                               |
| ----- | ------ | ------------------------------------------------------ |
| `.lg` | 1.5rem | Large icons for navigation, section headers, and cards |
| `.md` | 1.2rem | Medium icons for subheadings and inline emphasis       |
| `.sm` | 1.0rem | Small icons for inline text and compact lists          |

### Alignment Classes

| Class     | Alignment           | Use Case                                         |
| --------- | ------------------- | ------------------------------------------------ |
| `.middle` | Vertically centered | Default alignment for most icons                 |
| `.top`    | Top-aligned         | When aligning with first line of multi-line text |
| `.bottom` | Bottom-aligned      | When aligning with last line of multi-line text  |

### Status Classes

| Class                | Color            | Use Case                                                  |
| -------------------- | ---------------- | --------------------------------------------------------- |
| `.success`           | Green (#4caf50)  | Positive outcomes, completed tasks, successful operations |
| `.warning`           | Orange (#ff9800) | Warnings, partial completion, needs attention             |
| `.error`, `.failure` | Red (#f44336)    | Errors, failures, critical issues                         |
| `.info`              | Blue (#2196f3)   | Informational elements, neutral status                    |

### Material Design Color Classes

For more specific color control, use the Material Design color palette classes:

```
.md-color--red
.md-color--pink
.md-color--purple
.md-color--deep-purple
.md-color--indigo
.md-color--blue
.md-color--light-blue
.md-color--cyan
.md-color--teal
.md-color--green
.md-color--light-green
.md-color--lime
.md-color--yellow
.md-color--amber
.md-color--orange
.md-color--deep-orange
.md-color--brown
.md-color--grey
.md-color--blue-grey
```

## Usage Examples

### Basic Icon Usage

```markdown
:material-information-outline:{ .md .middle } **Information**
```

Renders as: :material-information-outline:{ .md .middle } **Information**

### Icons with Status Colors

```markdown
:material-check-circle:{ .success } Completed
:material-alert-circle:{ .warning } Needs Attention
:material-close-circle:{ .error } Failed
:material-information:{ .info } Note
```

Renders as:

:material-check-circle:{ .success } Completed :material-alert-circle:{ .warning } Needs Attention :material-close-circle:{ .error } Failed :material-information:{ .info } Note

### Icons in Tables

```markdown
| Status | Description |
|--------|-------------|
| :material-check-circle:{ .success } | Task completed successfully |
| :material-alert-circle:{ .warning } | Task needs attention |
| :material-close-circle:{ .error } | Task failed |
```

| Status                              | Description                 |
| ----------------------------------- | --------------------------- |
| :material-check-circle:{ .success } | Task completed successfully |
| :material-alert-circle:{ .warning } | Task needs attention        |
| :material-close-circle:{ .error }   | Task failed                 |

### Icons in Navigation

For navigation items and cards, use the `.lg` size class with `.middle` alignment:

```markdown
- :material-file-document:{ .lg .middle } **Documentation**
- :material-code-tags:{ .lg .middle } **Code Examples**
- :material-chart-bar:{ .lg .middle } **Analytics**
```

Renders as:

- :material-file-document:{ .lg .middle } **Documentation**
- :material-code-tags:{ .lg .middle } **Code Examples**
- :material-chart-bar:{ .lg .middle } **Analytics**

### Icons with Material Design Colors

```markdown
:material-alert-circle:{ .md-color--red } Critical
:material-information:{ .md-color--blue } Information
:material-check-circle:{ .md-color--green } Success
```

Renders as:

:material-alert-circle:{ .md-color--red } Critical :material-information:{ .md-color--blue } Information :material-check-circle:{ .md-color--green } Success

## Common Icon Sets

### Status Icons

| Icon                      | Name             | Usage               | Recommended Classes |
| ------------------------- | ---------------- | ------------------- | ------------------- |
| :material-check-circle:   | `check-circle`   | Success, completion | `.success`          |
| :material-alert-circle:   | `alert-circle`   | Warning, caution    | `.warning`          |
| :material-close-circle:   | `close-circle`   | Error, failure      | `.error`            |
| :material-information:    | `information`    | Information, note   | `.info`             |
| :material-help-circle:    | `help-circle`    | Help, question      | `.info`             |
| :material-progress-clock: | `progress-clock` | In progress         | `.warning`          |
| :material-check:          | `check`          | Completed item      | `.success`          |
| :material-close:          | `close`          | Failed item         | `.error`            |

### Document Icons

| Icon                              | Name                     | Usage                     | Recommended Classes          |
| --------------------------------- | ------------------------ | ------------------------- | ---------------------------- |
| :material-file-document:          | `file-document`          | General documents         | `.lg .middle` for navigation |
| :material-file-document-outline:  | `file-document-outline`  | Document outline/template | `.lg .middle` for navigation |
| :material-file-document-multiple: | `file-document-multiple` | Multiple documents        | `.lg .middle` for navigation |
| :material-book-open-variant:      | `book-open-variant`      | Documentation, guides     | `.lg .middle` for navigation |
| :material-notebook:               | `notebook`               | Notes, journals           | `.lg .middle` for navigation |
| :material-book-alphabet:          | `book-alphabet`          | Glossary, dictionary      | `.lg .middle` for navigation |
| :material-text-box-outline:       | `text-box-outline`       | Content sections          | Default size for headers     |

### Navigation Icons

| Icon                   | Name          | Usage               | Recommended Classes |
| ---------------------- | ------------- | ------------------- | ------------------- |
| :material-home:        | `home`        | Home page           | `.middle` for links |
| :material-arrow-right: | `arrow-right` | Next, continue      | `.middle` for links |
| :material-arrow-left:  | `arrow-left`  | Previous, back      | `.middle` for links |
| :material-menu:        | `menu`        | Menu, navigation    | `.middle` for links |
| :material-link:        | `link`        | Links, references   | `.middle` for links |
| :material-github:      | `github`      | GitHub links        | `.middle` for links |
| :material-book:        | `book`        | Documentation links | `.middle` for links |

### Development Icons

| Icon                       | Name              | Usage                  | Recommended Classes          |
| -------------------------- | ----------------- | ---------------------- | ---------------------------- |
| :material-code-tags:       | `code-tags`       | Code, development      | Default size for headers     |
| :material-git:             | `git`             | Git, version control   | `.lg .middle` for navigation |
| :material-database:        | `database`        | Database, storage      | Default size for headers     |
| :material-server:          | `server`          | Server, infrastructure | Default size for headers     |
| :material-language-python: | `language-python` | Python programming     | Default size for headers     |
| :material-package:         | `package`         | Packages, dependencies | Default size for headers     |
| :material-docker:          | `docker`          | Docker, containers     | `.lg .middle` for navigation |

### Process & Workflow Icons

| Icon                              | Name                     | Usage                  | Recommended Classes          |
| --------------------------------- | ------------------------ | ---------------------- | ---------------------------- |
| :material-timeline-outline:       | `timeline-outline`       | Process flows          | Default size for headers     |
| :material-chart-timeline-variant: | `chart-timeline-variant` | Project timelines      | Default size for headers     |
| :material-account-group:          | `account-group`          | Teams, stakeholders    | `.lg .middle` for navigation |
| :material-target:                 | `target`                 | Goals, objectives      | Default size for headers     |
| :material-lightbulb-outline:      | `lightbulb-outline`      | Ideas, lessons learned | Default size for headers     |
| :material-chart-bar:              | `chart-bar`              | Metrics, analytics     | Default size for headers     |

## Best Practices

1. **Consistency**: Use the same icon for the same concept throughout documentation
2. **Simplicity**: Don't overuse icons; they should enhance, not distract
3. **Accessibility**: Icons should complement text, not replace it
4. **Sizing**: Use appropriate size classes based on context
5. **Color**: Use status colors consistently to convey meaning
6. **Spacing**: Maintain consistent spacing between icons and text
7. **Hierarchy**: Use icon size to establish visual hierarchy

## Consistency Patterns

To maintain visual consistency across documentation, follow these standardized patterns for common use cases:

### Section Headers

For all section headers (h2, h3, h4), use the icon without size class (default size):

```markdown
## :material-code-tags: Development Guide
### :material-information-outline: Important Notes
#### :material-pencil-outline: Implementation Details
```

### Navigation Links

For navigation links and cards, always use the `.lg` size with `.middle` alignment:

```markdown
- :material-file-document:{ .lg .middle } **Documentation**
- :material-code-tags:{ .lg .middle } **Code Examples**
```

### Status Indicators

For status indicators, always use the appropriate status class:

```markdown
:material-check-circle:{ .success } Completed
:material-alert-circle:{ .warning } In Progress
:material-close-circle:{ .error } Failed
```

### Inline Text Icons

For icons within paragraph text, use the `.md` size with `.middle` alignment:

```markdown
This is a note :material-information:{ .md .middle } about an important concept.
```

### Icon Links

For icon links, use the `.middle` alignment without size class:

```markdown
[:material-github:{ .middle } GitHub Repository](https://github.com/example/repo)
```

## Implementation

The styling for these icons is defined in `docs/static/stylesheets/material-icons.css` and is automatically included in the MkDocs build. To use these styles, simply add the appropriate classes to your Material icons in markdown files.
