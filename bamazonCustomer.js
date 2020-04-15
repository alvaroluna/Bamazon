var mysql = require("mysql");

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

//////////////////////
// HELPER FUNCTIONS //
//////////////////////
function querySongsInRange() {
    var query = connection.query(
      "SELECT * FROM top5000 WHERE year BETWEEN 1979 AND 1980",
      function (err, res) {
        if (err) throw err;
        for (var i = 0; i < res.length; i++) {
          // console.log(res[i]);
          console.table(res);
        }
        console.log("-----------------------------------");
      }
    );
    console.log(query.sql);
    connection.end();
  }

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
