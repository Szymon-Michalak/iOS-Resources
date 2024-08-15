import React, { CSSProperties } from 'react';
import clsx from 'clsx';
import styles from '../styles.module.css';

import Icon from './Icon'; // Ensure the path is correct based on your file structure


const TimelineItem = ({
    className, // Custom classes for the button
    style, // Custom styles for the button
    children, // Children elements
    align = 'left', // position of item
    textAlign = 'justify', // text position
    variant = 'primary', // background color 
    italic = false,  // style italic for text
    noDecoration = false, // style no text decoration
    transform,  // option for transform text to UPPERCASE TEXT lowercase text or Capitalize Text
    breakWord = false, //  option for break text, the text will break at the a word boundary so it will not break in the middle of a word.
    truncate = false, // The option is for very long text that will be truncated if there is not enough space to display it in a single line on the screen. It's truncated by adding...
    weight, // The option for text weight Bold Semibold Normal Light
    color, // text color 
    shadow = 'tl', // shadow option
    url = '',

}) => {
    const boxshadow = shadow ? `item shadow--${shadow}` : '';
    const bgcolor = variant ? styles[`timeline__content--${variant}`] : '';
    const itemalign = align ? styles[`timeline__item--${align}`] : '';
    const text = textAlign ? `text--${textAlign}` : '';
    const textColor = color ? `text--${color}` : '';
    const textItalic = italic ? 'text--italic' : '';
    const textDecoration = noDecoration ? 'text-no-decoration' : '';
    const textType = transform ? `text--${transform}` : '';
    const textBreak = breakWord ? 'text--break' : '';
    const textTruncate = truncate ? 'text--truncate' : '';
    const textWeight = weight ? `text--${weight}` : '';

    return (
        <div className={clsx(styles.timeline__item,
            itemalign
        )} >
            <a href={url}>
                <div className={clsx(styles.timeline__content,
                                bgcolor,
                                className,
                                boxshadow,
                                text,
                                textType,
                                textColor,
                                textItalic,
                                textDecoration,
                                textBreak,
                                textTruncate,
                                textWeight
                    )}
                    style={style}>

                    {children}
                </div>
            </a>
        </div>
    );
};


export default TimelineItem;

