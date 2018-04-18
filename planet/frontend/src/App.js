import React, { Component } from 'react';

import api_fetch from './api'

class App extends Component {
  render() {

	  api_fetch('/minerals.json')
		  .then((response) => response.json())
		  .then((rs) => {
			  console.log(rs);
		  })

    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
        </p>
      </div>
    );
  }
}

export default App;
