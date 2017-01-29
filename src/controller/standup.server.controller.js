
var  Standup = require('../models/standup.server.model');

exports.create = function(req,res){
	var entry = new Standup({
		memberName: req.body.memberName,
		project: req.body.project,
		workYesterday: req.body.workYesterday,
		workToday: req.body.workToday,
		impediment: req.body.impediment	
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

	//redirect to home page....

	res.redirect('/standup/newnote');

};

exports.getNote = function(req,res){
	res.render('newnote', {title: 'Standup - New Note'});
};


exports.list = function(req,res){
	var query = Standup.find();

	query.sort({createdOn: 'desc'})
	.limit(12)
	.exec(function(err,result){
		res.render('standup',{title: 'Standup - List', notes:result});
	});
};

exports.filterByMember = function(req,res){
	var query = Standup.find();
	var filter = req.body.memberName;

	query.sort({createdOn: 'desc'});
	if(filter.length >0) {
		query.where({memberName:filter});
	}

	query.exec(function(err,results){
		res.render('standup',{title:'Standup - List', notes:results});
	});
};