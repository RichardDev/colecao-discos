module.exports = (app) => {

    app.get('/', function (req, res) {  
        res.send('|| Minha seleção músical \o/ ||')     
    })

    app.get('/listar', (req, res) => {
        const connection = app.models.connectionFactory()
        const catalogoDao = new app.models.CatalogoDao(connection)
        catalogoDao.list((err, result) => {
            if (err) {
                console.log("Erro a buscar os dados dos catalogos")
                res.status(500).send(err)
            } else {
                res.status(200).json(result)
            }
        })
    })
    
}