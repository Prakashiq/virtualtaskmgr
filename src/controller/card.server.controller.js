
var  Card = require('../models/taskcard.server.model');

exports.create = function(req,res){
	var entry = new Card({
		CardTitle: req.body.cardTitle,
		CardOwner: req.body.cardOwner,
		Description:req.body.description,
		CardProject:req.body.cardProject,
		Size:req.body.size,
		Priority:req.body.priority,
		PlannedStart: req.body.plannedStart,
		PlannedEnd: req.body.plannedEnd
	});

	entry.save(function(err, result){
		if (err){
			console.log('ERR!'+ err);
		}
		else
		{
			console.log('Success!' + result);
		}
	});

	res.redirect('/card');
};


exports.list = function(req,res){
	var query = Card.find();

	query.sort({plannedEnd: 'desc'})
	.limit(12)
	.exec(function(err,result){
		res.render('card',{title: 'Virtual - View Card', cards:result});
	});
};

exports.getNewCard = function(req,res){
		res.render('newcard',{title: 'Virtual - Add New Card'});
};

exports.filterByProject = function(req,res){
	var query = Card.find();
	var filter = req.body.project;
	console.log(req.body.project);
	query.sort({createdOn: 'desc'});
	if ( filter.length > 0 ) {
		query.where({CardProject:filter});
	}

	query.exec(function(err,results){
		res.render('card',{title:'Virtual - View Card', cards:results});
	});
};

