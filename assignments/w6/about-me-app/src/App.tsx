import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Header from './components/header/header';
import Nav from './components/nav/nav';
import Home from './components/home/home';
import Footer from './components/footer/footer';
import TTAAL from './components/ttaal/ttaal';

function App() {
  return (
    <>
      <Header />
      <BrowserRouter>
        <Nav />
        <Routes>
          <Route path='/' element={<Home />}></Route>
          <Route path='/ttaal' element={<TTAAL />} ></Route>
      </Routes>
      </BrowserRouter>
    <Footer />
    
    </>
  );
}

export default App;
