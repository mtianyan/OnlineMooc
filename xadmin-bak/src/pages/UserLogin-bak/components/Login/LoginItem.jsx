import {Button, Col, Form, Input, message, Row, Spin} from 'antd';
import React, {useCallback, useEffect, useState} from 'react';
import omit from 'omit.js';
import ItemMap from './map';
import LoginContext from './LoginContext';
import styles from './index.less';

const FormItem = Form.Item;

const getFormItemOptions = ({onChange, defaultValue, customProps = {}, rules}) => {
  const options = {
    rules: rules || customProps.rules,
  };

  if (onChange) {
    options.onChange = onChange;
  }

  if (defaultValue) {
    options.initialValue = defaultValue;
  }

  return options;
};

const LoginItem = props => {
  const [count, setCount] = useState(props.countDown || 0);
  const [timing, setTiming] = useState(false); // 这么写是为了防止restProps中 带入 onChange, defaultValue, rules props tabUtil

  const {
    onChange,
    customProps,
    defaultValue,
    rules,
    name,
    getCaptchaButtonText,
    getCaptchaSecondText,
    updateActive,
    type,
    tabUtil,
    codeImg,
    codeLoading,
    onGetPicCaptcha,
    onGetEmail,
    dispatch,
    ...restProps
  } = props;

  const onGetPic = () => {
    const {onGetPicCaptcha} = props;
    if (onGetPicCaptcha) {
      onGetPicCaptcha();
    }
  };
  const onGetCaptcha = useCallback(async email => {
    const {onGetEmail} = props;
    const ret = onGetEmail(email);
    console.log("ret")
    console.log(ret)
    setTiming(true);
  }, []);
  useEffect(() => {
    let interval = 0;
    const {countDown} = props;

    if (timing) {
      interval = window.setInterval(() => {
        setCount(preSecond => {
          if (preSecond <= 1) {
            setTiming(false);
            clearInterval(interval); // 重置秒数

            return countDown || 60;
          }

          return preSecond - 1;
        });
      }, 1000);
    }

    return () => clearInterval(interval);
  }, [timing]);

  if (!name) {
    return null;
  } // get getFieldDecorator props

  const options = getFormItemOptions(props);
  const {validateStatus, help} = props;
  const otherProps = restProps || {};

  if (type === 'Captcha') {
    const inputProps = omit(otherProps, ['onGetCaptcha', 'countDown']);
    return (
      <FormItem shouldUpdate noStyle>
        {({getFieldValue, getFieldError}) => (
          <Row gutter={8}>
            <Col span={16}>
              <FormItem name={name} {...options} validateStatus={validateStatus} help={help}>
                <Input {...customProps} {...inputProps} />
              </FormItem>
            </Col>
            <Col span={8}>
              <Button
                disabled={timing}
                className={styles.getCaptcha}
                size="large"
                onClick={() => {
                  const value = getFieldValue('email');
                  const value_error = getFieldError('email');
                  if (value_error.length !== 0) {
                    message.error('请先修正邮箱，再发送');
                  } else {
                    onGetCaptcha(value);
                  }
                }}
              >
                {timing ? `${count} 秒` : '获取验证码'}
              </Button>
            </Col>
          </Row>
        )}
      </FormItem>
    );
  } else if (type === 'PicCaptcha') {
    const inputProps = omit(otherProps, ['onGetPicCaptcha', 'codeimg']);
    return (
      <FormItem shouldUpdate noStyle>
        {({getFieldValue}) => (
          <Row gutter={8}>
            <Col span={16}>
              <FormItem name={name} {...options} validateStatus={validateStatus} help={help}>
                <Input {...customProps} {...inputProps} />
              </FormItem>
            </Col>
            <Col span={8}>
              <Spin spinning={codeLoading}>
                <img alt="Captcha"
                     style={{width: '100%', height: 35, marginTop: 2.5, marginLeft: 10}}
                     src={codeImg}
                     onClick={onGetPic}
                />
              </Spin>
            </Col>
          </Row>
        )}
      </FormItem>
    );
  } else if (type === 'Password') {
    return (
      <FormItem name={name} {...options} validateStatus={validateStatus} help={help}>
        <Input.Password {...customProps} {...otherProps} />
      </FormItem>
    );
  }

  return (
    <FormItem name={name} {...options} validateStatus={validateStatus} help={help}>
      <Input {...customProps} {...otherProps} />
    </FormItem>
  );
};

const LoginItems = {};
Object.keys(ItemMap).forEach(key => {
  const item = ItemMap[key];

  LoginItems[key] = props => (
    <LoginContext.Consumer>
      {context => (
        <LoginItem
          customProps={item.props}
          rules={item.rules}
          {...props}
          type={key}
          {...context}
          updateActive={context.updateActive}
        />
      )}
    </LoginContext.Consumer>
  );
});

export default LoginItems;
