import React from 'react';
import Health from '../merits/Health'
import Integration from '../merits/Integration';
import Morality from '../merits/Morality';
import Study from '../merits/Study';
import Volunteer from '../merits/Volunteer';
import Merits from './Merits';
import '../../App.css';
import Timeline from '../Timeline';
const data = [

  { id: 1, name: 'Đạo đức tốt', content: () => <Morality />, state: 'active' },
  { id: 2, name: 'Học tập tốt', content: () => <Study />, state: 'inactive' },
  { id: 3, name: 'Thể lực tốt', content: () => <Health />, state: 'inactive' },
  { id: 4, name: 'Tình nguyện tốt', content: () => <Volunteer />, state: 'inactive' },
  { id: 5, name: 'Hội nhập tốt', content: () => <Integration />, state: 'inactive' },
];

function Products() {
  return (
  <div className='Timeline'>
      <h4 align='center'>Kế hoạch Sinh viên 5 tốt Trường Đại học Bách Khoa năm 2021</h4>
      <Timeline />
      <div className='container'>
      <Merits data={data} />
      </div>
  </div>
  );
}


export default Products;