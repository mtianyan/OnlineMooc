import {DownOutlined, PlusOutlined, EditOutlined,DeleteOutlined} from '@ant-design/icons';
import {Button, Divider, Dropdown, Input, Menu, message, Popconfirm, Select, Switch} from 'antd';
import React, {useEffect,useRef, useState} from 'react';
import {PageHeaderWrapper} from '@ant-design/pro-layout';
import ProTable from '@ant-design/pro-table';
import CreateForm from './components/CreateForm';
import {addUser, queryUser, removeUser, updateUser} from './service';
import UpdateForm from './components/UpdateForm';
import UploadAvatar from '@/components/UploadAvatar';

import moment from 'moment';
const {Option} = Select;
import {dealTime, deepCopy, getTableColumns} from '@/utils/utils';


const TableList = () => {
  const [createModalVisible, handleModalVisible] = useState(false);
  const [updateModalVisible, handleUpdateModalVisible] = useState(false);
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
      if ('fields_errors' in error.data) {
        for (let key in error.data.fields_errors) {
          var value = error.data.fields_errors[key];
          addFormRef.current.setFields([
            {
              name: key,
              errors: value,
            },
          ]);
        }
      } else {
        message.error('非字段类型错误');
      }
    hide();
    message.error('添加失败');
    return false;
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
            if ('fields_errors' in error.data) {
        for (let key in error.data.fields_errors) {
          var value = error.data.fields_errors[key];
          updateFormRef.current.setFields([
            {
              name: key,
              errors: value,
            },
          ]);
        }
      } else {
        message.error('非字段类型错误');
      }
    hide();
    message.error('修改失败请重试！');
    return false;
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
    hide();
    message.error('删除失败，请重试');
    return false;
  }
};
  const dateFieldList = ["create_time"]
  const base_columns = [{
                              title: 'ID',
                              dataIndex: 'id',
                              hideInForm: true,
                              hideInSearch: true,
                              rules: [
                                {
                                  required: true,
                                  message: 'ID为必填项',
                                },
                              ],
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
                  title: '密码',
                  dataIndex: 'password',
                  rules: [
                    {
                      required: true,
                      message: '密码为必填项',
                    },
                  ],
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
                  title: '性别',
                  dataIndex: 'sex',
                  rules: [
                    {
                      required: true,
                      message: '性别为必填项',
                    },
                  ],
                },{
                  title: '工作',
                  dataIndex: 'job',
                  rules: [
                    {
                      required: true,
                      message: '工作为必填项',
                    },
                  ],
                },{
                  title: '城市',
                  dataIndex: 'city',
                  rules: [
                    {
                      required: true,
                      message: '城市为必填项',
                    },
                  ],
                },{
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
                  title: '邮箱',
                  dataIndex: 'email',
                  rules: [
                    {
                      required: true,
                      message: '邮箱为必填项',
                    },
                  ],
                },{
                  title: 'qq',
                  dataIndex: 'qq',
                  rules: [
                    {
                      required: true,
                      message: 'qq为必填项',
                    },
                  ],
                },{
                  title: '手机号',
                  dataIndex: 'phone',
                  rules: [
                    {
                      required: true,
                      message: '手机号为必填项',
                    },
                  ],
                },{
                  title: '微信',
                  dataIndex: 'wechat',
                  rules: [
                    {
                      required: true,
                      message: '微信为必填项',
                    },
                  ],
                },{
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
          rules: [
            {
              required: true,
              message: '注册时间为必填项',
            },
          ],
        },    {
                          title: '操作',
                          dataIndex: 'option',
                          valueType: 'option',
                          render: (text, record) => (
                            <>

                              <EditOutlined title="编辑" className="icon" onClick={async () => {
                                record.create_time = moment(record.create_time);
                                handleUpdateModalVisible(true);
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
  const table_columns = getTableColumns(cp);

  const update_columns = [...base_columns];

  const create_columns = [...base_columns];

  const [columnsStateMap, setColumnsStateMap] = useState({});

  const [paramState, setParamState] = useState({});

  


    
  return (
    <PageHeaderWrapper>
      <ProTable
           beforeSearchSubmit={(params => {
                         dealTime(params, dateFieldList);
          return params;
        })}
        params={paramState}
        scroll={{x: true}}
        columnsStateMap={columnsStateMap}
        onColumnsStateChange={(map) => setColumnsStateMap(map)}
        headerTitle="用户表格"
        actionRef={actionRef}
        rowKey="id"
        toolBarRender={(action, {selectedRows}) => [
          <Button type="primary" onClick={() => handleModalVisible(true)}>
            <PlusOutlined /> 新建
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
                  }}
                  selectedKeys={[]}
                >
                  <Menu.Item key="remove">批量删除</Menu.Item>
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
    </PageHeaderWrapper>
  );
};

export default TableList;
