// Általunk telepített npm-csomag
const mysql = require('mysql2');

// Pool létrehozása
const pool = mysql
    .createPool({
        host: process.env.MYSQL_HOST,
        user: process.env.MYSQL_USER,
        password: process.env.MYSQL_PASSWORD,
        database: process.env.MYSQL_DATABASE,
    })
    .promise();

// Exportálás
module.exports = pool;
