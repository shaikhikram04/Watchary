const express = require("express");
const mongoose = require("mongoose");
const session = require("express-session");
const passport = require("passport");
const authRoutes = require("./routes/auth");

const User = require("./models/user");

require("./config/passport");

const app = express();

app.use(express.json);
app.use(express.urlencoded({ extended: true }));

app.use(
  session({
    secret: "watchary - secret",
    resave: false,
    saveUninitialized: false,
  })
);

//* passport middleware
app.use(passport.initialize());
app.use(passport.session());

app.use("/auth", authRoutes);
