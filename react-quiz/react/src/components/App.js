import React from 'react';
import Answers from "./Answers";

const App = props => {
  return(
    <div>
      <h1> {props.data.question.body} </h1>
      <Answers answers={props.data.answers}/>
    </div>
  );
};

export default App;

