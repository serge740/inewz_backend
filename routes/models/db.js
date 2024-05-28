const mysql = require("mysql")


// connecting to mysql database
// const db = mysql.createConnection({
//     host: 'localhost',
//     user: "root",
//     password: '',
//     database: "inews"
// })

const db = mysql.createConnection({
    host: 'bcyavoovtoe4immkw2aj-mysql.services.clever-cloud.com',
    user: "ujziyoisndjglof1",
    password: 'ctiQp89sKodbGphF8DMZ',
    database: "bcyavoovtoe4immkw2aj"
})


module.exports = db