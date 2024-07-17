import React from 'react';
import PropTypes from 'prop-types';
import clsx from 'clsx';
import Icon from './Icon'; // Ensure the path is correct based on your file structure
import styles from './LinkCard.module.css';

const LinkCard = ({ title, description, ...attributes }) => {
  return (
    <a {...attributes}>
    <div className={styles.slLinkCard}>
      <span className={clsx(styles.slFlex, styles.stack)}>
          <span className={styles.title} dangerouslySetInnerHTML={{ __html: title }} />
        {description && (
          <span className={styles.description} dangerouslySetInnerHTML={{ __html: description }} />
        )}
      </span>
      <Icon name="right-arrow" size="1.333em" className={clsx(styles.icon, styles.rtlFlip)} />
    </div>
    </a>
  );
};

LinkCard.propTypes = {
  title: PropTypes.string.isRequired,
  description: PropTypes.string,
};

export default LinkCard;
