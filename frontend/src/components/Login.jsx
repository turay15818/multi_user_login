import React, { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate, NavLink } from "react-router-dom";
import { LoginUser, reset } from "../features/authSlice";
import OrangeLogo from "../assets/OrangeLogo.png";
import Typical from "react-typical";

const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user, isError, isSuccess, isLoading, message } = useSelector(
    state => state.auth
  );

  useEffect(
    () => {
      if (user || isSuccess) {
        navigate("/dashboard");
      }
      dispatch(reset());
    },
    [user, isSuccess, dispatch, navigate]
  );

  const Auth = e => {
    e.preventDefault();
    dispatch(LoginUser({ email, password }));
  };

  const forgotPassword = () => {
    dispatch(forgotPassword());
    navigate("/ForgotPassword");
  };

  const Logo = {
    alignItems: "center",
    boxShadow: "1px 2px 9px #FD841F",
    border: "3px solid orange",
    borderRadius: 10
  };

  const center = {
    alignItems: "center",
    shadow: "0 0 10 0 #0000",
    border: "20px #0000",
    marginTop: 20
  };

  const typical = {
    alignItems: "center",
    fontSize: 40,
    color: 'orange',
    fontWeight: 700,
    textAlign: 'center'
  };

  return (
    <section
      className="hero is-fullheight is-fullwidth"
      style={{
        shadow: "0 0 10 0 #0000",
        backgroundColor: "#F9F9F9",
        display: "fixed"
      }}
    >
      <div className="hero-body">
        <div className="container">
          <div className="columns is-centered" style={{}}>
            <div className="column is-4" style={Logo}>
             <h1 style={typical}>Hello
             <Typical
                steps={[
                  "Welcome", 1000,
                  "to", 1000,
                  "Orange", 1000,
                  "Sierra Leone", 1000,
                 
                ]}
                loop={Infinity}
                wrapper="p"
                
              />
             </h1>
              <div className="columns is-centered" style={center}>
                <img
                  src={OrangeLogo}
                  style={{
                    boxShadow: "1px 2px 9px #000000",
                    alignItems: "center",
                    padding: 20
                  }}
                  alt="Welcome to Orange Sierra Leone"
                />
              </div>
            </div>

            <div className="column is-4">
              <form onSubmit={Auth} className="box">
                <h1 className="title is-2">Sign In</h1>
                <div className="field">
                  <label className="label">Email</label>
                  <div className="control">
                    <input
                      type="text"
                      className="input"
                      value={email}
                      onChange={e => setEmail(e.target.value)}
                      placeholder="Email"
                    />
                  </div>
                </div>
                <div className="field">
                  <label className="label">Password</label>
                  <div className="control">
                    <input
                      type="password"
                      className="input"
                      value={password}
                      onChange={e => setPassword(e.target.value)}
                      placeholder="******"
                    />
                  </div>
                </div>
                <div className="field mt-5">
                  <button
                    type="submit"
                    className="button is-success is-fullwidth"
                    style={{ backgroundColor: "black" }}
                  >
                    {isLoading ? "Loading..." : "Login"}
                  </button>

                  <button
                    onClick={forgotPassword}
                    className="button is-white"
                    type="submit"
                    style={{ marginTop: 10 }}
                  >
                    <NavLink to={"/ForgotPassword"}>Forgot Password</NavLink>
                  </button>
                </div>
                {isError &&
                  <p className="has-text-centered" style={{ color: "red" }}>
                    {message}
                  </p>}
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Login;
