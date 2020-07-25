import React, { useState, forwardRef } from 'react';
import classNames from 'classnames';

const withModal = (WrapperComponent) =>
  forwardRef((props, ref) => {
    const { disabled, className, children, ...restProps } = props;
    // 【模态框显示隐藏属性】
    const [visible, setVisible] = useState(false);

    // 【模态框显示隐藏函数】
    const showModalHandler = (e) => {
      if (e) e.stopPropagation();
      setVisible(true);
    };
    const hideModelHandler = () => {
      setVisible(false);
    };

    const spanClass = classNames(className, { disabled });
    return (
      <>
        <span className={spanClass} onClick={disabled ? null : showModalHandler}>
          {children}
        </span>
        {visible && (
          <WrapperComponent
            visible={visible}
            closeModal={hideModelHandler}
            {...restProps}
            ref={ref}
          />
        )}
      </>
    );
  });

export default withModal;
