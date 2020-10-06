import {DownOutlined, PlusOutlined, EditOutlined,DeleteOutlined} from '@ant-design/icons';
import {Button, Divider, Dropdown, Input, Menu, message, Popconfirm, Select, Switch, Tag, Space} from 'antd';
import React, {useEffect,useRef, useState} from 'react';
import {PageHeaderWrapper} from '@ant-design/pro-layout';
import ProTable from 'mtianyan-pro-table';
import CreateForm from './components/CreateForm';
import {addLesson, queryLesson, removeLesson, updateLesson} from './service';
import UpdateForm from './components/UpdateForm';
import UploadAvatar from '@/components/UploadAvatar';
import {queryLabelType} from '@/pages/AutoGenPage//LabelTypeList/service';import {queryLessonType} from '@/pages/AutoGenPage//LessonTypeList/service';import {queryLessonHardType} from '@/pages/AutoGenPage//LessonHardTypeList/service';import {queryTeacher} from '@/pages/AutoGenPage//TeacherList/service';import {queryLessonScript} from '@/pages/AutoGenPage//LessonScriptList/service';import {queryLabel} from '@/pages/AutoGenPage//LabelList/service';
import moment from 'moment';
const {Option} = Select;
import {BooleanDisplay, dealDateTimeDisplay, dealTime, deepCopy, getObjectClass, getTableColumns, richForm, richTrans, richCol,fileUpload} from '@/utils/utils';
import 'braft-editor/dist/index.css'

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
    await addLesson({...fields});
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
    await updateLesson(value, current_id);
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
    await removeLesson(ids);
    hide();
    message.success('删除成功');
    return true;
  } catch (error) {
    hide();
    message.error('删除失败，请重试');
    return false;
  }
};
  const dateFieldList = ["time"]
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
                      title: '课程标题',
                      dataIndex: 'title',
                      rules: [
                        {
                          required: true,
                          message: '课程标题为必填项',
                        },
                      ],
                    },{
                      title: '课程介绍',
                      dataIndex: 'introduction',
                      rules: [
                        {
                          required: true,
                          message: '课程介绍为必填项',
                        },
                      ],
                    },{
                            title: '课程图片',
                            dataIndex: 'img',
                                          render: (text, record) => {
                      return <img src={text} width="80px" alt=""/>
                    },
                                  hideInSearch: true,
                            rules: [
                              {
                                required: true,
                                message: '课程图片为必填项',
                              },
                            ],
                             renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const imageUrl = form.getFieldValue('img');
          return <UploadAvatar img={imageUrl}/>
        },
                          },{
                            title: '课程Banner',
                            dataIndex: 'banner',
                                          render: (text, record) => {
                      return <img src={text} width="80px" alt=""/>
                    },
                                  hideInSearch: true,
                            rules: [
                              {
                                required: true,
                                message: '课程Banner为必填项',
                              },
                            ],
                             renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const imageUrl = form.getFieldValue('banner');
          return <UploadAvatar img={imageUrl}/>
        },
                          },{
                                      title: '课程价格',
                                      dataIndex: 'price',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '课程价格为必填项',
                                        },
                                      ],
                                    },{
                                  title: '是否打折',
                                  dataIndex: 'isDiscount',
                                  rules: [
                                    {
                                      required: true,
                                      message: '是否打折为必填项',
                                    },
                                  ],
                                      render: (text, record) => {
          return BooleanDisplay(text);
        },
                                      renderFormItem: (_, {type, defaultRender, ...rest}, form) => {
          const is_value = form.getFieldValue('isDiscount');
          if (type === "form" && !is_value) {
            form.setFieldsValue({'isDiscount': false});
          }
          return <Switch checked={is_value} onClick={(checked) => {
            form.setFieldsValue({'isDiscount': checked});
          }} />;
        },
                                },{
                                      title: '打折后价格',
                                      dataIndex: 'discountPrice',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '打折后价格为必填项',
                                        },
                                      ],
                                    },{
              title: '课程添加时间',
              dataIndex: 'time',
              valueType: 'dateTime',
              hideInForm: true,
              rules: [
                {
                  required: true,
                  message: '课程添加时间为必填项',
                },
              ],
                                       render: (text, record) => {
          return dealDateTimeDisplay(text);
        },
            },{
                                      title: '学习人数',
                                      dataIndex: 'persons',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '学习人数为必填项',
                                        },
                                      ],
                                    },{
                                      title: '评论数',
                                      dataIndex: 'comments',
                                                valueType: 'digit',
                                      rules: [
                                        {
                                          required: true,
                                          message: '评论数为必填项',
                                        },
                                      ],
                                    },{
                              title: '课程分类',
                              dataIndex: 'category',
                              backendType: 'foreignKey',
                              rules: [
                                {
                                  required: true,
                                  message: '课程分类为必填项',
                                },
                              ],
                                    renderFormItem: (item, {value, onChange}) => {
            const children = categoryForeignKeyList.map((item) => {
              return <Option key={item.id} value={item.id}>{item.title}</Option>;
            });
            return <Select
              placeholder="请选择课程分类"
              onChange={onChange}
            >
              {children}
            </Select>;
          },
                            },{
                              title: '课程类型',
                              dataIndex: 'type',
                              backendType: 'foreignKey',
                              rules: [
                                {
                                  required: true,
                                  message: '课程类型为必填项',
                                },
                              ],
                                    renderFormItem: (item, {value, onChange}) => {
            const children = typeForeignKeyList.map((item) => {
              return <Option key={item.id} value={item.id}>{item.text}</Option>;
            });
            return <Select
              placeholder="请选择课程类型"
              onChange={onChange}
            >
              {children}
            </Select>;
          },
                            },{
                              title: '课程难度类型',
                              dataIndex: 'hard',
                              backendType: 'foreignKey',
                              rules: [
                                {
                                  required: true,
                                  message: '课程难度类型为必填项',
                                },
                              ],
                                    renderFormItem: (item, {value, onChange}) => {
            const children = hardForeignKeyList.map((item) => {
              return <Option key={item.id} value={item.id}>{item.text}</Option>;
            });
            return <Select
              placeholder="请选择课程难度类型"
              onChange={onChange}
            >
              {children}
            </Select>;
          },
                            },{
                              title: '课程讲师',
                              dataIndex: 'teacher',
                              backendType: 'foreignKey',
                              rules: [
                                {
                                  required: true,
                                  message: '课程讲师为必填项',
                                },
                              ],
                                    renderFormItem: (item, {value, onChange}) => {
            const children = teacherForeignKeyList.map((item) => {
              return <Option key={item.id} value={item.id}>{item.name}</Option>;
            });
            return <Select
              placeholder="请选择课程讲师"
              onChange={onChange}
            >
              {children}
            </Select>;
          },
                            },{
                              title: '课程角标',
                              dataIndex: 'script',
                              backendType: 'foreignKey',
                              rules: [
                                {
                                  required: true,
                                  message: '课程角标为必填项',
                                },
                              ],
                                    renderFormItem: (item, {value, onChange}) => {
            const children = scriptForeignKeyList.map((item) => {
              return <Option key={item.id} value={item.id}>{item.title}</Option>;
            });
            return <Select
              placeholder="请选择课程角标"
              onChange={onChange}
            >
              {children}
            </Select>;
          },
                            },{
                      title: '课程拥有的label',
                      dataIndex: 'labels',
                      rules: [
                        {
                          required: true,
                          message: '课程拥有的label为必填项',
                        },
                      ],
                      renderFormItem: (item, {value, onChange}) => {
              const children = labelsManyToManyList.map(item => {
                return (
                  <Option key={item.id} value={item.id}>
                    {item.title}
                  </Option>
                );
              });
              return (
                <Select mode="multiple" placeholder="请选择课程拥有的label" onChange={onChange}>
                  {children}
                </Select>
              );
            },
                render: (text, record) => {
              const color_arr = [
                'green',
                'cyan',
                'blue',
                'geekblue',
                'purple',
                'magenta',
                'red',
                'volcano',
                'orange',
                'gold',
                'lime',
              ];
              const child = [];
              text.forEach((value, index, arr) => {
                child.push(<Tag color={color_arr[value % 10]}>{labelsManyToManyMap[value]}</Tag>);
              });
              return <Space>{child}</Space>;
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
                                    record.time = moment(record.time);
                                    handleUpdateModalVisible(true);
                                    setUpdateFormValues(record);
                                  }} />
                                  <Divider type="vertical" />
                                  <Popconfirm
                                    title="您确定要删除课程吗？"
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

  const [categoryForeignKeyList, setCategoryForeignKeyList] = useState([]);
      useEffect(() => {
        queryLabelType().then(value => {
          setCategoryForeignKeyList(value.data);
        });
      }, []);const [typeForeignKeyList, setTypeForeignKeyList] = useState([]);
      useEffect(() => {
        queryLessonType().then(value => {
          setTypeForeignKeyList(value.data);
        });
      }, []);const [hardForeignKeyList, setHardForeignKeyList] = useState([]);
      useEffect(() => {
        queryLessonHardType().then(value => {
          setHardForeignKeyList(value.data);
        });
      }, []);const [teacherForeignKeyList, setTeacherForeignKeyList] = useState([]);
      useEffect(() => {
        queryTeacher().then(value => {
          setTeacherForeignKeyList(value.data);
        });
      }, []);const [scriptForeignKeyList, setScriptForeignKeyList] = useState([]);
      useEffect(() => {
        queryLessonScript().then(value => {
          setScriptForeignKeyList(value.data);
        });
      }, []);


    const [labelsManyToManyList, setLabelsManyToManyList] = useState([]);
                      const [labelsManyToManyMap, setLabelsManyToManyMap] = useState([]);
                    useEffect(() => {
                      queryLabel().then(value => {
                        setLabelsManyToManyList(value.data);
                        let getLabelsManyToManyMap = {};
              for (let index in value.data) {
                let item = value.data[index];
                getLabelsManyToManyMap[item.id.toString()] = item.title;
              }
              setLabelsManyToManyMap(getLabelsManyToManyMap);
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
        scroll={{x: '100%'}}
        columnsStateMap={columnsStateMap}
        onColumnsStateChange={(map) => setColumnsStateMap(map)}
        headerTitle="课程表格"
        actionRef={actionRef}
        rowKey="id"
        toolBarRender={(action, {selectedRows}) => [
          <Button type="primary" onClick={() => handleModalVisible(true)}>
            <PlusOutlined /> 新建
          </Button>,
          <Input.Search style={{marginRight: 20}} placeholder="搜索课程 " onSearch={value => {
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
        request={(params, sorter, filter) => queryLesson({...params, sorter, filter})}
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
