//server
const express = require("express");
const app = express();
const PORT = process.env.PORT || 8000;

//middlewares
const path = require("path")
const morgan = require("morgan");
const bodyParser = require("body-parser");
const passport = require("passport");
const session = require("express-session");
const Store = require("express-session").Store
const BetterMemoryStore = require('session-memory-store')(session);
const flash = require("express-flash");
const moment = require("moment");

//db
const sqlConnection = require("./connection/sql_connection");
const model = require("./models");

//morgan middleware
app.use(morgan("dev"));

//body parser middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));

var store = new BetterMemoryStore({ expires: 60 * 60 * 1000, debug: true });

app.use(session({

    name: 'SESSION',

    secret: 'MYSECRETISVERYSECRET',

    store: store,

    resave: true,

    saveUninitialized: true

}));

app.use(flash())

app.use(passport.initialize());
app.use(passport.session())

app.use(function (req, res, cb) {
    res.locals.user = req.user;
    res.locals.moment = moment;
    cb()
})

app.set('views', path.join(__dirname, '/views'));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');



//Routes
const admin = require("./routes/admin");

app.use(admin);

sqlConnection();
model.model_index();

//server connection
app.listen(PORT, function () {
    console.log(`Server started at PORT: ${PORT}`);
});
