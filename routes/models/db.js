const mysql = require("mysql")


// connecting to mysql database
const db = mysql.createConnection({
    host: 'localhost',
    user: "root",
    password: '',
    database: "inews"
})

module.exports = db