import { Sequelize } from "sequelize";

const db = new Sequelize('stock_management_system', 'root', '!Love2code', {
    host: "localhost",
    dialect: "mysql"
});

export default db;