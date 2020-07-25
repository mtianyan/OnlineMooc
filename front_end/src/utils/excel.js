/**
 * 导出table 为 excel
 */

// @ts-ignore
import ExportJsonExcel from 'js-export-excel';

export function exportTableByDom(dom) {
  if (dom == null) {
    return;
  }

  let thList = dom.getElementsByTagName('th');

  let ignoreIndex = [];
  let header = [];
  let data = [];

  for (let i = 0; i < thList.length; i++) {
    let th = thList[i];
    console.log(th);
    let txt = th.textContent;
    if (!txt || txt == '操作') {
      ignoreIndex.push(i);
      continue;
    }
    header.push(txt);
  }

  let tbody = dom.getElementsByTagName('tbody')[0];
  let trList = tbody.getElementsByTagName('tr');
  for (let rowIndex = 0; rowIndex < trList.length; rowIndex++) {
    let tr = trList[rowIndex];
    let tdList = tr.getElementsByTagName('td');
    let row = [];
    for (let colIndex = 0; colIndex < tdList.length; colIndex++) {
      if (ignoreIndex.indexOf(colIndex) != -1) {
        continue;
      }
      let td = tdList[colIndex];
      row.push(td.textContent);
    }

    data.push(row);
  }

  let options = {
    fileName: 'excel',
    datas: [{
      sheetData: data,
      sheetName: 'sheet',
      sheetHeader: header,
      columnWidths: [20, 20],
    }],
  };
  console.log(options);
  var toExcel = new ExportJsonExcel(options);
  toExcel.saveExcel(); //保存
}

// 导出所有
export function exportAll() {
  console.error('导出全部占 暂时不支持');
}
