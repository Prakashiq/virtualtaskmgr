var express = require('express');
var router = express.Router();
var cardCtrl = require('../controller/card.server.controller');

/* GET card listing. */
router.get('/', function(req, res, next) {
	cardCtrl.list(req,res);
});

/* POST card listing. */
router.post('/', function(req, res, next) {
	cardCtrl.filterByProject(req,res);
});


/* POST card listing. */
router.post('/newcard', function(req, res, next) {
	cardCtrl.create(req,res);
});

/* POST card listing. */
router.get('/newcard', function(req, res, next) {
	cardCtrl.getNewCard(req,res);
});


module.exports = router;
