import React, { Fragment } from 'react';
import '../../App.css';
import InputSubmit from '../submit/InputSubmit';
import ListSubmit from '../submit/ListSubmit';

function Submit() {
  return (
    <Fragment>
      <div className='container'>
        <InputSubmit />
        <ListSubmit />
      </div>
    </Fragment>
  );
}
export default Submit;
