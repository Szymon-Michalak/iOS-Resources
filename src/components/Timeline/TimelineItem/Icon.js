import React from 'react';
import PropTypes from 'prop-types';
import clsx from 'clsx';

const Icon = ({ name, size, className }) => {
  return (
    <i className={clsx('icon', className)} style={{ fontSize: size }}>
      {/* Use a mapping of icon names to actual icons if needed */}
      {name === 'right-arrow' && '→'}
      {/* Add more icon mappings as needed */}
    </i>
  );
};

Icon.propTypes = {
  name: PropTypes.string.isRequired,
  size: PropTypes.string,
  className: PropTypes.string,
};

export default Icon;
