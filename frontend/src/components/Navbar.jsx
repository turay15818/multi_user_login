import React from "react";
import { NavLink, useNavigate } from "react-router-dom";
import logo from "../logo.png";
import { useDispatch, useSelector } from "react-redux";
import { LogOut, reset } from "../features/authSlice";
import moment from 'moment'
const Navbar = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user } = useSelector((state) => state.auth);

  const logout = () => {
    dispatch(LogOut());
    dispatch(reset());
    navigate("/");
  };


  const forDate ={
    display: 'flex',
    borderRadius: 20,
    backgroundColor: 'black',
    // padding: 20,
    width: 330,
    // marginTop: 20,
    marginLeft: 80,
  //  height: 70
  };
  
  const currentDate = moment().format('DD-MM-YYYY')
  // // const today = new Date();
  
  
  const date = new Date();
  const  current_time = date.getHours()+":"+date.getMinutes();
  
  const all = {
    display: 'flex',
    // marginTop: 30
  }
  
  
  const dashboard={
    // padding: 20
  }

  return (
    <div style={{display: 'flex'}}>
      <nav
        className="navbar is-fixed-top has-shadow"
        role="navigation"
        aria-label="main navigation"style={{backgroundColor: 'black', boxShadow: '1px 2px 9px #000000', borderRadius: 0}}
      >

<div className="navbar-brand">
          <NavLink to="/dashboard" className="navbar-item">
            <img src={logo} width="112" height="28" alt="logo" />
          </NavLink>

          <a
            href="!#"
            role="button"
            className="navbar-burger burger"
            aria-label="menu"
            aria-expanded="false"
            data-target="navbarBasicExample"
          >
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
          </a>
        </div>


<div style={all}>
      
      <div style={forDate}>
  
       <h1 className="title" style={{color: 'orange', paddingRight: 30}}>{current_time}</h1>
        <h1 className="title" style={{color: 'orange',}}>{'' + currentDate}</h1>
       </div>
  
       <div style={dashboard}>
       <h1 className="title" style={{color: 'orange',}}>Admin Dashboard</h1>
        <h2 className="subtitle" style={{color: 'orange',}}>
          Welcome Back <strong style={{color: 'white',}}>{user && user.name}</strong>
        </h2>
       </div>
      </div> 

       
        <div id="navbarBasicExample" className="navbar-menu">
          <div className="navbar-end">
            <div className="navbar-item">
              <div className="buttons">
                <button onClick={logout} className="button is-light">
                  Log out
                </button>
              </div>
            </div>
          </div>
        </div>
      </nav>
  
    </div>
    
  );
};

export default Navbar;
