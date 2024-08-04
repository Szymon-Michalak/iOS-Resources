---
slug: HowAreContentHuggingAndContentCompressionResistanceDifferent
title: How are Content Hugging and Content Compression Resistance different?
authors: [szymon]
tags: [uikit]
---

At its core, AutoLayout is a constraint solver. It will take some number of views and their constraints and try to formulate an arrangement that satisfies all of them.

Sometimes in this process, AutoLayout will make a view smaller than you’d like or may make it larger than you intend it to be.

In situations like this, we can leverage Content Hugging and Content Compression Resistance for more granular control over how AutoLayout resizes our views.

In order to understand how they work, we need to understand intrinsic content size. This is the minimum size views want to be to show all of their content.
For example, views like `UIImageViews`, `UIButtons`, and `UILabels` all know what their size should be in order to accommodate the content they’re meant to show.

Content Hugging Resistance represents how hard a view is going to fight against being made larger than its intrinsic content size. The higher the priority, the harder it’s going to resist growing.

Conversely, Content Compression Resistance represents how hard a view is going to fight against being made smaller than its intrinsic content size. The higher the priority, the harder it's going to resist shrinking.

So, when AutoLayout is trying to resolve constraints, it’s going to look at these properties and their respective priorities to figure out which views it can make larger and which views it can make smaller.
