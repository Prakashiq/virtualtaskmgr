var express = require('express');
var passport = require('passport');

var router = express.Router();


/* GET card listing. */
router.get('/', function(req, res, next) {
    res.render('index', {title: 'Agile'});
});

router.get('/signin', function(req, res, next) {
    res.render('index', {title: 'Agile'});
});

router.post('/signin',passport.authenticate('local',{
    successRedirect: '/standup',
    failureRedirect: '/'
}));

router.get('/logout', function(req,res,next) {
    req.logout();
    res.redirect('/');
});

module.exports = router;