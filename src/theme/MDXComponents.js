import React from 'react';
// Import the original mapper
import MDXComponents from '@theme-original/MDXComponents';
import LinkCard from '@site/src/components/LinkCard';

import Timeline from '@site/src/components/Timeline';
import TimelineItem from '@site/src/components/Timeline/TimelineItem';

export default {
  // Re-use the default mapping
  ...MDXComponents,
  // Map the "<Highlight>" tag to our Highlight component
  // `Highlight` will receive all props that were passed to `<Highlight>` in MDX
  LinkCard,
  Timeline,
  TimelineItem,
};