import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDispatch = (store) => {
  return function (next) {
    return function (action) {
      console.log(store.getstate())
      console.log('Action received:', action)
      let result = next(action);
      console.log(store.getState())
      return result;
    }
  }
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const logging = addLoggingToDispatch;

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
