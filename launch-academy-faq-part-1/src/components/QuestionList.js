import React from 'react';

class QuestonList extends React.Component {
	constructor(props) {
		super(props)
	}	

	render() {
		
		return(
			<div> 
				<ul>
					<Question
						data={this.props.data}
					/>
				</ul>
			</div>
		)
	}
}