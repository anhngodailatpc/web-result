import React from 'react';
import Navbar from './components/Navbar';
import './App.css';
import Home from './components/pages/Home';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import Services from './components/pages/Services';
import Products from './components/pages/Products';
import Submit from './components/pages/Submit';
import Videos from './components/pages/Videos';
import Result from './components/pages/Result';

function App() {
  return (
    <>
      <Router>
        <Navbar />
        <Switch>
          <Route path='/' exact component={Home} />
          <Route path='/services' component={Services} />
          <Route path='/products' component={Products} />
          <Route path='/submit' component={Submit} />
          <Route path='/videos' component={Videos} />
          <Route path='/result' component={Result} />
        </Switch>
      </Router>
    </>
  );
}

export default App;
