import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'iOSwift.dev',
  tagline: 'Everything you need to swift.',
  favicon: 'img/favicon.svg',

  // Set the production url of your site here
  url: 'https://ioswift.dev',
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: '/',

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'Szymon-Michalak', // Usually your GitHub org/user name.
  projectName: 'iOS-Resources', // Usually your repo name.

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },
     themes: [
        'docusaurus-theme-github-codeblock',
       '@docusaurus/theme-mermaid',
    ],
    markdown: {
        mermaid: true,
    },
  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/Szymon-Michalak/iOS-Resources',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/Szymon-Michalak/iOS-Resources',
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    codeblock: {
        showGithubLink: true,
        githubLinkLabel: 'View on GitHub',
        showRunmeLink: false,
        runmeLinkLabel: 'Checkout via Runme'
    },
    colorMode: {
        defaultMode: 'light',
        disableSwitch: false,
        respectPrefersColorScheme: true,
    },
    // Replace with your project's social card
    image: 'img/docusaurus-social-card.jpg',
    navbar: {
      title: 'iOSwift',
      logo: {
        alt: 'iOSwift.dev',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'resourcesSidebar',
          position: 'left',
          label: 'Resources',
        },
        {
            type: 'docSidebar',
            sidebarId: 'algorithmsSidebar',
            position: 'left',
            label: 'Algorithms',
          },
        {
            type: 'docSidebar',
            sidebarId: 'componentsSidebar',
            position: 'left',
            label: 'Components',
        },
        {
            type: 'docSidebar',
            sidebarId: 'snippetsSidebar',
            position: 'left',
            label: 'Snippets',
        },
        {
            type: 'docSidebar',
            sidebarId: 'designSidebar',
            position: 'left',
            label: 'Design',
        },
        {to: '/blog', label: 'Blog', position: 'left'},
        {
          href: 'https://github.com/facebook/docusaurus',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
    algolia: {
        // The application ID provided by Algolia
        appId: 'NXE4M7WUHZ',
  
        // Public API key: it is safe to commit it
        apiKey: 'ed0052a75de2bcc2d1bb3efa4a9ff1a6',
  
        indexName: 'ioswift',
        contextualSearch: false,
      },
  } satisfies Preset.ThemeConfig,
};

export default config;
