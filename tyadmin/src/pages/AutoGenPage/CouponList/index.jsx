import {DeleteOutlined, DownOutlined, EditOutlined, PlusOutlined, ExportOutlined} from '@ant-design/icons';
import {notification, Button, Col, Descriptions, Divider, Dropdown, Form, Input, Menu, message, Popconfirm, Popover, Row, Select, Tag, Transfer,Switch} from 'antd';
import React, {useEffect,useRef, useState} from 'react';
import KeyOutlined from '@ant-design/icons/lib/icons/KeyOutlined';
import {PageHeaderWrapper} from '@ant-design/pro-layout';
import ProTable from 'mtianyan-pro-table';
import CreateForm from './components/CreateForm';
import {addCoupon, queryCoupon, removeCoupon, updateCoupon,queryCouponVerboseName, queryCouponListDisplay, queryCouponDisplayOrder} from './service';
import UpdateForm from './components/UpdateForm';
import UploadAvatar from '@/components/UploadAvatar';
import {queryCouponRange, queryCouponRangeVerboseName} from '@/pages/AutoGenPage/CouponRangeList/service';import {queryCouponStatus, queryCouponStatusVerboseName} from '@/pages/AutoGenPage/CouponStatusList/service';

import moment from 'moment';
const {Option} = Select;
import { dealPureSelectField, orderForm, exportExcelCurrent, exportExcelAll, getUpdateColumns, dealRemoveError, dealError, BooleanDisplay, dealDateTimeDisplay, dealManyToManyField, dealTime, deepCopy, fieldErrorHandle, getTableColumns, renderManyToMany, richTrans,dealForeignKeyField, renderForeignKey, fieldsLevelErrorHandle} from '@/utils/utils';
import 'braft-editor/dist/index.css'
const FormItem = Form.Item;
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
            return dealError(error, addFormRef, hide, "添加");
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
      return dealError(error, updateFormRef, hide, "修改");
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
      hide()
      return dealRemoveError(error, "删除");
  }
};
  
  const dateFieldList = ["starttime","endtime"]
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
                            
                      title: '用户id',
                      dataIndex: 'userid',
                      rules: [
                        {
                          required: true,
                          message: '用户id为必填项',
                        },
                      ],
                    },{
                             initialValue: "",
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
                                       render: (text, record) => {
          return dealDateTimeDisplay(text);
        },
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
                                       render: (text, record) => {
          return dealDateTimeDisplay(text);
        },
            },{
                             initialValue: "",
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
                                            ],
                                                  renderFormItem: (item, {value, onChange}) => {
                                            return dealForeignKeyField(item, value, onChange, rangeForeignKeyList);
                        },render: (text, record) => {
      return renderForeignKey(text, rangeVerboseNameMap);
    },
                                          },{
                                            title: '优惠券使用状态',
                                            dataIndex: 'status',
                                            backendType: 'foreignKey',
                                            rules: [
                                            ],
                                                  renderFormItem: (item, {value, onChange}) => {
                                            return dealForeignKeyField(item, value, onChange, statusForeignKeyList);
                        },render: (text, record) => {
      return renderForeignKey(text, statusVerboseNameMap);
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

  const [formOrder, setFormOrder] = useState([]);

  useEffect(()=>{
    queryCouponDisplayOrder().then(r => {
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
    queryCouponListDisplay().then(value => {
      setColumnsStateMap(value)
    })
  },[])


  const [rangeForeignKeyList, setRangeForeignKeyList] = useState([]);
      useEffect(() => {
        queryCouponRange({all: 1}).then(value => {
          setRangeForeignKeyList(value);
        });
      }, []);
      const [rangeVerboseNameMap, setRangeVerboseNameMap] = useState([]);
  useEffect(() => {
    queryCouponRangeVerboseName().then(value => {
      setRangeVerboseNameMap(value);
    });
  }, []);
      const [statusForeignKeyList, setStatusForeignKeyList] = useState([]);
      useEffect(() => {
        queryCouponStatus({all: 1}).then(value => {
          setStatusForeignKeyList(value);
        });
      }, []);
      const [statusVerboseNameMap, setStatusVerboseNameMap] = useState([]);
  useEffect(() => {
    queryCouponStatusVerboseName().then(value => {
      setStatusVerboseNameMap(value);
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
        headerTitle="优惠券表格"
        actionRef={actionRef}
        rowKey="id"
        toolBarRender={(action, {selectedRows}) => [
          <Button type="primary" onClick={() => handleModalVisible(true)}>
            <PlusOutlined /> 新建
          </Button>,
            <Button type="primary" onClick={() => exportExcelAll(paramState, queryCoupon, table_columns, '优惠券-All')}>
            <ExportOutlined /> 导出全部
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
                                        else if(e.key === 'export_current'){
                      exportExcelCurrent(selectedRows,table_columns, '优惠券-select')
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
        request={(params, sorter, filter) => queryCoupon({...params, sorter, filter})}
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
        
    </PageHeaderWrapper>
  );
};

export default TableList;
