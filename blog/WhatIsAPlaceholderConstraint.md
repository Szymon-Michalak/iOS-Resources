---
slug: WhatIsAPlaceholderConstraint
title: What is a placeholder constraint?
authors: [ace-the-ios-interview]
tags: [uikit]
---

<details>
  <summary>**Sources & Resources**</summary>

  **Main Source:** [Ace the iOS Interview](https://aryamansharda.gumroad.com/l/tcvck)

  **Additional Sources:**

  **Further Reading:**

</details>

:::info[TL/DR]

:::

There may be cases where a constraint can only meaningfully be set at runtime. Perhaps you don't know which subview to constrain a constraint too or maybe you don't know what the constant value of the constraint should be.

If you choose to omit this constraint at compile time, AutoLayout might complain about ambiguous constraints or an unsatisfiable layout. By using placeholder constraints, we can sidestep this issue.

Simply put, a placeholder constraint is a constraint that exists only at design time. They are not included in the layout when the app runs.

You typically add placeholder constraints when you plan to dynamically add constraints at runtime. By temporarily adding the constraints needed to create a non-ambiguous, satisfiable layout, you clear out any warnings or errors in Interface Builder.
