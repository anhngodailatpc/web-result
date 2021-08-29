import React from 'react';
import '../App.css';
import Button from './Button';
import './HeroSection.css';


function HeroSection() {
  return (
    <div className='hero-container'>
      <h1>SINH VIÊN 5 TỐT</h1>
      <p>Trường Đại học Bách Khoa - ĐHQG-HCM</p>
      <div className='hero-btns'>
        <Button
          className='btns'
          buttonStyle='btn--primary'
          buttonSize='btn--large'
          onClick={console.log('hey')}
        >
          VIDEO TỔNG KẾT <i className='far fa-play-circle' />
        </Button>
      </div>
    </div>
  );
}

export default HeroSection;