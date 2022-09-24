import {Sequelize} from "sequelize";

const db = new Sequelize('users_login', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;