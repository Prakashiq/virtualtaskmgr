var gulp = require('gulp');
var jshint = require('gulp-jshint');
var jscs = require('gulp-jscs');

var nodemon = require('gulp-nodemon');

var jsFiles =  ['*.js', './src/**/*.js'];

gulp.task('style', function() {
    return gulp.src(jsFiles)
    .pipe(jshint())
    .pipe(jshint.reporter('jshint-stylish',{verbose:true}))
    .pipe(jscs());
});


gulp.task('inject',function(){
	var wiredep = require('wiredep').stream;
	var inject = require('gulp-inject');

	var injectSrc = gulp.src(['./public/stylesheets/*.css',
								'./public/js/*.js'], {read: false});

	var injectOptions = {
		ignorePath: ['/public','/node_modules']
	};


	var options = {
		bowerJson: require('./bower.json'),
		directory: './public/lib',
		ignorePath: '../../public'
	};

	return gulp.src(['./src/views/*.swig','./views/*.ejs'])
	.pipe(wiredep(options))
	.pipe(inject(injectSrc, injectOptions))
	.pipe(gulp.dest('./src/views'));
});


gulp.task('serve', ['style','inject'], function(){
	var options = {
		script: './bin/www',
		delayTime: 1,
		watch:[jsFiles,'./src/view/*.swig']
	};

	return nodemon(options)
		.on('restart',function(ev)
			{
				console.log('Restarting Services...');
			});
});