import {DeleteOutlined, DownOutlined, EditOutlined, PlusOutlined, ExportOutlined} from '@ant-design/icons';
import {notification, Button, Col, Descriptions, Divider, Dropdown, Form, Input, Menu, message, Popconfirm, Popover, Row, Select, Tag, Transfer,Switch} from 'antd';
import React, {useEffect,useRef, useState} from 'react';
import KeyOutlined from '@ant-design/icons/lib/icons/KeyOutlined';
import {PageHeaderWrapper} from '@ant-design/pro-layout';
import ProTable from 'mtianyan-pro-table';
import CreateForm from './components/CreateForm';
import {addUser, queryUser, removeUser, updateUser,queryUserVerboseName, queryUserListDisplay, queryUserDisplayOrder} from './service';
import UpdateForm from './components/UpdateForm';
import UploadAvatar from '@/components/UploadAvatar';
import {queryGroup} from '@/pages/AutoGenPage/GroupList/service';import {queryPermission} from '@/pages/AutoGenPage/PermissionList/service';
import {updateUserPassword} from './service';
import UpdatePasswordForm from './components/UpdatePasswordForm';
import moment from 'moment';
const {Option} = Select;
import { dealPureSelectField, orderForm, exportExcelCurrent, exportExcelAll, getUpdateColumns, dealRemoveError, dealError, BooleanDisplay, dealDateTimeDisplay, dealManyToManyField, dealTime, deepCopy, fieldErrorHandle, getTableColumns, renderManyToMany, richTrans,dealForeignKeyField, renderForeignKey, fieldsLevelErrorHandle} from '@/utils/utils';
import 'braft-editor/dist/index.css'
const FormItem = Form.Item;
const TableList = () => {
  const [createModalVisible, handleModalVisible] = useState(false);
  const [updateModalVisible, handleUpdateModalVisible] = useState(false);
  const [updatePassWordModalVisible, handleUpdatePassWordModalVisible] = useState(false);
const [updatePasswordForm] = Form.useForm();
  const [updateFormValues, setUpdateFormValues] = useState({});
  const actionRef = useRef();
  const addFormRef = useRef();
  const updateFormRef = useRef();

  const handleAdd = async fields => {
  const hide = message.loading('正在添加');

  try {
    await addUser({...fields});
    hide();
    message.success('添加成功');
    return true;
  } catch (error) {
            return dealError(error, addFormRef, hide, "添加");
  }
};

  const handleUpdate = async (value, current_id) => {
  const hide = message.loading('正在修改');

  try {
    await updateUser(value, current_id);
    hide();
    message.success('修改成功');
    return true;
  } catch (error) {
      return dealError(error, updateFormRef, hide, "修改");
  }
};

  const handleRemove = async selectedRows => {
  const hide = message.loading('正在删除');
  if (!selectedRows) return true;

  try {
    const ids = selectedRows.map(row => row.id).join(',');
    await removeUser(ids);
    hide();
    message.success('删除成功');
    return true;
  } catch (error) {
      hide()
      return dealRemoveError(error, "删除");
  }
};
    const handlePassWordUpdate = () => {
    if (updatePasswordForm.getFieldValue('password') !== updatePasswordForm.getFieldValue('re_password')) {
      updatePasswordForm.setFields([{
        name: 're_password',
        errors: ['两次密码不一致'],
      }]);
    } else {
      updatePasswordForm.validateFields().then(
        value => {
          updateUserPassword({
            ...value,
            username: updateFormValues["username"],
          }).then(
            message.success('密码修改成功'),
            handleUpdatePassWordModalVisible(false),
          );
        },
      );
      updatePasswordForm.submit;
    }
  };
  const dateFieldList = ["last_login","date_joined","create_time"]
  const base_columns = [{
                    
                                  title: 'id',
                                  dataIndex: 'id',
                                  hideInForm: true,
                                  hideInSearch: true,
                                  rules: [
                                    {
                                      required: true,
                                      message: 'id为必填项',
                                    },
                                  ],
                                },{
                        
                                          title: '密码',
                                          dataIndex: 'password',
                                          hideInTable: true,
                                  hideInSearch: true,
                                          rules: [
                                            {
                                              required: true,
                                              message: '密码为必填项',
                                            },
                                          ],
                                        },{
              title: '上次登录',
              dataIndex: 'last_login',
              valueType: 'dateTime',
              
              rules: [
                {
                  required: true,
                  message: '上次登录为必填项',
                },
              ],
                                       render: (text, record) => {
          return dealDateTimeDisplay(text);
        },
            },{
                         initialValue: false,
                                  title: '超级用户状态',
                                  dataIndex: 'is_superuser',
                                  rules: [
                                    {
                                      required: true,
                                      message: '超级用户状态为必填项',
                                    },
                                  ],
                                      render: (text, record) => {
          return BooleanDisplay(text);
        },
                                      renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const is_value = form.getFieldValue('is_superuser');
          if (type === "form" && !is_value) {
            form.setFieldsValue({'is_superuser': false});
          }
          return <Switch checked={is_value} onClick={(checked) => {
            form.setFieldsValue({'is_superuser': checked});
          }} />;
        },
                                },{
                            
                      title: '用户名',
                      dataIndex: 'username',
                      rules: [
                        {
                          required: true,
                          message: '用户名为必填项',
                        },
                      ],
                    },{
                            
                              title: '名字',
                              dataIndex: 'first_name',
                              rules: [
                              ],
                            },{
                            
                              title: '姓氏',
                              dataIndex: 'last_name',
                              rules: [
                              ],
                            },{
                         initialValue: false,
                                  title: '工作人员状态',
                                  dataIndex: 'is_staff',
                                  rules: [
                                    {
                                      required: true,
                                      message: '工作人员状态为必填项',
                                    },
                                  ],
                                      render: (text, record) => {
          return BooleanDisplay(text);
        },
                                      renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const is_value = form.getFieldValue('is_staff');
          if (type === "form" && !is_value) {
            form.setFieldsValue({'is_staff': false});
          }
          return <Switch checked={is_value} onClick={(checked) => {
            form.setFieldsValue({'is_staff': checked});
          }} />;
        },
                                },{
                         initialValue: true,
                                  title: '有效',
                                  dataIndex: 'is_active',
                                  rules: [
                                    {
                                      required: true,
                                      message: '有效为必填项',
                                    },
                                  ],
                                      render: (text, record) => {
          return BooleanDisplay(text);
        },
                                      renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const is_value = form.getFieldValue('is_active');
          if (type === "form" && !is_value) {
            form.setFieldsValue({'is_active': false});
          }
          return <Switch checked={is_value} onClick={(checked) => {
            form.setFieldsValue({'is_active': checked});
          }} />;
        },
                                },{
              title: '加入日期',
              dataIndex: 'date_joined',
              valueType: 'dateTime',
              hideInForm: true,
              rules: [
                {
                  required: true,
                  message: '加入日期为必填项',
                },
              ],
                                       render: (text, record) => {
          return dealDateTimeDisplay(text);
        },
            },{
                            
                      title: '昵称',
                      dataIndex: 'nickname',
                      rules: [
                        {
                          required: true,
                          message: '昵称为必填项',
                        },
                      ],
                    },{
                            title: '头像',
                            dataIndex: 'avatar',
                     valueType: 'avatar',
                                   hideInSearch: true,
                            rules: [
                              {
                                required: true,
                                message: '头像为必填项',
                              },
                            ],
                            renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const imageUrl = form.getFieldValue('avatar');
          return <UploadAvatar img={imageUrl}/>
        },
                          },{
                             initialValue: "male",
                      title: '性别',
                      dataIndex: 'sex',
                      rules: [
                        {
                          required: true,
                          message: '性别为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: '工作',
                      dataIndex: 'job',
                      rules: [
                        {
                          required: true,
                          message: '工作为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: '城市',
                      dataIndex: 'city',
                      rules: [
                        {
                          required: true,
                          message: '城市为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: '个性签名',
                      dataIndex: 'signature',
                      rules: [
                        {
                          required: true,
                          message: '个性签名为必填项',
                        },
                      ],
                    },{
                             
                                      title: '学习时长',
                                      dataIndex: 'hour',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '学习时长为必填项',
                                        },
                                      ],
                                    },{
                             
                                      title: '学习经验数',
                                      dataIndex: 'exp',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '学习经验数为必填项',
                                        },
                                      ],
                                    },{
                             
                                      title: '积分数',
                                      dataIndex: 'integral',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '积分数为必填项',
                                        },
                                      ],
                                    },{
                             
                                      title: 'follow数',
                                      dataIndex: 'follow',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: 'follow数为必填项',
                                        },
                                      ],
                                    },{
                             
                                      title: '粉丝数',
                                      dataIndex: 'fans',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '粉丝数为必填项',
                                        },
                                      ],
                                    },{
                             initialValue: "",
                      title: '邮箱',
                      dataIndex: 'email',
                      rules: [
                        {
                          required: true,
                          message: '邮箱为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: 'qq',
                      dataIndex: 'qq',
                      rules: [
                        {
                          required: true,
                          message: 'qq为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: '手机号',
                      dataIndex: 'phone',
                      rules: [
                        {
                          required: true,
                          message: '手机号为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: '微信',
                      dataIndex: 'wechat',
                      rules: [
                        {
                          required: true,
                          message: '微信为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
                      title: '微博',
                      dataIndex: 'weibo',
                      rules: [
                        {
                          required: true,
                          message: '微博为必填项',
                        },
                      ],
                    },{
              title: '注册时间',
              dataIndex: 'create_time',
              valueType: 'dateTime',
              hideInForm: true,
              rules: [
                {
                  required: true,
                  message: '注册时间为必填项',
                },
              ],
                                       render: (text, record) => {
          return dealDateTimeDisplay(text);
        },
            },{
                      title: '组',
                      dataIndex: 'groups',
                      
                      rules: [
                      ],
                      renderFormItem: (item, {value, onChange, type, defaultRender}) => {
                  return dealManyToManyField(item, value,onChange,type, groupsManyToManyList)
            },
                render: (text, record) => {
                    return renderManyToMany(text)
            },
                    },{
                      title: '用户权限',
                      dataIndex: 'user_permissions',
                      
                      rules: [
                      ],
                      renderFormItem: (item, {value, onChange, type, defaultRender}) => {
                  return dealManyToManyField(item, value,onChange,type, user_permissionsManyToManyList)
            },
                render: (text, record) => {
                    return renderManyToMany(text)
            },
                    },    {
                                              title: '操作',
                                              dataIndex: 'option',
                                              valueType: 'option',
                                                    fixed: 'right',
                          width: 100,
                                              render: (text, record) => (
                                                <>

                                                  <EditOutlined title="编辑" className="icon" onClick={async () => {
                                                    record.last_login = moment(record.last_login);record.date_joined = moment(record.date_joined);record.create_time = moment(record.create_time);
                                                    handleUpdateModalVisible(true);
                                                    setUpdateFormValues(record);
                                                  }} />
                                                  <Divider type="vertical" />
                                                  <KeyOutlined onClick={() => {
                                            handleUpdatePassWordModalVisible(true);
                                              setUpdateFormValues(record);
          }} />
                                                  <Divider type="vertical" />
                                                  <Popconfirm
                                                    title="您确定要删除用户吗？"
                                                    placement="topRight"
                                                    onConfirm={() => {
                                                      handleRemove([record])
                                                      actionRef.current.reloadAndRest();
                                                    }}
                                                    okText="确定"
                                                    cancelText="取消"
                                                  >
                                                    <DeleteOutlined title="删除" className="icon" />
                                                  </Popconfirm>
                                                </>
                                              ),
                                            },];

  let cp = deepCopy(base_columns);

  const [formOrder, setFormOrder] = useState([]);

  useEffect(()=>{
    queryUserDisplayOrder().then(r => {
      setFormOrder(r.form_order)
    })
  }, [])
  const table_columns = getTableColumns(cp);

  let order_cp = deepCopy(base_columns);
  const form_ordered = orderForm(formOrder, order_cp);

  const create_columns = [...form_ordered];
  const update_columns = getUpdateColumns(form_ordered);

  const [columnsStateMap, setColumnsStateMap] = useState({});

  const [paramState, setParamState] = useState({});

  useEffect(()=>{
    queryUserListDisplay().then(value => {
      setColumnsStateMap(value)
    })
  },[])


  


    const [groupsManyToManyList, setGroupsManyToManyList] = useState([]);
                    useEffect(() => {
                      queryGroup({all:1}).then(value => {
                        setGroupsManyToManyList(value);
                      });
                    }, []);const [user_permissionsManyToManyList, setUser_permissionsManyToManyList] = useState([]);
                    useEffect(() => {
                      queryPermission({all:1}).then(value => {
                        setUser_permissionsManyToManyList(value);
                      });
                    }, []);
  return (
    <PageHeaderWrapper>
      <ProTable
           beforeSearchSubmit={(params => {
                         dealTime(params, dateFieldList);
          return params;
        })}
        params={paramState}
           scroll={{x: 'max-content'}}
        columnsStateMap={columnsStateMap}
        onColumnsStateChange={(map) => setColumnsStateMap(map)}
        headerTitle="用户表格"
        actionRef={actionRef}
        rowKey="id"
        toolBarRender={(action, {selectedRows}) => [
          <Button type="primary" onClick={() => handleModalVisible(true)}>
            <PlusOutlined /> 新建
          </Button>,
            <Button type="primary" onClick={() => exportExcelAll(paramState, queryUser, table_columns, '用户-All')}>
            <ExportOutlined /> 导出全部
          </Button>,
          <Input.Search style={{marginRight: 20}} placeholder="搜索用户 " onSearch={value => {
            setParamState({
              search: value,
            });
            actionRef.current.reload();
          }} />,
          selectedRows && selectedRows.length > 0 && (
            <Dropdown
              overlay={
                <Menu
                  onClick={async e => {
                    if (e.key === 'remove') {
                      await handleRemove(selectedRows);
                      actionRef.current.reloadAndRest();
                    }
                                        else if(e.key === 'export_current'){
                      exportExcelCurrent(selectedRows,table_columns, '用户-select')
                    }
                  }}
                  selectedKeys={[]}
                >
                  <Menu.Item key="remove">批量删除</Menu.Item>
                                      <Menu.Item key="export_current">导出已选</Menu.Item>
                </Menu>
              }
            >
              <Button>
                批量操作 <DownOutlined />
              </Button>
            </Dropdown>
          ),
        ]}
        tableAlertRender={({selectedRowKeys, selectedRows}) => (
          selectedRowKeys.length > 0 ? <div>
            已选择{' '}
            <a
              style={{
                fontWeight: 600,
              }}
            >
              {selectedRowKeys.length}
            </a>{' '}
            项&nbsp;&nbsp;
          </div> : false

        )}
        request={(params, sorter, filter) => queryUser({...params, sorter, filter})}
        columns={table_columns}
        rowSelection={{}}
      />
      <CreateForm onCancel={() => handleModalVisible(false)} modalVisible={createModalVisible}>
        <ProTable
                     formRef={addFormRef}
          onSubmit={async value => {
                          richTrans(value);
            const success = await handleAdd(value);

            if (success) {
              handleModalVisible(false);

              if (actionRef.current) {
                actionRef.current.reload();
              }
            }
          }}
          rowKey="key"
          type="form"
                    search={{
                                span: {
                                  lg: 12,
                                  md: 12,
                                  xxl: 12,
                                  xl: 12,
                                  sm: 12,
                                  xs: 24,
                                },
                              }}
          form={
            {
              labelCol: {span: 6},
              labelAlign: 'left',
            }}
          columns={create_columns}
          rowSelection={{}}
        />
      </CreateForm>
      <UpdateForm onCancel={() => handleUpdateModalVisible(false)} modalVisible={updateModalVisible}>
        <ProTable
          formRef={updateFormRef}
          onSubmit={async value => {
                          richTrans(value);
            const success = await handleUpdate(value, updateFormValues.id);

            if (success) {
              handleUpdateModalVisible(false);

              if (actionRef.current) {
                actionRef.current.reload();
              }
            }
          }}
          rowKey="key"
                    search={{
                                span: {
                                  lg: 12,
                                  md: 12,
                                  xxl: 12,
                                  xl: 12,
                                  sm: 12,
                                  xs: 24,
                                },
                              }}
          type="form"
          form={{
            initialValues: updateFormValues, labelCol: {span: 6},
            labelAlign: 'left',
          }}
          columns={update_columns}
          rowSelection={{}}
        />
      </UpdateForm>
              {
                      <UpdatePasswordForm
                        onCancel={() => {
                          handleUpdatePassWordModalVisible(false);
                        }}
                        handleUpdate={handlePassWordUpdate}
                        updateModalVisible={updatePassWordModalVisible}
                        userName={updateFormValues["username"]}
                      >
                        <Form form={updatePasswordForm}>
                          <FormItem
                            labelCol={{
                              span: 5,
                            }}
                            wrapperCol={{
                              span: 15,
                            }}
                            label="密码"
                            name="password"
                            rules={[
                              {
                                required: true,
                                message: '请输入密码！',
                              },
                            ]}
                          >
                            <Input.Password placeholder="请输入密码" type="password" />
                          </FormItem>
                          <FormItem
                            labelCol={{
                              span: 5,
                            }}
                            wrapperCol={{
                              span: 15,
                            }}
                            label="重复密码"
                            name="re_password"
                            rules={[
                              {
                                required: true,
                                message: '请输入重复密码',
                              },
                            ]}
                          >
                            <Input.Password placeholder="请再次输入密码" type="password" />
                          </FormItem>
    
                        </Form>
                      </UpdatePasswordForm>
                    }
    </PageHeaderWrapper>
  );
};

export default TableList;
