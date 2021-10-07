var express = require("express");
var app = express();

app.listen(3000, () => {
    console.log("Server running on port 3000");
});

app.get("/info", (req, res, next) => {
    res.json(["Some info","More info","Another piece of information","What?","Info!"]);
});

