---
# [ADR Number]: [Short Title of Decision]

| Metadata        | Value                                   |
| :-------------- | :-------------------------------------- |
| **Status:**     | :material-check-circle:{ .md-color--green } Proposed / :material-check-circle:{ .md-color--green } Accepted / :material-alert-circle:{ .md-color--orange } Deprecated / :material-close-circle:{ .md-color--red } Superseded |
| **Deciders:**   | [List of people involved in the decision] |
| **Date:**       | [YYYY-MM-DD]                            |
| **Supersedes:** | [ADR Number] (if applicable)             |
| **Superseded by:**| [ADR Number] (if applicable)             |
| **Related:**    | [Links to related ADRs, issues, PRs]    |
| **Drivers:**    | [Technical, Business] (See Drivers section) |
| **Objectives:** | [See Objectives section]                 |
| **Constraints:**| [See Constraints section]                |
| **Access Hub:** | [:material-link: Link to Access Hub File](path/to/access_hub.md) (if applicable) |
---

## Context and Problem Statement

[:material-book-open-page-variant: Context]{ .md-color--blue }

\[Clearly and concisely describe the context and background of the decision. What is the issue or problem that needs to be addressed? What are the relevant facts and circumstances? Avoid jargon and be specific. This should be understandable to someone unfamiliar with the project, but familiar with the domain. Use diagrams if they help explain the context. Focus on *why* a decision is needed, not *what* the decision is.\]

[:material-puzzle: Problem Statement]{ .md-color--blue }

[A concise statement of the problem. This should be a single sentence or a very short paragraph. It should be clear what problem this ADR is trying to solve.]

## Drivers

[:material-steering: Drivers]{ .md-color--blue }

\[List the key drivers influencing this decision. Categorize them as *Technical* or *Business*. Use bullet points for clarity. These are the "forces" at play.\]

- **Technical:**
    - [Technical Driver 1: e.g., Scalability requirements]
    - [Technical Driver 2: e.g., Performance targets]
    - [Technical Driver 3: e.g., Existing technology stack]
- **Business:**
    - [Business Driver 1: e.g., Time-to-market constraints]
    - [Business Driver 2: e.g., Budget limitations]
    - [Business Driver 3: e.g., Regulatory compliance]

## Constraints

[:material-block-helper: Constraints]{ .md-color--blue }

[List any constraints that limit the possible solutions. These are non-negotiable limitations. Use bullet points.]

- [Constraint 1: e.g., Must use existing database]
- [Constraint 2: e.g., Must be deployable on platform X]
- [Constraint 3: e.g., Must integrate with service Y]

## Objectives

[:material-target: Objectives]{ .md-color--blue }

[List the specific, measurable, achievable, relevant, and time-bound (SMART) objectives that the chosen solution should achieve. Use bullet points.]

- [Objective 1: e.g., Reduce latency to under 200ms]
- [Objective 2: e.g., Achieve 99.99% uptime]
- [Objective 3: e.g., Support 10,000 concurrent users]

## Considered Solutions

[:material-lightbulb-on: Considered Solutions]{ .md-color--blue }

[Describe each considered solution in detail. For each solution, include:]

### Solution \[Number\]: [Solution Name]

[Detailed description of the solution. Include diagrams, code snippets, or other relevant artifacts as needed. Be thorough and clear.]

#### Pros

[:material-thumb-up: Pros]{ .md-color--green }

[List the advantages of this solution. Use bullet points.]

- [Pro 1]
- [Pro 2]
- [Pro 3]

#### Cons

[:material-thumb-down: Cons]{ .md-color--red }

[List the disadvantages of this solution. Use bullet points.]

- [Con 1]
- [Con 2]
- [Con 3]

#### Mitigation Strategies

[:material-shield-check: Mitigation Strategies]{ .md-color--orange }

[For each significant con, describe how the risk can be mitigated. Use bullet points.]

- **\[Con\]:** [Mitigation Strategy]
- **\[Con\]:** [Mitigation Strategy]

#### Consequences

[:material-alert-circle: Consequences]{ .md-color--orange }

[Describe the potential consequences (both positive and negative) of adopting this solution. Consider long-term impacts.]

- [Consequence 1]
- [Consequence 2]

---

**(Repeat the above "Solution [Number]" section for each considered solution)**

## Trade-off Analysis

[:material-scale-balance: Trade-off Analysis]{ .md-color--blue }

[Provide a comparative analysis of the considered solutions. Use a table to summarize the pros, cons, and other relevant factors. This helps visualize the trade-offs.]

### Technical Trade-offs

| Feature/Criteria | Solution 1 | Solution 2 | Solution 3 | ... |
| :--------------- | :--------- | :--------- | :--------- | :-- |
| [Criteria 1]     | [Value]    | [Value]    | [Value]    | ... |
| [Criteria 2]     | [Value]    | [Value]    | [Value]    | ... |
| [Criteria 3]     | [Value]    | [Value]    | [Value]    | ... |
| ...              | ...        | ...        | ...        | ... |

### Business Trade-offs

| Feature/Criteria | Solution 1 | Solution 2 | Solution 3 | ... |
| :--------------- | :--------- | :--------- | :--------- | :-- |
| [Criteria 1]     | [Value]    | [Value]    | [Value]    | ... |
| [Criteria 2]     | [Value]    | [Value]    | [Value]    | ... |
| [Criteria 3]     | [Value]    | [Value]    | [Value]    | ... |
| ...              | ...        | ...        | ...        | ... |

## Decision

[:material-check-decagram: Decision]{ .md-color--green }

**Chosen Solution:** [Solution Number] - [Solution Name]

[Clearly state the chosen solution.]

## Justification

[:material-comment-question: Justification]{ .md-color--blue }

[Provide a detailed justification for the chosen solution. Explain why this solution was selected over the alternatives. Address both technical and business considerations. Refer back to the drivers, constraints, objectives, and trade-off analysis.]

### Technical Justification

[Explain the technical reasons for choosing this solution. Be specific and reference the trade-off analysis.]

### Business Justification

[Explain the business reasons for choosing this solution. Be specific and reference the trade-off analysis.]

## Consequences

[:material-alert-circle: Consequences (Revisited)]{ .md-color--orange }

[Reiterate and expand upon the consequences of the chosen solution. This section should provide a final, comprehensive overview of the expected impacts.]

- [Consequence 1]
- [Consequence 2]
- ...

## Notes (Optional)

[:material-note-text: Notes]{ .md-color--blue }

[Include any additional notes, comments, or considerations that are relevant to the decision but don't fit elsewhere.]
