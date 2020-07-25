import _classCallCheck from "@babel/runtime/helpers/esm/classCallCheck";
import _createClass from "@babel/runtime/helpers/esm/createClass";
import _assertThisInitialized from "@babel/runtime/helpers/esm/assertThisInitialized";
import _inherits from "@babel/runtime/helpers/esm/inherits";
import _possibleConstructorReturn from "@babel/runtime/helpers/esm/possibleConstructorReturn";
import _getPrototypeOf from "@babel/runtime/helpers/esm/getPrototypeOf";
import _defineProperty from "@babel/runtime/helpers/esm/defineProperty";

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function () { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Date.prototype.toString.call(Reflect.construct(Date, [], function () {})); return true; } catch (e) { return false; } }

function ownKeys(object, enumerableOnly) { var keys = Object.keys(object); if (Object.getOwnPropertySymbols) { var symbols = Object.getOwnPropertySymbols(object); if (enumerableOnly) symbols = symbols.filter(function (sym) { return Object.getOwnPropertyDescriptor(object, sym).enumerable; }); keys.push.apply(keys, symbols); } return keys; }

function _objectSpread(target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i] != null ? arguments[i] : {}; if (i % 2) { ownKeys(Object(source), true).forEach(function (key) { _defineProperty(target, key, source[key]); }); } else if (Object.getOwnPropertyDescriptors) { Object.defineProperties(target, Object.getOwnPropertyDescriptors(source)); } else { ownKeys(Object(source)).forEach(function (key) { Object.defineProperty(target, key, Object.getOwnPropertyDescriptor(source, key)); }); } } return target; }

import React from 'react';
import ReactDOM from 'react-dom';
import Trigger from 'rc-trigger';
import KeyCode from "rc-util/es/KeyCode";
import CSSMotion from "rc-animate/es/CSSMotion";
import classNames from 'classnames';
import { connect } from 'mini-store';
import SubPopupMenu from './SubPopupMenu';
import { placements, placementsRtl } from './placements';
import { noop, loopMenuItemRecursively, getMenuIdFromSubMenuEventKey, menuAllProps } from './util';
var guid = 0;
var popupPlacementMap = {
  horizontal: 'bottomLeft',
  vertical: 'rightTop',
  'vertical-left': 'rightTop',
  'vertical-right': 'leftTop'
};

var updateDefaultActiveFirst = function updateDefaultActiveFirst(store, eventKey, defaultActiveFirst) {
  var menuId = getMenuIdFromSubMenuEventKey(eventKey);
  var state = store.getState();
  store.setState({
    defaultActiveFirst: _objectSpread(_objectSpread({}, state.defaultActiveFirst), {}, _defineProperty({}, menuId, defaultActiveFirst))
  });
};

