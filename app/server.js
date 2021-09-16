const express = require('express');

const PORT = 5800;
const HOST = '0.0.0.0';

const app = express();
app.use(express.static('/opt/novnc/'));
/*app.get('/', (req, res) => {
  res.send('Hello world4\n');
});
*/

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
