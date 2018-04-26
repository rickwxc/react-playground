import React, { Component } from 'react';
import { Table } from 'semantic-ui-react'


class Minerals extends Component {
	constructor(props) {
		super(props);
		this.state = {}
	}

  render() {
    return (
	 <Table unstackable>
    <Table.Header>
      <Table.Row>
        <Table.HeaderCell>Name</Table.HeaderCell>
        <Table.HeaderCell>Y</Table.HeaderCell>
        <Table.HeaderCell >MAX</Table.HeaderCell>
      </Table.Row>
    </Table.Header>

    <Table.Body>
		{this.props.data.map((item, index) => (

      <Table.Row>
        <Table.Cell>{item.name}</Table.Cell>
        <Table.Cell>{item.y}</Table.Cell>
        <Table.Cell>{item.max_qty}</Table.Cell>
      </Table.Row>

    ))}

    </Table.Body>
  </Table>
	)

  }

}

export default Minerals;