var SubMenu =
/** @class */
function () {
  var SubMenu = /*#__PURE__*/function (_React$Component) {
    _inherits(SubMenu, _React$Component);

    var _super = _createSuper(SubMenu);

    function SubMenu(props) {
      var _this;

      _classCallCheck(this, SubMenu);

      _this = _super.call(this, props);

      _this.onDestroy = function (key) {
        _this.props.onDestroy(key);
      };
      /**
       * note:
       *  This legacy code that `onKeyDown` is called by parent instead of dom self.
       *  which need return code to check if this event is handled
       */


      _this.onKeyDown = function (e) {
        var keyCode = e.keyCode;
        var menu = _this.menuInstance;
        var _this$props = _this.props,
            isOpen = _this$props.isOpen,
            store = _this$props.store;

        if (keyCode === KeyCode.ENTER) {
          _this.onTitleClick(e);

          updateDefaultActiveFirst(store, _this.props.eventKey, true);
          return true;
        }

        if (keyCode === KeyCode.RIGHT) {
          if (isOpen) {
            menu.onKeyDown(e);
          } else {
            _this.triggerOpenChange(true); // need to update current menu's defaultActiveFirst value


            updateDefaultActiveFirst(store, _this.props.eventKey, true);
          }

          return true;
        }

        if (keyCode === KeyCode.LEFT) {
          var handled;

          if (isOpen) {
            handled = menu.onKeyDown(e);
          } else {
            return undefined;
          }

          if (!handled) {
            _this.triggerOpenChange(false);

            handled = true;
          }

          return handled;
        }

        if (isOpen && (keyCode === KeyCode.UP || keyCode === KeyCode.DOWN)) {
          return menu.onKeyDown(e);
        }

        return undefined;
      };

      _this.onOpenChange = function (e) {
        _this.props.onOpenChange(e);
      };

      _this.onPopupVisibleChange = function (visible) {
        _this.triggerOpenChange(visible, visible ? 'mouseenter' : 'mouseleave');
      };

      _this.onMouseEnter = function (e) {
        var _this$props2 = _this.props,
            key = _this$props2.eventKey,
            onMouseEnter = _this$props2.onMouseEnter,
            store = _this$props2.store;
        updateDefaultActiveFirst(store, _this.props.eventKey, false);
        onMouseEnter({
          key: key,
          domEvent: e
        });
      };

      _this.onMouseLeave = function (e) {
        var _this$props3 = _this.props,
            parentMenu = _this$props3.parentMenu,
            eventKey = _this$props3.eventKey,
            onMouseLeave = _this$props3.onMouseLeave;
        parentMenu.subMenuInstance = _assertThisInitialized(_this);
        onMouseLeave({
          key: eventKey,
          domEvent: e
        });
      };

      _this.onTitleMouseEnter = function (domEvent) {
        var _this$props4 = _this.props,
            key = _this$props4.eventKey,
            onItemHover = _this$props4.onItemHover,
            onTitleMouseEnter = _this$props4.onTitleMouseEnter;
        onItemHover({
          key: key,
          hover: true
        });
        onTitleMouseEnter({
          key: key,
          domEvent: domEvent
        });
      };

      _this.onTitleMouseLeave = function (e) {
        var _this$props5 = _this.props,
            parentMenu = _this$props5.parentMenu,
            eventKey = _this$props5.eventKey,
            onItemHover = _this$props5.onItemHover,
            onTitleMouseLeave = _this$props5.onTitleMouseLeave;
        parentMenu.subMenuInstance = _assertThisInitialized(_this);
        onItemHover({
          key: eventKey,
          hover: false
        });
        onTitleMouseLeave({
          key: eventKey,
          domEvent: e
        });
      };

      _this.onTitleClick = function (e) {
        var _assertThisInitialize = _assertThisInitialized(_this),
            props = _assertThisInitialize.props;

        props.onTitleClick({
          key: props.eventKey,
          domEvent: e
        });

        if (props.triggerSubMenuAction === 'hover') {
          return;
        }

        _this.triggerOpenChange(!props.isOpen, 'click');

        updateDefaultActiveFirst(props.store, _this.props.eventKey, false);
      };

      _this.onSubMenuClick = function (info) {
        // in the case of overflowed submenu
        // onClick is not copied over
        if (typeof _this.props.onClick === 'function') {
          _this.props.onClick(_this.addKeyPath(info));
        }
      };

      _this.onSelect = function (info) {
        _this.props.onSelect(info);
      };

      _this.onDeselect = function (info) {
        _this.props.onDeselect(info);
      };

      _this.getPrefixCls = function () {
        return "".concat(_this.props.rootPrefixCls, "-submenu");
      };

      _this.getActiveClassName = function () {
        return "".concat(_this.getPrefixCls(), "-active");
      };

      _this.getDisabledClassName = function () {
        return "".concat(_this.getPrefixCls(), "-disabled");
      };

      _this.getSelectedClassName = function () {
        return "".concat(_this.getPrefixCls(), "-selected");
      };

      _this.getOpenClassName = function () {
        return "".concat(_this.props.rootPrefixCls, "-submenu-open");
      };

      _this.saveMenuInstance = function (c) {
        // children menu instance
        _this.menuInstance = c;
      };

      _this.addKeyPath = function (info) {
        return _objectSpread(_objectSpread({}, info), {}, {
          keyPath: (info.keyPath || []).concat(_this.props.eventKey)
        });
      };

      _this.triggerOpenChange = function (open, type) {
        var key = _this.props.eventKey;

        var openChange = function openChange() {
          _this.onOpenChange({
            key: key,
            item: _assertThisInitialized(_this),
            trigger: type,
            open: open
          });
        };

        if (type === 'mouseenter') {
          // make sure mouseenter happen after other menu item's mouseleave
          _this.mouseenterTimeout = setTimeout(function () {
            openChange();
          }, 0);
        } else {
          openChange();
        }
      };

      _this.isChildrenSelected = function () {
        var ret = {
          find: false
        };
        loopMenuItemRecursively(_this.props.children, _this.props.selectedKeys, ret);
        return ret.find;
      };

      _this.isOpen = function () {
        return _this.props.openKeys.indexOf(_this.props.eventKey) !== -1;
      };

      _this.adjustWidth = function () {
        /* istanbul ignore if */
        if (!_this.subMenuTitle || !_this.menuInstance) {
          return;
        }

        var popupMenu = ReactDOM.findDOMNode(_this.menuInstance);

        if (popupMenu.offsetWidth >= _this.subMenuTitle.offsetWidth) {
          return;
        }
        /* istanbul ignore next */


        popupMenu.style.minWidth = "".concat(_this.subMenuTitle.offsetWidth, "px");
      };

      _this.saveSubMenuTitle = function (subMenuTitle) {
        _this.subMenuTitle = subMenuTitle;
      };

      _this.getBaseProps = function () {
        var _assertThisInitialize2 = _assertThisInitialized(_this),
            props = _assertThisInitialize2.props;

        return {
          mode: props.mode === 'horizontal' ? 'vertical' : props.mode,
          visible: _this.props.isOpen,
          level: props.level + 1,
          inlineIndent: props.inlineIndent,
          focusable: false,
          onClick: _this.onSubMenuClick,
          onSelect: _this.onSelect,
          onDeselect: _this.onDeselect,
          onDestroy: _this.onDestroy,
          selectedKeys: props.selectedKeys,
          eventKey: "".concat(props.eventKey, "-menu-"),
          openKeys: props.openKeys,
          motion: props.motion,
          onOpenChange: _this.onOpenChange,
          subMenuOpenDelay: props.subMenuOpenDelay,
          parentMenu: _assertThisInitialized(_this),
          subMenuCloseDelay: props.subMenuCloseDelay,
          forceSubMenuRender: props.forceSubMenuRender,
          triggerSubMenuAction: props.triggerSubMenuAction,
          builtinPlacements: props.builtinPlacements,
          defaultActiveFirst: props.store.getState().defaultActiveFirst[getMenuIdFromSubMenuEventKey(props.eventKey)],
          multiple: props.multiple,
          prefixCls: props.rootPrefixCls,
          id: _this.internalMenuId,
          manualRef: _this.saveMenuInstance,
          itemIcon: props.itemIcon,
          expandIcon: props.expandIcon,
          direction: props.direction
        };
      };

      _this.getMotion = function (mode, visible) {
        var _assertThisInitialize3 = _assertThisInitialized(_this),
            haveRendered = _assertThisInitialize3.haveRendered;

        var _this$props6 = _this.props,
            motion = _this$props6.motion,
            rootPrefixCls = _this$props6.rootPrefixCls; // don't show transition on first rendering (no animation for opened menu)
        // show appear transition if it's not visible (not sure why)
        // show appear transition if it's not inline mode

        var mergedMotion = _objectSpread(_objectSpread({}, motion), {}, {
          leavedClassName: "".concat(rootPrefixCls, "-hidden"),
          removeOnLeave: false,
          motionAppear: haveRendered || !visible || mode !== 'inline'
        });

        return mergedMotion;
      };

      var store = props.store,
          eventKey = props.eventKey;

      var _store$getState = store.getState(),
          defaultActiveFirst = _store$getState.defaultActiveFirst;

      _this.isRootMenu = false;
      var value = false;

      if (defaultActiveFirst) {
        value = defaultActiveFirst[eventKey];
      }

      updateDefaultActiveFirst(store, eventKey, value);
      return _this;
    }

    _createClass(SubMenu, [{
      key: "componentDidMount",
      value: function componentDidMount() {
        this.componentDidUpdate();
      }
    }, {
      key: "componentDidUpdate",
      value: function componentDidUpdate() {
        var _this2 = this;

        var _this$props7 = this.props,
            mode = _this$props7.mode,
            parentMenu = _this$props7.parentMenu,
            manualRef = _this$props7.manualRef; // invoke customized ref to expose component to mixin

        if (manualRef) {
          manualRef(this);
        }

        if (mode !== 'horizontal' || !parentMenu.isRootMenu || !this.props.isOpen) {
          return;
        }

        this.minWidthTimeout = setTimeout(function () {
          return _this2.adjustWidth();
        }, 0);
      }
    }, {
      key: "componentWillUnmount",
      value: function componentWillUnmount() {
        var _this$props8 = this.props,
            onDestroy = _this$props8.onDestroy,
            eventKey = _this$props8.eventKey;

        if (onDestroy) {
          onDestroy(eventKey);
        }
        /* istanbul ignore if */


        if (this.minWidthTimeout) {
          clearTimeout(this.minWidthTimeout);
        }
        /* istanbul ignore if */


        if (this.mouseenterTimeout) {
          clearTimeout(this.mouseenterTimeout);
        }
      }
    }, {
      key: "renderChildren",
      value: function renderChildren(children) {
        var _this3 = this;

        var baseProps = this.getBaseProps(); // [Legacy] getMotion must be called before `haveRendered`

        var mergedMotion = this.getMotion(baseProps.mode, baseProps.visible);
        this.haveRendered = true;
        this.haveOpened = this.haveOpened || baseProps.visible || baseProps.forceSubMenuRender; // never rendered not planning to, don't render

        if (!this.haveOpened) {
          return React.createElement("div", null);
        }

        var direction = baseProps.direction;
        return React.createElement(CSSMotion, Object.assign({
          visible: baseProps.visible
        }, mergedMotion), function (_ref) {
          var className = _ref.className,
              style = _ref.style;
          var mergedClassName = classNames("".concat(baseProps.prefixCls, "-sub"), className, _defineProperty({}, "".concat(baseProps.prefixCls, "-rtl"), direction === 'rtl'));
          return React.createElement(SubPopupMenu, Object.assign({}, baseProps, {
            id: _this3.internalMenuId,
            className: mergedClassName,
            style: style
          }), children);
        });
      }
    }, {
      key: "render",
      value: function render() {
        var _classNames2;

        var props = _objectSpread({}, this.props);

        var isOpen = props.isOpen;
        var prefixCls = this.getPrefixCls();
        var isInlineMode = props.mode === 'inline';
        var className = classNames(prefixCls, "".concat(prefixCls, "-").concat(props.mode), (_classNames2 = {}, _defineProperty(_classNames2, props.className, !!props.className), _defineProperty(_classNames2, this.getOpenClassName(), isOpen), _defineProperty(_classNames2, this.getActiveClassName(), props.active || isOpen && !isInlineMode), _defineProperty(_classNames2, this.getDisabledClassName(), props.disabled), _defineProperty(_classNames2, this.getSelectedClassName(), this.isChildrenSelected()), _classNames2));

        if (!this.internalMenuId) {
          if (props.eventKey) {
            this.internalMenuId = "".concat(props.eventKey, "$Menu");
          } else {
            guid += 1;
            this.internalMenuId = "$__$".concat(guid, "$Menu");
          }
        }

        var mouseEvents = {};
        var titleClickEvents = {};
        var titleMouseEvents = {};

        if (!props.disabled) {
          mouseEvents = {
            onMouseLeave: this.onMouseLeave,
            onMouseEnter: this.onMouseEnter
          }; // only works in title, not outer li

          titleClickEvents = {
            onClick: this.onTitleClick
          };
          titleMouseEvents = {
            onMouseEnter: this.onTitleMouseEnter,
            onMouseLeave: this.onTitleMouseLeave
          };
        }

        var style = {};
        var direction = props.direction;

        if (isInlineMode) {
          if (direction === 'rtl') {
            style.paddingRight = props.inlineIndent * props.level;
          } else {
            style.paddingLeft = props.inlineIndent * props.level;
          }
        }

        var ariaOwns = {}; // only set aria-owns when menu is open
        // otherwise it would be an invalid aria-owns value
        // since corresponding node cannot be found

        if (this.props.isOpen) {
          ariaOwns = {
            'aria-owns': this.internalMenuId
          };
        } // expand custom icon should NOT be displayed in menu with horizontal mode.


        var icon = null;

        if (props.mode !== 'horizontal') {
          icon = this.props.expandIcon; // ReactNode

          if (typeof this.props.expandIcon === 'function') {
            icon = React.createElement(this.props.expandIcon, _objectSpread({}, this.props));
          }
        }

        var title = React.createElement("div", Object.assign({
          ref: this.saveSubMenuTitle,
          style: style,
          className: "".concat(prefixCls, "-title"),
          role: "button"
        }, titleMouseEvents, titleClickEvents, {
          "aria-expanded": isOpen
        }, ariaOwns, {
          "aria-haspopup": "true",
          title: typeof props.title === 'string' ? props.title : undefined
        }), props.title, icon || React.createElement("i", {
          className: "".concat(prefixCls, "-arrow")
        }));
        var children = this.renderChildren(props.children);
        var getPopupContainer = props.parentMenu.isRootMenu ? props.parentMenu.props.getPopupContainer : function (triggerNode) {
          return triggerNode.parentNode;
        };
        var popupPlacement = popupPlacementMap[props.mode];
        var popupAlign = props.popupOffset ? {
          offset: props.popupOffset
        } : {};
        var popupClassName = props.mode === 'inline' ? '' : props.popupClassName;
        popupClassName += direction === 'rtl' ? " ".concat(prefixCls, "-rtl") : '';
        var disabled = props.disabled,
            triggerSubMenuAction = props.triggerSubMenuAction,
            subMenuOpenDelay = props.subMenuOpenDelay,
            forceSubMenuRender = props.forceSubMenuRender,
            subMenuCloseDelay = props.subMenuCloseDelay,
            builtinPlacements = props.builtinPlacements;
        menuAllProps.forEach(function (key) {
          return delete props[key];
        }); // Set onClick to null, to ignore propagated onClick event

        delete props.onClick;
        var placement = direction === 'rtl' ? Object.assign({}, placementsRtl, builtinPlacements) : Object.assign({}, placements, builtinPlacements);
        delete props.direction;
        return React.createElement("li", Object.assign({}, props, mouseEvents, {
          className: className,
          role: "menuitem"
        }), isInlineMode && title, isInlineMode && children, !isInlineMode && React.createElement(Trigger, {
          prefixCls: prefixCls,
          popupClassName: classNames("".concat(prefixCls, "-popup"), popupClassName),
          getPopupContainer: getPopupContainer,
          builtinPlacements: placement,
          popupPlacement: popupPlacement,
          popupVisible: isOpen,
          popupAlign: popupAlign,
          popup: children,
          action: disabled ? [] : [triggerSubMenuAction],
          mouseEnterDelay: subMenuOpenDelay,
          mouseLeaveDelay: subMenuCloseDelay,
          onPopupVisibleChange: this.onPopupVisibleChange,
          forceRender: forceSubMenuRender
        }, title));
      }
    }]);

    return SubMenu;
  }(React.Component);

  SubMenu.defaultProps = {
    onMouseEnter: noop,
    onMouseLeave: noop,
    onTitleMouseEnter: noop,
    onTitleMouseLeave: noop,
    onTitleClick: noop,
    manualRef: noop,
    mode: 'vertical',
    title: ''
  };
  return SubMenu;
}();

export { SubMenu };
var connected = connect(function (_ref2, _ref3) {
  var openKeys = _ref2.openKeys,
      activeKey = _ref2.activeKey,
      selectedKeys = _ref2.selectedKeys;
  var eventKey = _ref3.eventKey,
      subMenuKey = _ref3.subMenuKey;
  return {
    isOpen: openKeys.indexOf(eventKey) > -1,
    active: activeKey[subMenuKey] === eventKey,
    selectedKeys: selectedKeys
  };
})(SubMenu);
connected.isSubMenu = true;
export default connected;