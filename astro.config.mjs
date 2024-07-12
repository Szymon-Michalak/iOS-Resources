import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import AutoImport from 'astro-auto-import';
import mdx from '@astrojs/mdx';

import MDXCodeBlocks, { mdxCodeBlockAutoImport } from 'astro-mdx-code-blocks';

// https://astro.build/config
export default defineConfig({
  site: 'https://szymon-michalak.github.io',
  base: 'iOS-Resources',
  integrations: [starlight({
    title: 'iOS Resources',
    customCss: [
        './src/styles/theme.css',
        './src/styles/custom.css',
        './src/styles/prism.css',
    ],
    components: {
        Head: "./src/components/starlight/Head.astro",
    },
    social: {
      github: 'https://github.com/szymon-michalak/iOS-Resources'
    },
    sidebar: [{
      label: '🖊️ Blogs',
      autogenerate: {
        directory: 'blogs'
      }
    }, {
      label: '🎥 Channels',
      autogenerate: {
        directory: 'channels'
      }
    }, {
      label: '🎓 Courses',
      autogenerate: {
        directory: 'courses'
      }
    }, {
      label: '📚 Books',
      autogenerate: {
        directory: 'books'
      }
    }, {
      label: '📂 Repositories',
      autogenerate: {
        directory: 'repositories'
      }
    }, {
      label: '🛠️ Tools',
      autogenerate: {
        directory: 'tools'
      }
    }]
  }),
  AutoImport({
    imports: [
      {
        '@astrojs/starlight/components': ['LinkCard', 'CardGrid', 'Card'],
      },
      mdxCodeBlockAutoImport('./src/components/CodeBlock.astro'),
    ],
  }),
  MDXCodeBlocks(),
  mdx(),
]
});
