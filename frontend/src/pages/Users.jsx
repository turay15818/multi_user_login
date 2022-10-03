import React, { useEffect } from "react";
import Layout from "./Layout";
import Userlist from "../components/Userlist";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { getMe } from "../features/authSlice";

const Users = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { isError, userOne, userTwo, userThree } = useSelector((state) => state.auth);

  useEffect(() => {
    dispatch(getMe());
  }, [dispatch]);

  useEffect(() => {
    if (isError) {
      navigate("/");
    }
    // if (user && user.role !== "admin") {
    //   navigate("/dashboard");
    // }
    if (userOne && userOne.role !== "admin") {
      navigate("/dashboard");
    }
    if (userTwo && userTwo.role !== "admin") {
      navigate("/dashboard");
    }
    if (userThree && userThree.role !== "admin") {
      navigate("/dashboard");
    }
  }, [isError, userOne, userTwo, userThree, navigate]);
  return (
    <Layout>
      <Userlist />
    </Layout>
  );
};

export default Users;
