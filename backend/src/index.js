import 'regenerator-runtime/runtime.js'; // To support async await syntax
import express from 'express';
import expressWs from 'express-ws';
import bodyParser from 'body-parser';
import morgan from 'morgan';

import fakeAuthMiddleware from './fakeAuthMiddleware';

const PORT = process.env.PORT || 3000;

const app = express();
expressWs(app);

// middleware
app.use(morgan('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use('/', fakeAuthMiddleware);

app.get('/', (req, res) => res.json({ msg: 'working' }));
app.ws('/', (ws, req) => {
  ws.on('connection', () => {
    ws.send(`Welcome!`);
  });

  ws.on('message', msg => {
    console.log(`Logged in user ${req.user}`);
    console.log(`received a message ${msg}`);
    ws.send(`${msg} - received`);
  });
});

app.listen(PORT, () => console.log(`Running on port ${PORT}`));
