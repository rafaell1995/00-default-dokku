const express = require('express');
const app = express();
const port = process.env.PORT || 3000; // O Dokku define a variável PORT

// Servir arquivos estáticos da pasta 'public'
app.use(express.static('public'));

// Iniciar o servidor
app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
