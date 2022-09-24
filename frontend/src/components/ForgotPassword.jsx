import React, { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { LoginUser, reset } from "../features/authSlice";
const ForgotPassword = () => {
  const [email, setEmail] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user, isError, isSuccess, isLoading, message } = useSelector(
    (state) => state.auth
  );

  useEffect(() => {
    if (user || isSuccess) {
      navigate("/dashboard");
    }
    dispatch(reset());
  }, [user, isSuccess, dispatch, navigate]);

  const Auth = (e) => {
    // e.preventDefault();
    // dispatch(LoginUser({ email, password }));
  };

  return (
    <section className="hero is-fullheight is-fullwidth"  style={{ backgroundColor: '#FD841F', boxShadow: '10px #000000' }}>
      <div className="hero-body">
        <div className="container">
          <div className="columns is-centered">
            <div className="column is-4">
              <form onSubmit={Auth} className="box">

                <h1 className="title is-2">Forgot Password</h1>
                <div className="field">
                  <label className="label">Email</label>
                  <div className="control">
                    <input
                      type="email"
                      className="input"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      placeholder="Please enter your email"
                    />
                  </div>
                </div>
            
                <div className="field mt-5">
                  <button
                    type="submit"
                    className="button is-success is-fullwidth"
                    style={{ backgroundColor: 'black' }}>
                    {isLoading ? "Loading..." : "Sent"}
                  </button>
                </div>
                {isError && <p className="has-text-centered" style={{ color: 'red' }}>{message}</p>}
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default ForgotPassword;
