var mysql  = require('mysql');

function createDBConnection(){
		return mysql.createConnection({
			host: 'localhost',
			user: 'root',
			password: '3060',
			database: 'discodb'			
		});
}

module.exports = function() {
	return createDBConnection;
}