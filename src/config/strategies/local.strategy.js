var 
    LocalStrategy = require('passport-local').Strategy,
    User = require('../../models/user.server.model');
module.exports = function(passport)
{
    passport.use(new LocalStrategy({
 
        passReqToCallback : true
    },
    function(req, username,password, done) {
       User.findOne({username:username},function(err,results) 
       {
        console.log('Err->' + err +':' + results );
            if (err === null)   
            {
                if (results === null) {
                    console.log('User Not Found with username ' + username);
                return done( null, false,
                       req.flash('message',{message: 'User Not found.'})); 
                }
                else if ( results.password !== password )
                {
                    console.log('Password Mismatch !!' );
                    return done( null, false,
                    req.flash('message', 'Password Mismatch !!'),console.log(req));
                }
                else if ( results.password === password )
                {
                    console.log('Login Successful !!' );
                    return done(null, results);
                }
            }
            else
            {
                console.log('Unknown Err !!' );
                    return done(null,false,req.flash('message',err));
            }
        });
}));

};