
var passport = require('passport');

module.exports = function(app) {
    console.log('log from inside passport.js....');

    app.use(passport.initialize());
    app.use(passport.session()); // persistent login sessions

    passport.serializeUser(function(user,done) {
            console.log('serailize : ' + user);
            done(null, user);
        });

    passport.deserializeUser(function(user,done) {
            console.log('deserailize :' + user);
            done(null, user||req);
        });

    // Define a middleware function to be used for every secured routes
    var auth = function(req, res, next) {
        if (!req.isAuthenticated())
          res.send(401);
        else
          next();
    };

    require('./strategies/local.strategy')(passport);

};