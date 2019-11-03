function CatalogoDao (connection) {
    this._connection = connection
  }
  
  CatalogoDao.prototype.save = function (colecao, callback) {
    this._connection.query('INSERT INTO colecao SET ?', colecao, callback)
  }
  
  CatalogoDao.prototype.list = function (callback) {
    this._connection.query('SELECT * FROM colecao', callback)
  }
  
  CatalogoDao.prototype.getByID = function (id, callback) {
    this._connection.query('SELECT * FROM colecao WHERE id = ?', [id], callback)
  }
  
  CatalogoDao.prototype.getByNome = function (nome_colecao, callback) {
    this._connection.query('SELECT * FROM colecao WHERE nome_colecao = ?', [nome_colecao], callback)
  }
  
  module.exports = function () {
    return CatalogoDao
  }
  