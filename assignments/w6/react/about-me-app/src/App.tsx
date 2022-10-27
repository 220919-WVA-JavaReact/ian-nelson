import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Header from './components/header/header';
import Nav from './components/nav/nav';
import Home from './components/home/home';
import Footer from './components/footer/footer';

function App() {
  return (
    <>
    <Header />
    <Nav />
    <Home />
    <Footer />
    
    </>
  );
}

export default App;
