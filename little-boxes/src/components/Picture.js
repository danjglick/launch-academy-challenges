import React from 'react';
import List from './List'

const Picture = props => {
  return (
    <div className='box picture'>
      <h1>Look at This Picture</h1>
      <img alt='Clever EEs' src='https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png'/>
    	<List/>
    </div>
  )
}

export default Picture;
