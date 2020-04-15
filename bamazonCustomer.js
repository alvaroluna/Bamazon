var mysql = require("mysql");

//////////
// MAIN //
//////////
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Cinnamon1",
  database: "bamazon",
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);

  // run these functions
  //   querySpecificArtists();
  //   queryArtistsThatAppearMoreThanOnce();
  //   querySongsInRange();
  //   querySong();
  console.log("This is working");
});
