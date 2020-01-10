module.exports = (app) => {

    app.get('/discos', (req, res) => {

        let connection = app.models.connectionFactory();
        let discoDao = new app.models.DiscoDao(connection);

        discoDao.get(function(erro, result) {
            if (erro) {
                res.status(500).send(erro)
            } else {
                res.status(200).json(result)
            }
        })
    })

    app.post('/discos', (req, res) => {
        
        req.assert('nome_disco',"Nome do disco eh obrigatorio").notEmpty();

        req.assert('nome_artista', "Nome do artista eh obrigatorio").notEmpty();

        req.assert('estilo', "Nome do estilo eh obrigatorio").notEmpty();

        let erros = req.validationErrors();

        if (erros){
            console.log('Erros de validacao encontrados');
            res.status(400).send(erros);
            return;
        }
        
        let disco = req.body;
        
        let connection = app.models.connectionFactory();
        let discoDao = new app.models.DiscoDao(connection);

        discoDao.save(disco, function(erro, result) {
            if (erro) {
                res.status(500).send(erro)
            } else {
                res.status(201).json(result)
            }
        })

    })
}