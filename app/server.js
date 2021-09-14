/*'use strict';

const express = require('express');

const PORT = 5800;
const HOST = '0.0.0.0';

const app = express();
app.get('/', (req, res) => {
  res.send('Hello world4\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
*/
 var connect = require('connect');
 var serveStatic = require('serve-static');

 connect()
     .use(serveStatic(__dirname))
     .listen(5800, () => console.log('Server running on 5800...'));
