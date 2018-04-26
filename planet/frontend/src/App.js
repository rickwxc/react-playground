import React, { Component } from 'react';
import { Grid, Header, Segment } from 'semantic-ui-react'
import 'semantic-ui-css/semantic.min.css';



import api_fetch from './api'
import Minerals from './minerals'

class App extends Component {
	constructor(props) {
		super(props);
		this.state = {data: false};
	}
	componentDidMount() {
		api_fetch('/star2minerals.json').then((response) => response.json())
			.then((rs) => {
				this.setState({data: rs});
			})
	}

	render() {

		if (this.state.data) {
			return (
				<Grid>
					<Grid.Row columns={3}>
						<Grid.Column>
							<Minerals data={this.state.data} />
						</Grid.Column>
						<Grid.Column>
						</Grid.Column>
						<Grid.Column>
						</Grid.Column>
					</Grid.Row>
				</Grid>
			)
		}

		return (
			<Header as='h3' textAlign='center'>
			Loading ....
			</Header>
		);
	}
}

export default App;
