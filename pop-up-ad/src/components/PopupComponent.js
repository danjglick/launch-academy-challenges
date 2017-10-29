import React from 'react';

const PopupComponent = props => {
  let handleExit = () => {
  	confirm("Are you sure you don't want to see Tay Sway?")
  }

  return(
    <div onClick={handleExit}> hi </div>
  );
};

export default PopupComponent;