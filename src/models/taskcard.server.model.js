var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var CardsSchema = new Schema({
	CardTitle: String,
	CardOwner: String,
	Description:String,
	CardProject:String,
	Priority: Number,
	PlannedStart: {type: Date, default: Date.now},
	PlannedEnd: {type: Date, default: Date.now}
});


module.exports = mongoose.model('Card', CardsSchema);