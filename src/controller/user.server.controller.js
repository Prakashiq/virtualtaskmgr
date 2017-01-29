
var  User = require('../models/user.server.model');



exports.isvalid = function(username,password, done){

	User.findOne({username:username},function(err,results) 
       {
        console.log('Err->' + err +':' + results );
            if (err === null)   
            {
                if (results === null) {
                    console.log('User Not Found with username ' + username);
                return done( null, false,
                       {message: 'User Not found.'}); 
                }
                else if ( results.password !== password )
                {
                    console.log('Password Mismatch !!' );
                    return done( null, false,
                    {message: 'Password Mismatch !!'});
                }
                else if ( results.password === password )
                {
                    console.log('Login Successful !!' );
                    return done(null, true, results);
                }
            }
            else
            {
                console.log('Password Mismatch !!' );
                    return done({message:err}, null);
            }
        });
};

