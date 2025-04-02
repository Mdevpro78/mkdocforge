---
title: 'ADR-NNNN: Title of the Architecture Decision'
status: proposed   # proposed, accepted, rejected, deprecated, superseded
date: YYYY-MM-DD
deciders: ['@person1', '@person2'] # List of people involved in the decision
technical-story: JIRA-123 # Reference to a ticket or user story
business-story: BIZ-456 # Reference to business requirements
---

## ADR-NNNN: Title of the Architecture Decision

!!! info "Status"

    **Status:** {{ page.meta.status }} | **Date:** {{ page.meta.date }}

    <!-- This line renders the list of deciders from the frontmatter metadata, using Jinja2 loop to add commas between names except after the last name -->

    **Deciders:** {% for decider in page.meta.deciders %}{{ decider }}{% if not loop.last %}, {% endif %}{% endfor %}

    <!-- page.meta is a dictionary that provides access to all frontmatter metadata defined at the top of the markdown file -->

    **Technical Story:** \[{{ page.meta["technical-story"] }}\](https://jira.example.com/browse/{{ page.meta["technical-story"] }})

    **Business Story:** \[{{ page.meta["business-story"] }}\](https://jira.example.com/browse/{{ page.meta["business-story"] }})

## Context and Problem Statement

:material-information: Describe the context and problem statement, providing enough information for readers to understand the architectural challenge being addressed.

- What is the issue we're trying to solve?
- What are the business and technical drivers that led to this decision?
- What is the current state of the system that makes this decision necessary?

## Decision Drivers

### Business Drivers

:material-briefcase: Business factors influencing this decision:

- :material-currency-usd: **Business Driver 1**: Description of business driver
- :material-account-group: **Business Driver 2**: Description of business driver
- :material-chart-timeline-variant: **Business Driver 3**: Description of business driver

### Technical Drivers

:material-code-tags: Technical factors influencing this decision:

- :material-server: **Technical Driver 1**: Description of technical driver
- :material-database: **Technical Driver 2**: Description of technical driver
- :material-cloud: **Technical Driver 3**: Description of technical driver

## Constraints

:material-lock: Constraints that limit our options:

- **Constraint 1**: Description of constraint
- **Constraint 2**: Description of constraint
- **Constraint 3**: Description of constraint

## Objectives

:material-target: What we aim to achieve with this decision:

- **Objective 1**: Description of objective
- **Objective 2**: Description of objective
- **Objective 3**: Description of objective

## Forces

:material-arrow-decision: Forces at play that influence the decision:

- **Force 1**: Description of force
- **Force 2**: Description of force
- **Force 3**: Description of force

## Considered Options

:material-format-list-bulleted: Options considered to address the problem:

- **Option 1**: [Name of Option 1](#option-1-name-of-option-1)
- **Option 2**: [Name of Option 2](#option-2-name-of-option-2)
- **Option 3**: [Name of Option 3](#option-3-name-of-option-3)

### Option 1: Name of Option 1

:material-lightbulb: Description of Option 1

#### Pros

:material-check-circle: Advantages of this option:

- **Pro 1**: Description of advantage
- **Pro 2**: Description of advantage
- **Pro 3**: Description of advantage

#### Cons

:material-alert-circle: Disadvantages of this option:

- **Con 1**: Description of disadvantage
- **Con 2**: Description of disadvantage
- **Con 3**: Description of disadvantage

#### Mitigation Strategies

:material-shield: Strategies to mitigate the cons:

- **For Con 1**: Mitigation strategy
- **For Con 2**: Mitigation strategy
- **For Con 3**: Mitigation strategy

### Option 2: Name of Option 2

:material-lightbulb: Description of Option 2

#### Pros

:material-check-circle: Advantages of this option:

- **Pro 1**: Description of advantage
- **Pro 2**: Description of advantage
- **Pro 3**: Description of advantage

#### Cons

:material-alert-circle: Disadvantages of this option:

- **Con 1**: Description of disadvantage
- **Con 2**: Description of disadvantage
- **Con 3**: Description of disadvantage

#### Mitigation Strategies

:material-shield: Strategies to mitigate the cons:

- **For Con 1**: Mitigation strategy
- **For Con 2**: Mitigation strategy
- **For Con 3**: Mitigation strategy

### Option 3: Name of Option 3

:material-lightbulb: Description of Option 3

#### Pros

:material-check-circle: Advantages of this option:

- **Pro 1**: Description of advantage
- **Pro 2**: Description of advantage
- **Pro 3**: Description of advantage

#### Cons

:material-alert-circle: Disadvantages of this option:

- **Con 1**: Description of disadvantage
- **Con 2**: Description of disadvantage
- **Con 3**: Description of disadvantage

#### Mitigation Strategies

:material-shield: Strategies to mitigate the cons:

- **For Con 1**: Mitigation strategy
- **For Con 2**: Mitigation strategy
- **For Con 3**: Mitigation strategy

## Trade-off Analysis

### Technical Trade-offs

:material-scale-balance: Analysis of technical trade-offs between options:

| Criteria   | Option 1 | Option 2 | Option 3 |
| ---------- | -------- | -------- | -------- |
| Criteria 1 | Rating   | Rating   | Rating   |
| Criteria 2 | Rating   | Rating   | Rating   |
| Criteria 3 | Rating   | Rating   | Rating   |
| Criteria 4 | Rating   | Rating   | Rating   |
| Criteria 5 | Rating   | Rating   | Rating   |

### Business Trade-offs

:material-scale-balance: Analysis of business trade-offs between options:

| Criteria          | Option 1 | Option 2 | Option 3 |
| ----------------- | -------- | -------- | -------- |
| Cost              | Rating   | Rating   | Rating   |
| Time to Market    | Rating   | Rating   | Rating   |
| Business Value    | Rating   | Rating   | Rating   |
| Risk              | Rating   | Rating   | Rating   |
| User satisfaction | Rating   | Rating   | Rating   |

## Decision Outcome

:material-check-decagram: **Chosen option: [Option X]**

### Technical Justification

:material-cog: Why this option is technically superior:

- **Justification 1**: Technical reasoning
- **Justification 2**: Technical reasoning
- **Justification 3**: Technical reasoning

### Business Justification

:material-briefcase: Why this option aligns with business goals:

- **Justification 1**: Business reasoning
- **Justification 2**: Business reasoning
- **Justification 3**: Business reasoning

## Consequences

### Positive Consequences

:material-plus-circle: Positive outcomes we expect:

- **Positive 1**: Description of positive consequence
- **Positive 2**: Description of positive consequence
- **Positive 3**: Description of positive consequence

### Negative Consequences

:material-minus-circle: Negative outcomes we accept:

- **Negative 1**: Description of negative consequence
- **Negative 2**: Description of negative consequence
- **Negative 3**: Description of negative consequence

## Implementation

:material-hammer-wrench: How we plan to implement this decision:

- **Step 1**: Implementation detail
- **Step 2**: Implementation detail
- **Step 3**: Implementation detail

## Related Decisions

:material-link-variant: Other ADRs related to this decision:

- [ADR-XXXX: Related Decision 1](link-to-related-adr-1)
- [ADR-YYYY: Related Decision 2](link-to-related-adr-2)

## Notes

:material-note-text: Additional notes and references:

- **Note 1**: Additional information
- **Note 2**: Additional information
- **Reference 1**: [Link to reference](https://example.com)
- **Reference 2**: [Link to reference](https://example.com)
