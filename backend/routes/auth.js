const express = require("express");
const passport = require("passport");
const User = require(".../models/User");

const router = express.Router();

// Register
router.post("/register", async (req, res) => {
  const { name, email, password } = req.body;

  try {
    let user = await User.findOne({ email });
    if (user) return res.status(400).json({ msg: "Email already exists" });

    user = new User({ name, email, password });
    await user.save();

    res.status(200).json({ msg: "User registered successfully" });
  } catch (err) {
    res.status(500).send("Server error");
  }
});
  
// Login
router.post(
  "/login",
  passport.authenticate("local", { failureMessage: true }),
  (req, res) => {
    res.json({ msg: "Logged in successfully", user: req.user });
  }
);

// Logout
router.get("/logout", (req, res, next) => {
  req.logout(function (err) {
    if (err) return next(err);
    res.json({ msg: "Logged out successfully" });
  });
});

module.exports = router;
