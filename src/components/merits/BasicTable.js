import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';

const useStyles = makeStyles({
  table: {
    minWidth: 650,
  },
});

function createData(name, fresher, graduation) {
  return { name, fresher, graduation};
}

const rows = [
  createData('Điểm TB năm học (2 HK chính)', 'Từ 7.9/10 trở lên', 'Từ 7.3/10 trở lên'),
  createData('Nghiên cứu Khoa học', 'Tham gia, có đề tài NCKH', 'Tham gia và hoàn thành 1 đề tài NCKH'),
  createData('Cuộc thi học thuật', 'Thành viên Ban nội dung cuộc thi cấp khoa', 'Ban nội dung hoặc Đạt giải trong các cuộc thi cấp khoa'),
  createData('Đội tuyển Olympic', 'Thành viên đội tuyển Olympic cấp trường', 'Thành viên đội tuyển Olympic cấp trường'),
];

export default function BasicTable() {
  const classes = useStyles();

  return (
    <TableContainer component={Paper}>
      <Table className={classes.table} aria-label="simple table">
        <TableHead>
          <TableRow>
            <TableCell>Tiêu chí</TableCell>
            <TableCell align="right">Sinh viên năm nhất, năm hai</TableCell>
            <TableCell align="right">Sinh viên năm ba trở lên</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {rows.map((row) => (
            <TableRow key={row.name}>
              <TableCell component="th" scope="row">
                {row.name}
              </TableCell>
              <TableCell align="right">{row.fresher}</TableCell>
              <TableCell align="right">{row.graduation}</TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
}
