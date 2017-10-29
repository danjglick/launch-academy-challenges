import React from 'react';
import ReactDOM from 'react-dom';
import PopupComponent from './components/PopupComponent';

ReactDOM.render(
  <PopupComponent popup="Popup from main.js" />,
  document.getElementById('app')
);

