---
title: 'ADR-NNN: Title of the Decision'
status: proposed | accepted | rejected | deprecated | superseded by ADR-XXX
date: YYYY-MM-DD
author: Name <email@example.com>
tags: [tag1, tag2]
---

## :memo: ADR-NNN: Title of the Decision

## :bookmark_tabs: Metadata

| Item         | Value                                                        |
| ------------ | ------------------------------------------------------------ |
| ID           | ADR-NNN                                                      |
| Title        | Concise descriptive title                                    |
| Status       | Proposed \| Accepted \| Rejected \| Deprecated \| Superseded |
| Date         | YYYY-MM-DD                                                   |
| Authors      | Names of authors                                             |
| Approvers    | Names of approvers                                           |
| Stakeholders | Key stakeholders affected by this decision                   |
| Related      | ADR-XXX, ADR-YYY                                             |
| Supersedes   | ADR-ZZZ (if applicable)                                      |

## :dart: Executive Summary

A concise (2-3 sentences) summary of the decision and its primary rationale.

## :bulb: Context

!!! info "Background"

    Describe the architectural context and background information that make this decision necessary. What is the current state that led to this decision point?

## :grey_question: Problem Statement

!!! question "Problem"

    Clearly articulate the specific problem that needs to be solved. This should be a neutral description without implying solutions.

## :pushpin: Drivers

### :briefcase: Business Drivers

- Key business requirements, goals, or strategic initiatives driving this decision
- Market or competitive factors influencing the decision
- Financial or timing constraints
- User needs and expectations

### :wrench: Technical Drivers

- System quality attributes needed (performance, security, scalability, etc.)
- Integration requirements with other systems
- Technical debt considerations
- Platform constraints or opportunities

## :chains: Constraints

!!! warning "Limitations"

    - Legal, regulatory, or compliance requirements that must be met
    - Resource limitations (time, budget, expertise)
    - Organizational policies that cannot be changed
    - Technology standards that must be followed
    - External dependencies that cannot be modified

## :checkered_flag: Objectives

- Specific, measurable goals this decision should achieve
- Critical success factors
- Key performance indicators for evaluating success

## :tornado: Forces

!!! example "Competing Concerns"

    - Tensions between different quality attributes (e.g., performance vs. security)
    - Short-term vs. long-term considerations
    - Competing stakeholder interests
    - Cost vs. value considerations

## :hammer_and_wrench: Solution Options

### Option 1: [Solution Name]

!!! abstract "Description"

    Comprehensive description of this solution approach.

#### :heavy_plus_sign: Pros

- Advantage 1
- Advantage 2
- Advantage 3

#### :heavy_minus_sign: Cons

- Disadvantage 1
- Disadvantage 2
- Disadvantage 3

#### :shield: Mitigation Strategies

- Strategy to address Con 1
- Strategy to address Con 2
- Strategy to address Con 3

### Option 2: [Solution Name]

!!! abstract "Description"

    Comprehensive description of this solution approach.

#### :heavy_plus_sign: Pros

- Advantage 1
- Advantage 2
- Advantage 3

#### :heavy_minus_sign: Cons

- Disadvantage 1
- Disadvantage 2
- Disadvantage 3

#### :shield: Mitigation Strategies

- Strategy to address Con 1
- Strategy to address Con 2
- Strategy to address Con 3

### Option 3: [Solution Name]

!!! abstract "Description"

    Comprehensive description of this solution approach.

#### :heavy_plus_sign: Pros

- Advantage 1
- Advantage 2
- Advantage 3

#### :heavy_minus_sign: Cons

- Disadvantage 1
- Disadvantage 2
- Disadvantage 3

#### :shield: Mitigation Strategies

- Strategy to address Con 1
- Strategy to address Con 2
- Strategy to address Con 3

## :balance_scale: Trade-off Analysis

### Technical Trade-offs

| Criteria        | Weight | Option 1   | Option 2   | Option 3   |
| --------------- | ------ | ---------- | ---------- | ---------- |
| Scalability     | High   | ⭐⭐⭐⭐⭐ | ⭐⭐⭐     | ⭐⭐       |
| Security        | High   | ⭐⭐⭐     | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐   |
| Performance     | Medium | ⭐⭐⭐⭐   | ⭐⭐       | ⭐⭐⭐⭐⭐ |
| Maintainability | Medium | ⭐⭐⭐     | ⭐⭐⭐⭐   | ⭐⭐       |
| Testability     | Medium | ⭐⭐⭐⭐   | ⭐⭐⭐     | ⭐⭐⭐     |
| Complexity      | Low    | ⭐⭐⭐⭐   | ⭐⭐⭐     | ⭐⭐       |
| **Total Score** |        | **XX**     | **XX**     | **XX**     |

### Business Trade-offs

| Criteria             | Weight | Option 1   | Option 2   | Option 3   |
| -------------------- | ------ | ---------- | ---------- | ---------- |
| Cost                 | High   | ⭐⭐⭐     | ⭐⭐⭐⭐⭐ | ⭐⭐       |
| Time-to-market       | High   | ⭐⭐⭐⭐   | ⭐⭐       | ⭐⭐⭐⭐⭐ |
| Strategic alignment  | Medium | ⭐⭐⭐⭐⭐ | ⭐⭐⭐     | ⭐⭐⭐     |
| User experience      | Medium | ⭐⭐⭐     | ⭐⭐⭐⭐   | ⭐⭐⭐⭐⭐ |
| Operational overhead | Low    | ⭐⭐       | ⭐⭐⭐⭐   | ⭐⭐⭐     |
| **Total Score**      |        | **XX**     | **XX**     | **XX**     |

## :rocket: Decision

!!! success "Selected Option"

    **Option X: [Solution Name]**

## :page_with_curl: Justification

### Technical Justification

Clear explanation of why the selected option is technically superior or appropriate given the context, constraints, and objectives.

### Business Justification

Explanation of how the selected option aligns with business drivers, delivers value, and meets stakeholder needs.

## :warning: Consequences

### Positive Consequences

- Positive outcome 1
- Positive outcome 2
- Positive outcome 3

### Negative Consequences

- Negative outcome 1
- Negative outcome 2
- Negative outcome 3

## :compass: Implementation Guidelines

!!! tip "Guidance"

    - Key considerations for implementing this decision
    - Phasing approach if applicable
    - Integration points that require special attention
    - Testing considerations
    - Documentation needs

## :chart_with_upwards_trend: Success Metrics

- Specific metrics to measure the success of this decision
- Data collection approach
- Timeline for evaluation

## :notebook: Notes

Additional information, references, or considerations that didn't fit elsewhere.

## :link: Links

- [Link to relevant documentation](#)
- [Link to related systems or components](#)
- [Link to standards or patterns referenced](#)
- [Link to research or evidence supporting the decision](#)
