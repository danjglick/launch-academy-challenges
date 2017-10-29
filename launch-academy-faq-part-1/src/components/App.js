import React from 'react';
import QuestionList from './QuestionList'

class App extends React.Component {
  constructor(props) {
  	super(props)
  }

  render() {
    return(
      <div> 
      	<h1> We're here to help </h1>
      		<QuestionList data={this.props.data} />
      </div>
    )
  }
}

export default App;
