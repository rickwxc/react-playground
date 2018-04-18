import React, { Component } from 'react';


class App extends Component {
  render() {

	  fetch('http://localhost:3001')
		  .then((response) => response.text())
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
