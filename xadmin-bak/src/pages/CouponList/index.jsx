import {DownOutlined, PlusOutlined, EditOutlined,DeleteOutlined} from '@ant-design/icons';
import {Button, Divider, Dropdown, Input, Menu, message, Popconfirm, Select, Switch} from 'antd';
import React, {useEffect,useRef, useState} from 'react';
import {PageHeaderWrapper} from '@ant-design/pro-layout';
import ProTable from '@ant-design/pro-table';
import CreateForm from './components/CreateForm';
import {addCoupon, queryCoupon, removeCoupon, updateCoupon} from './service';
import UpdateForm from './components/UpdateForm';
import UploadAvatar from '@/components/UploadAvatar';
import {queryCouponRange} from '@/pages/CouponRangeList/service';import {queryCouponStatus} from '@/pages/CouponStatusList/service';
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
    await addCoupon({...fields});
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
    await updateCoupon(value, current_id);
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
    await removeCoupon(ids);
    hide();
    message.success('删除成功');
    return true;
  } catch (error) {
    hide();
    message.error('删除失败，请重试');
    return false;
  }
};
  const dateFieldList = ["starttime","endtime"]
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
                  title: '用户id',
                  dataIndex: 'userid',
                  rules: [
                    {
                      required: true,
                      message: '用户id为必填项',
                    },
                  ],
                },{
                  title: '订单id',
                  dataIndex: 'orderid',
                  rules: [
                    {
                      required: true,
                      message: '订单id为必填项',
                    },
                  ],
                },{
                              title: '金额',
                              dataIndex: 'number',
                                        valueType: 'digit',
                              rules: [
                                {
                                  required: true,
                                  message: '金额为必填项',
                                },
                              ],
                            },{
                              title: '限制类型',
                              dataIndex: 'limit',
                                        valueType: 'digit',
                              rules: [
                                {
                                  required: true,
                                  message: '限制类型为必填项',
                                },
                              ],
                            },{
          title: '开始时间',
          dataIndex: 'starttime',
          valueType: 'dateTime',
          rules: [
            {
              required: true,
              message: '开始时间为必填项',
            },
          ],
        },{
          title: '结束时间',
          dataIndex: 'endtime',
          valueType: 'dateTime',
          rules: [
            {
              required: true,
              message: '结束时间为必填项',
            },
          ],
        },{
                  title: '使用时间',
                  dataIndex: 'usetime',
                  rules: [
                    {
                      required: true,
                      message: '使用时间为必填项',
                    },
                  ],
                },{
                          title: '优惠券使用范围',
                          dataIndex: 'range',
                          backendType: 'foreignKey',
                          rules: [
                            {
                              required: true,
                              message: '优惠券使用范围为必填项',
                            },
                          ],
                                renderFormItem: (item, {value, onChange}) => {
        const children = rangeForeignKeyList.map((item) => {
          return <Option key={item.id} value={item.id}>{item.text}</Option>;
        });
        return <Select
          placeholder="请选择优惠券"
          onChange={onChange}
        >
          {children}
        </Select>;
      },
                        },{
                          title: '优惠券使用状态',
                          dataIndex: 'status',
                          backendType: 'foreignKey',
                          rules: [
                            {
                              required: true,
                              message: '优惠券使用状态为必填项',
                            },
                          ],
                                renderFormItem: (item, {value, onChange}) => {
        const children = statusForeignKeyList.map((item) => {
          return <Option key={item.id} value={item.id}>{item.text}</Option>;
        });
        return <Select
          placeholder="请选择优惠券"
          onChange={onChange}
        >
          {children}
        </Select>;
      },
                        },    {
                          title: '操作',
                          dataIndex: 'option',
                          valueType: 'option',
                          render: (text, record) => (
                            <>

                              <EditOutlined title="编辑" className="icon" onClick={async () => {
                                record.starttime = moment(record.starttime);record.endtime = moment(record.endtime);
                                handleUpdateModalVisible(true);
                                setUpdateFormValues(record);
                              }} />
                              <Divider type="vertical" />
                              <Popconfirm
                                title="您确定要删除优惠券吗？"
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

  const [rangeForeignKeyList, setRangeForeignKeyList] = useState([]);
  useEffect(() => {
    queryCouponRange().then(value => {
      setRangeForeignKeyList(value.data);
    });
  }, []);const [statusForeignKeyList, setStatusForeignKeyList] = useState([]);
  useEffect(() => {
    queryCouponStatus().then(value => {
      setStatusForeignKeyList(value.data);
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
        scroll={{x: true}}
        columnsStateMap={columnsStateMap}
        onColumnsStateChange={(map) => setColumnsStateMap(map)}
        headerTitle="优惠券表格"
        actionRef={actionRef}
        rowKey="id"
        toolBarRender={(action, {selectedRows}) => [
          <Button type="primary" onClick={() => handleModalVisible(true)}>
            <PlusOutlined /> 新建
          </Button>,
          <Input.Search style={{marginRight: 20}} placeholder="搜索优惠券 " onSearch={value => {
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
        request={(params, sorter, filter) => queryCoupon({...params, sorter, filter})}
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
