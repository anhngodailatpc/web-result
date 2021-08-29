import React from 'react';
import './Cards.css';
import CardItem from './CardItem';

function Cards() {
  return (
    <div className='cards'>
      <h1>Tiêu chí Sinh viên 5 tốt</h1>
      <div className='cards__container'>
        <div className='cards__wrapper'>
          <ul className='cards__items'>
            <CardItem
              src='/images/img-dd.jpeg'
              text='Đạo đức tốt'
              label='Tiêu chí'
            />
            <CardItem
              src='/images/img-ht.jpeg'
              text='Học tập tốt'
              label='Tiêu chí'
              path='/services'
            />
          </ul>
          <ul className='cards__items'>
            <CardItem
              src='/images/img-tl.jpeg'
              text='Thể lực tốt'
              label='Tiêu chí'
              path='/services'
            />
            <CardItem
              src='/images/img-tn.jpeg'
              text='Tình nguyện tốt'
              label='Tiêu chí'
              path='/products'
            />
            <CardItem
              src='/images/img-hn.jpeg'
              text='Hội nhập tốt'
              label='Tiêu chí'
              path='/sign-up'
            />
          </ul>
        </div>
      </div>
    </div>
  );
}

export default Cards;
