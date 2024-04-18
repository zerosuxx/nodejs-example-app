const express = require('express');
const app = express();
const port = process.env.PORT ?? 3000;

app.get('/', (req, res) => res.send(JSON.stringify(process.env, ['HOSTNAME', 'USER', 'APP_ENV', 'AUTH_TOKEN'], ' ')));
app.listen(port, () => console.log(`Example app listening on port ${port}`));