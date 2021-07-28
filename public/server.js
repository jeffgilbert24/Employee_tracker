const inquirer = require('inquirer';)
const express = require('express');
const path = require('path');
const { type } = require('os');
const Choices = require('inquirer/lib/objects/choices');
const app = express();
const PORT = 3001;


// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // MySQL password
    password: 'password',
    database: 'myCompany_db'
  },
  console.log(`Connected to the myCompany_db database.`)
);

const main = ()=>{
  inquirer.prompt({  
  type: "list",
  choices: ["see all departmants", "Quit"],
  message: "What would you like to do?",
  name:"choice"
}).then(({choice})=>{
  switch (choice){
    case "see all departments";
      console.log('see departments')
    break;    
  }
})

}
app.use(express.static('public'));


app.get('/', (req, res) => res.send('Navigate to /send or /routes'));

app.get('/send', (req, res) =>
  res.sendFile(path.join(__dirname, 'public/sendFile.html'))
);

app.get('/routes', (req, res) =>
  res.sendFile(path.join(__dirname, 'public/routes.html'))
);

app.listen(PORT, () =>
  console.log(`Example app listening at http://localhost:${PORT}`)
);