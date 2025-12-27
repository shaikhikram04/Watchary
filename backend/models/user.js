const mongoose = require("mongoose");
const bcrypt = require("bcryptjs");

userSchema.pre("save", async function (next) {
  if (!this.isModified("password")) return next();
  this.password = await bcrypt.hash(this.password, 10);
  next();
});

const userSchema = mongoose.Schema(
  {
    name: { type: String, required: true },
    email: { type: String, required: true, unique: true },
    password: { type: String, required: true },
    profileImage: { type: String },
    //* A Movie/Series Poster
    framePoster: { type: String },
    //* Watch/Watching/Watched List
    movies: [
      {
        tmdbId: { type: String, required: true },
        title: { type: String, required: true },
        type: { type: String, enum: ["movie", "series"], required: true },
        poster: String,
        genre: [String],

        // Status: whether in watchlist or watched
        status: {
          type: String,
          enum: ["watchlist", "watched", "dropped", "in-progress"],
          default: "watchlist",
        },

        // Optional user rating/review
        rating: { type: Number, min: 0, max: 5 },
        review: String,

        addedAt: { type: Date, default: Date.now },
      },
    ],
    //* User Playlist
    playlist: [
      {
        name: { type: String, required: true },
        genre: String, // for top playlist by genre
        description: String,
        movies: [{ type: String }], // store TMDB IDs
        createdAt: { type: Date, default: Date.now },
      },
    ],
  },
  { timestamps: true }
);

const User = mongoose.model("user", userSchema);

module.exports = User;
