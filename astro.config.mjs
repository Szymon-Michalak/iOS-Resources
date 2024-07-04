import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import AutoImport from 'astro-auto-import';
import mdx from '@astrojs/mdx';

// https://astro.build/config
export default defineConfig({
  integrations: [starlight({
    title: 'iOS Resources',
    customCss: [
        './src/styles/theme.css',
        './src/styles/custom.css'
    ],
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
    ],
  }),

  // Make sure the MDX integration is included AFTER astro-auto-import
  mdx(),
]
});
