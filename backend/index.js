import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import db from "./config/Database.js";
import SequelizeStore from "connect-session-sequelize";
import UserRoute from "./routes/UserRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
dotenv.config();


const app = express();
app.use(express.json());
const sessionStore = SequelizeStore(session.Store);

const store = new sessionStore({
    db: db
});

// (async()=>{
//     await db.sync();
// })();

app.use(session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
        secure: 'auto'
    }
}));

app.use(cors({
    credentials: true,
    origin: 'http://localhost:3000'
}));


app.use(UserRoute);
app.use(AuthRoute);

// store.sync();

const PORT = process.env.PORT || 5000;
app.listen(PORT, (error) => {
    error ? console.error(error) : console.log(`server running on port ${PORT}`);
});


// app.listen(process.env.APP_PORT, ()=> {
//     console.log('Server up and running...');
// });
