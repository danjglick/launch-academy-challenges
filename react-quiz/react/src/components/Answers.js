import React from 'react';

class Answers extends React.Component {
	constructor(props) {
		super(props);
		this.state = {correctValue: null}
	}

	handleClick(correctValue) {
		if (correctValue == true) {
			this.setState({correctValue: "correct!"})
		} else {
			this.setState({correctValue: "incorrect!"})
		}
	}

	render() {
		let answers = this.props.answers.map(answer => {
			let onClick = () => {this.handleClick(answer.correct)} 
			return(
				<li key={answer.id} onClick={onClick}> {answer.body} </li>
			);
		})
		return(
			<div>
				<ul> {answers} </ul>
				<h1> {this.state.correctValue} </h1>
			</div>
		)
	}
}

export default Answers;