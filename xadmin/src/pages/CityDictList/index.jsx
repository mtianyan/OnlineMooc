import {Table} from 'antd';
import {recursionChange} from '@/utils/utils';
import DynamicIcon from '@/components/DynamicIcon';





// rowSelection objects indicates the need for row selection
const rowSelection = {
  onChange: (selectedRowKeys, selectedRows) => {
    console.log(`selectedRowKeys: ${selectedRowKeys}`, 'selectedRows: ', selectedRows);
  },
  onSelect: (record, selected, selectedRows) => {
    console.log(record, selected, selectedRows);
  },
  onSelectAll: (selected, selectedRows, changeRows) => {
    console.log(selected, selectedRows, changeRows);
  },
};

function TreeData() {
  return (
    <>
      <Table
        columns={columns}
        rowSelection={{...rowSelection}}
        dataSource={data}
      />
    </>
  );
}

export default TreeData;
