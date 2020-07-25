import _defineProperty from "@babel/runtime/helpers/esm/defineProperty";
import _classCallCheck from "@babel/runtime/helpers/esm/classCallCheck";
import _createClass from "@babel/runtime/helpers/esm/createClass";
import _assertThisInitialized from "@babel/runtime/helpers/esm/assertThisInitialized";
import _inherits from "@babel/runtime/helpers/esm/inherits";
import _possibleConstructorReturn from "@babel/runtime/helpers/esm/possibleConstructorReturn";
import _getPrototypeOf from "@babel/runtime/helpers/esm/getPrototypeOf";

function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function () { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Date.prototype.toString.call(Reflect.construct(Date, [], function () {})); return true; } catch (e) { return false; } }

import React from 'react';
import { Provider, create } from 'mini-store';
import SubPopupMenu, { getActiveKey } from './SubPopupMenu';
import { noop } from './util';
import { getMotion } from './utils/legacyUtil';

var Menu =
/** @class */
function () {
  var Menu = /*#__PURE__*/function (_React$Component) {
    _inherits(Menu, _React$Component);

    var _super = _createSuper(Menu);

    function Menu(props) {
      var _this;

      _classCallCheck(this, Menu);

      _this = _super.call(this, props);

      _this.onSelect = function (selectInfo) {
        var _assertThisInitialize = _assertThisInitialized(_this),
            props = _assertThisInitialize.props;

        if (props.selectable) {
          // root menu
          var _this$store$getState = _this.store.getState(),
              _selectedKeys = _this$store$getState.selectedKeys;

          var selectedKey = selectInfo.key;

          if (props.multiple) {
            _selectedKeys = _selectedKeys.concat([selectedKey]);
          } else {
            _selectedKeys = [selectedKey];
          }

          if (!('selectedKeys' in props)) {
            _this.store.setState({
              selectedKeys: _selectedKeys
            });
          }

          props.onSelect(_objectSpread(_objectSpread({}, selectInfo), {}, {
            selectedKeys: _selectedKeys
          }));
        }
      };

      _this.onClick = function (e) {
        _this.props.onClick(e);
      }; // onKeyDown needs to be exposed as a instance method
      // e.g., in rc-select, we need to navigate menu item while
      // current active item is rc-select input box rather than the menu itself


      _this.onKeyDown = function (e, callback) {
        _this.innerMenu.getWrappedInstance().onKeyDown(e, callback);
      };

      _this.onOpenChange = function (event) {
        var _assertThisInitialize2 = _assertThisInitialized(_this),
            props = _assertThisInitialize2.props;

        var openKeys = _this.store.getState().openKeys.concat();

        var changed = false;

        var processSingle = function processSingle(e) {
          var oneChanged = false;

          if (e.open) {
            oneChanged = openKeys.indexOf(e.key) === -1;

            if (oneChanged) {
              openKeys.push(e.key);
            }
          } else {
            var index = openKeys.indexOf(e.key);
            oneChanged = index !== -1;

            if (oneChanged) {
              openKeys.splice(index, 1);
            }
          }

          changed = changed || oneChanged;
        };

        if (Array.isArray(event)) {
          // batch change call
          event.forEach(processSingle);
        } else {
          processSingle(event);
        }

        if (changed) {
          if (!('openKeys' in _this.props)) {
            _this.store.setState({
              openKeys: openKeys
            });
          }

          props.onOpenChange(openKeys);
        }
      };

      _this.onDeselect = function (selectInfo) {
        var _assertThisInitialize3 = _assertThisInitialized(_this),
            props = _assertThisInitialize3.props;

        if (props.selectable) {
          var _selectedKeys2 = _this.store.getState().selectedKeys.concat();

          var selectedKey = selectInfo.key;

          var index = _selectedKeys2.indexOf(selectedKey);

          if (index !== -1) {
            _selectedKeys2.splice(index, 1);
          }

          if (!('selectedKeys' in props)) {
            _this.store.setState({
              selectedKeys: _selectedKeys2
            });
          }

          props.onDeselect(_objectSpread(_objectSpread({}, selectInfo), {}, {
            selectedKeys: _selectedKeys2
          }));
        }
      };

      _this.getOpenTransitionName = function () {
        var _assertThisInitialize4 = _assertThisInitialized(_this),
            props = _assertThisInitialize4.props;

        var transitionName = props.openTransitionName;
        var animationName = props.openAnimation;

        if (!transitionName && typeof animationName === 'string') {
          transitionName = "".concat(props.prefixCls, "-open-").concat(animationName);
        }

        return transitionName;
      };

      _this.setInnerMenu = function (node) {
        _this.innerMenu = node;
      };

      _this.isRootMenu = true;
      var selectedKeys = props.defaultSelectedKeys;
      var openKeys = props.defaultOpenKeys;

      if ('selectedKeys' in props) {
        selectedKeys = props.selectedKeys || [];
      }

      if ('openKeys' in props) {
        openKeys = props.openKeys || [];
      }

      _this.store = create({
        selectedKeys: selectedKeys,
        openKeys: openKeys,
        activeKey: {
          '0-menu-': getActiveKey(props, props.activeKey)
        }
      });
      return _this;
    }

    _createClass(Menu, [{
      key: "componentDidMount",
      value: function componentDidMount() {
        this.updateMiniStore();
      }
    }, {
      key: "componentDidUpdate",
      value: function componentDidUpdate() {
        this.updateMiniStore();
      }
    }, {
      key: "updateMiniStore",
      value: function updateMiniStore() {
        if ('selectedKeys' in this.props) {
          this.store.setState({
            selectedKeys: this.props.selectedKeys || []
          });
        }

        if ('openKeys' in this.props) {
          this.store.setState({
            openKeys: this.props.openKeys || []
          });
        }
      }
    }, {
      key: "render",
      value: function render() {
        var props = _objectSpread({}, this.props);

        props.className += " ".concat(props.prefixCls, "-root");

        if (props.direction === 'rtl') {
          props.className += " ".concat(props.prefixCls, "-rtl");
        }

        props = _objectSpread(_objectSpread({}, props), {}, {
          onClick: this.onClick,
          onOpenChange: this.onOpenChange,
          onDeselect: this.onDeselect,
          onSelect: this.onSelect,
          parentMenu: this,
          motion: getMotion(this.props)
        });
        delete props.openAnimation;
        delete props.openTransitionName;
        return React.createElement(Provider, {
          store: this.store
        }, React.createElement(SubPopupMenu, Object.assign({}, props, {
          ref: this.setInnerMenu
        }), this.props.children));
      }
    }]);

    return Menu;
  }(React.Component);

  Menu.defaultProps = {
    selectable: true,
    onClick: noop,
    onSelect: noop,
    onOpenChange: noop,
    onDeselect: noop,
    defaultSelectedKeys: [],
    defaultOpenKeys: [],
    subMenuOpenDelay: 0.1,
    subMenuCloseDelay: 0.1,
    triggerSubMenuAction: 'hover',
    prefixCls: 'rc-menu',
    className: '',
    mode: 'vertical',
    style: {},
    builtinPlacements: {},
    overflowedIndicator: React.createElement("span", null, "\xB7\xB7\xB7")
  };
  return Menu;
}();

export default Menu;