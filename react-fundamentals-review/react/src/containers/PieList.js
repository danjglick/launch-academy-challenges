import React from 'react';
import Pie from '../components/Pie';

class PieList extends React.Component{
	constructor(props) {
		super(props);
		this.state = {selectedId: null}
		this.handlePieClick = this.handlePieClick.bind(this)
	};

	handlePieClick(id) {
		this.setState({selectedId: id})
	}

	render(){
		let pieList = this.props.pies.map((pie) => {
			let classString = "";
			if(pie.id === this.state.selectedId) {classString = "selected"}; 
			
			let onPieClick = () => this.handlePieClick(pie.id)
			
			return(
				<Pie
					pieClick={onPieClick}
					key={pie.id}
					id={pie.id}
					name={pie.name}
					classString={classString}
				/>
			);
		});
		return(
			<div>
				<ul> {pieList} </ul>
			</div>
		);
	};
};

export default PieList;
