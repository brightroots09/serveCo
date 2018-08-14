const mysql = require('mysql');

global.con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'erp'
});

let connection = async function () {
    try {
        await con.connect();
        console.log("Connected to SQL");

    } catch (error) {
        console.log("Error in connecting to database");
        return error;
    }

}
module.exports = connection;