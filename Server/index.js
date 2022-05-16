const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');

app.use(bodyParser.json());
app.use(cors());

let Data = [];
let emergency = 0;

app.get('/', (_req, res) => {
    res.send('ICU SERVER!');
});
app.post('/post_readings', (req, res) => {
    if(!req.body){
        console.log("No body Data");
        return
    }
    Data = req.body
    res.send(Data);
});

app.get('/get_readings', (_req, res) => {
    if(!Data){
        console.log("No Data");
        return
    } 
    res.send(Data);
});

app.post('/post_emergency', (req, res) => {
    if(!req.body.emergency){
        console.log("No emergency Data");
        return
    }
    emergency = req.body.emergency
    res.send(emergency);
});


const PORT = process.env.PORT || 8080;
const server = app.listen(PORT, () =>{
    console.log(`server started at http://localhost:${PORT}`);
});

module.exports = server;