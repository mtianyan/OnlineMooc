import _extends from "@babel/runtime/helpers/esm/extends";
import _classCallCheck from "@babel/runtime/helpers/esm/classCallCheck";
import _createClass from "@babel/runtime/helpers/esm/createClass";
import _inherits from "@babel/runtime/helpers/esm/inherits";
import _possibleConstructorReturn from "@babel/runtime/helpers/esm/possibleConstructorReturn";
import _getPrototypeOf from "@babel/runtime/helpers/esm/getPrototypeOf";

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function () { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Date.prototype.toString.call(Reflect.construct(Date, [], function () {})); return true; } catch (e) { return false; } }

import React from 'react';
import { menuAllProps } from './util';

var MenuItemGroup =
/** @class */
function () {
  var MenuItemGroup = /*#__PURE__*/function (_React$Component) {
    _inherits(MenuItemGroup, _React$Component);

    var _super = _createSuper(MenuItemGroup);

    function MenuItemGroup() {
      var _this;

      _classCallCheck(this, MenuItemGroup);

      _this = _super.apply(this, arguments);

      _this.renderInnerMenuItem = function (item) {
        var _this$props = _this.props,
            renderMenuItem = _this$props.renderMenuItem,
            index = _this$props.index;
        return renderMenuItem(item, index, _this.props.subMenuKey);
      };

      return _this;
    }

    _createClass(MenuItemGroup, [{
      key: "render",
      value: function render() {
        var props = _extends({}, this.props);

        var _props$className = props.className,
            className = _props$className === void 0 ? '' : _props$className,
            rootPrefixCls = props.rootPrefixCls;
        var titleClassName = "".concat(rootPrefixCls, "-item-group-title");
        var listClassName = "".concat(rootPrefixCls, "-item-group-list");
        var title = props.title,
            children = props.children;
        menuAllProps.forEach(function (key) {
          return delete props[key];
        }); // Set onClick to null, to ignore propagated onClick event

        delete props.onClick;
        delete props.direction;
        return React.createElement("li", Object.assign({}, props, {
          className: "".concat(className, " ").concat(rootPrefixCls, "-item-group")
        }), React.createElement("div", {
          className: titleClassName,
          title: typeof title === 'string' ? title : undefined
        }, title), React.createElement("ul", {
          className: listClassName
        }, React.Children.map(children, this.renderInnerMenuItem)));
      }
    }]);

    return MenuItemGroup;
  }(React.Component);

  MenuItemGroup.isMenuItemGroup = true;
  MenuItemGroup.defaultProps = {
    disabled: true
  };
  return MenuItemGroup;
}();

export default MenuItemGroup;