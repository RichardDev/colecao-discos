function DiscoDao(connection) {
    this._connection = connection
}

DiscoDao.prototype.save = function(disco, callback) {
    this._connection.query('INSERT INTO lib__disco SET ?', disco, callback)
}

DiscoDao.prototype.get = function(callback) {
    this._connection.query('SELECT * FROM lib__disco', callback)
}

DiscoDao.prototype.getByID = function(id, callback) {
    this._connection.query('SELECT * FROM lib__disco WHERE = id ? LIMIT 1', [id], callback)
}

DiscoDao.prototype.delete = function(id, callback) {
    this._connection.query('DELETE FROM lib__disco WHERE = id ?', [id], callback)
}

module.exports = function () {
    return DiscoDao
}


