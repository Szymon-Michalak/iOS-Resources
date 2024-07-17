/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import clsx from 'clsx';
import Link from '@docusaurus/Link';
import Translate, {translate} from '@docusaurus/Translate';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import useBaseUrl, {useBaseUrlUtils} from '@docusaurus/useBaseUrl';

import Layout from '@theme/Layout';

import Heading from '@theme/Heading';

import styles from './styles.module.css';

function HeroBanner() {
  return (
    <div className={styles.hero} data-theme="dark">
      <div className={styles.heroInner}>
        <Heading as="h1" className={styles.heroProjectTagline}>
          <img
            alt={translate({message: 'Docusaurus with Keytar'})}
            className={styles.heroLogo}
            src={useBaseUrl('/img/Logo.svg')}
            width="300"
            height="300"
          />
          <span
            className={styles.heroTitleTextHtml}
            // eslint-disable-next-line react/no-danger
            dangerouslySetInnerHTML={{
              __html: translate({
                id: 'homepage.hero.title',
                message:
                  'Find every resource <b>quickly</b>, focus on your <b>coding</b>',
                description:
                  'Home page hero title, can contain simple html tags',
              }),
            }}
          />
        </Heading>
        <div className={styles.indexCtas}>
          <Link className="button button--primary" to="/docs/resourcesDocs/blogs/CreateWithSwift">
            <Translate>Start Here</Translate>
          </Link>
          <Link className="button button--info" to="/docs/algorithmsDocs/Online">
            <Translate>Algorithms</Translate>
          </Link>
        </div>
      </div>
    </div>
  );
}



function TopBanner() {
  const announcedVersion = useDocusaurusContext().siteConfig.customFields
    ?.announcedVersion as string;

  return (
    <div className={styles.topBanner}>
      <div className={styles.topBannerTitle}>
      {'🎉\xa0'}
        <span className={styles.topBannerTitleText}>
        <Translate
            id="homepage.banner.launch.newVersion"
            values={{newVersion: announcedVersion}}>
            {'iOSwift.dev — everything you need to code iOStuff!️'}
          </Translate>
          </span>
          {'\xa0🥳'}
        {/* <Link
          to={`/blog/`}
          className={styles.topBannerTitleText}>
          <Translate
            id="homepage.banner.launch.newVersion"
            values={{newVersion: announcedVersion}}>
            {'iOSwift.dev — everything you need to code iOStuff!️'}
          </Translate>
        </Link> */}
      </div>
      {/*
      <div style={{display: 'flex', alignItems: 'center', flexWrap: 'wrap'}}>
        <div style={{flex: 1, whiteSpace: 'nowrap'}}>
          <div className={styles.topBannerDescription}>
            We are on{' '}
            <b>
              <Link to="https://www.producthunt.com/posts/docusaurus-2-0">
                ProductHunt
              </Link>{' '}
              and{' '}
              <Link to="https://news.ycombinator.com/item?id=32303052">
                Hacker News
              </Link>{' '}
              today!
            </b>
          </div>
        </div>
        <div
          style={{
            flexGrow: 1,
            flexShrink: 0,
            padding: '0.5rem',
            display: 'flex',
            justifyContent: 'center',
          }}>
          <ProductHuntCard />
          <HackerNewsIcon />
        </div>
      </div>
      */}
    </div>
  );
}

export default function Home(): JSX.Element {
  const {
    siteConfig: {customFields, tagline},
  } = useDocusaurusContext();
  const {description} = customFields as {description: string};
  return (
    <Layout title={tagline} description={description}>
      <main>
        <TopBanner />
        <HeroBanner />  
      </main>
    </Layout>
  );
}