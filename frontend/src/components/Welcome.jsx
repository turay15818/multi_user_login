import React from "react";
import { useSelector } from "react-redux";
import Carousel from 'react-bootstrap/Carousel';
import Image from '../assets/Image.jpg';
import ImageTwo from '../assets/ImageTwo.jpg';
import ImageThree from '../assets/ImageThree.jpg';
import moment from 'moment'

const Welcome = () => {
  const { user } = useSelector((state) => state.auth);
// const Home ={
//   paddingTop: 30,
//   marginTop: -20
// };


const forDate ={
  display: 'flex',
  borderRadius: 20,
  backgroundColor: 'black',
  padding: 20,
  width: 330,
  marginTop: 20,
  marginRight: 50,
 height: 70
};

const currentDate = moment().format('DD-MM-YYYY')
// // const today = new Date();


const date = new Date();
const  current_time = date.getHours()+":"+date.getMinutes();

const all = {
  display: 'flex',
  marginTop: 30
}


const dashboard={
  padding: 20
}

  return (
    <div >

    {/* <div style={all}>
      
    <div style={forDate}>

     <h1 className="title" style={{color: 'orange', paddingRight: 30}}>{current_time}</h1>
      <h1 className="title" style={{color: 'orange',}}>{'' + currentDate}</h1>
     </div>

     <div style={dashboard}>
     <h1 className="title">Admin Dashboard</h1>
      <h2 className="subtitle">
        Welcome Back <strong>{user && user.name}</strong>
      </h2>
     </div>
    </div> */}
    


      <Carousel style={{marginRight: 25, marginTop: 40}}>
      <Carousel.Item>
        <img
          className="d-block w-100"
          src={Image}
          alt="First slide"
        />
        <Carousel.Caption>
          
          <h3>First slide label</h3>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="d-block w-100"
          src={ImageTwo}
          alt="Second slide"
        />

        <Carousel.Caption>
          <h3>Second slide label</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="d-block w-100"
          src={ImageThree}
          alt="Third slide"
        />

        <Carousel.Caption>
          <h3>Third slide label</h3>
          <p>
            Praesent commodo cursus magna, vel scelerisque nisl consectetur.
          </p>
        </Carousel.Caption>
      </Carousel.Item>
    </Carousel>


  </div>
  );
};

export default Welcome;
