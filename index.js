const express = require('express');
const app = express();
const port = 3000;

//Rpta básica de /status

app.get('/stastus', (req, res) =>{
    res.json({ status: 'API está funcionando! '});
});

//Iniciar o servidor
app.listen(port, () => {
    console.log(`Servidor rodando em http://localhost:${port}`);
    

})
