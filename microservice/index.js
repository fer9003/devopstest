const express = require('express');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
const { urlencoded } = require('express');
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.post('/DevOps/login', (req, res)=> {
    const user = {
        message: "This is a test",
        to: "Juan Perez",
        from: "Rita Asturia",
        timeToLifeSec: 45
    }

    jwt.sign({user}, 'key', {expiresIn: '5d'}, (err, token) => {
        res.json({
            token
        });
    });
});

app.post('/DevOps', checkToken, (req, res)=> {

    jwt.verify(req.token, 'key', (err, authData ) => {
        if(err){
            res.json({
                message: "Token no válido"
            })
        } else {
            res.json({
                message: `Hello ${req.body.to} your message will be send` 
            });
        }
    });
});

function checkToken(req, res, next) {
    const header = req.headers['authorization'];
    if(typeof header !== 'undefined') {
        const jwtToken= header.split(" ")[1]
        req.token = jwtToken;
        next();
    } else {
        res.json({
            message: 'Token no definido...'
        });
    }
}




app.get('/DevOps', (req, res)=> {
    res.json({ 
        "message": "ERROR"
        });
});

app.put('/DevOps', (req, res)=> {
    res.json({ 
        "message": "ERROR"
        });
});

app.delete('/DevOps', (req, res)=> {
    res.json({ 
        "message": "ERROR"
        });
});

app.listen(5000, () => {
    console.log("microservice is running");
});