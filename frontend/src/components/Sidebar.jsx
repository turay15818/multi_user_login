import React from "react";
import { NavLink, useNavigate } from "react-router-dom";
import { IoPerson,  IoHome, IoLogOut } from "react-icons/io5";
import { useDispatch, useSelector } from "react-redux";
import { LogOut, reset } from "../features/authSlice";

const Sidebar = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user } = useSelector((state) => state.auth);

  const logout = () => {
    dispatch(LogOut());
    dispatch(reset());
    navigate("/");
  };
const formStyle ={
boxShadow: '20px, black',
backgroundColor: 'black',
borderRadius: 20,
minHeight: 100,
height: '100%',
shadow: '0 0 10 0 #0000',
display: 'fixed'
}

  return (
    

    <div style={formStyle}>
      <aside className="menu pl-2 has-shadow" style={{display: 'fixed'}}>
        <p className="menu-label" style={{paddingTop: 50}}>General</p>
        <ul className="menu-list">
          <li>
            <NavLink to={"/dashboard"}  style={{color: 'orange', fontSize: '20px', }}>
              <IoHome /> Dashboard
            </NavLink>
          </li>
          
        </ul>
        {user && user.role === "admin" && (
          <div>
            <p className="menu-label" style={{marginTop: 20}}>Admin</p>
            <ul className="menu-list">
              <li>
                <NavLink to={"/users"} style={{color: 'orange', fontSize: '20px', }}>
                  <IoPerson /> Users
                </NavLink>
              </li>
            </ul>
          </div>
        )}

        <p className="menu-label">Settings</p>
        <ul className="menu-list">
          <li>
            <button onClick={logout} className="button is-white" style={{color: 'orange', fontSize: '20px', }}>
              <IoLogOut /> Logout
            </button>
          </li>
        </ul>
      </aside>
    </div>
  );
};

export default Sidebar;
