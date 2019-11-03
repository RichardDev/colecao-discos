const app = require('./config/config_express')()

app.listen(3000, function () {
  console.log('Rodando na porta: 3000')
})