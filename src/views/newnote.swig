<!DOCTYPE html>
<html>
<head>
    <title>{{ title }}</title>
<!-- bower:css -->
<link rel="stylesheet" href="/lib/bootstrap/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="/lib/bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.css" />
<link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.min.css" />
<!-- endbower -->
<!-- bower:js -->
<script src="/lib/angular/angular.js"></script>
<script src="/lib/jquery/dist/jquery.js"></script>
<script src="/lib/bootstrap/dist/js/bootstrap.js"></script>
<!-- endbower -->
<!-- inject:css-->
<link rel="stylesheet" href="/stylesheets/style.css">
<!-- endinject-->
<!-- inject:js-->
<!-- endinject-->
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Virtual Stand-up</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/standup">Notes</a></li>
                <li class="active"><a href="/standup">New Notes</a></li>
                <li><a href="/card">Cards</a></li>
                <li><a href="/card/newcard">New Card</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

<div class="container">

    <div class="text-center">
        <h1>New Virtual Stand-up Meeting Note</h1>
        <p class="lead">Use this form to enter your daily meeting notes...</p>
    </div>

    <form class="form-horizontal" action="newnote" method="post">
        <fieldset>

            <!-- Form Name -->
            <legend>Enter a Meeting Note</legend>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="memberName">Name</label>
                <div class="col-md-4">
                    <select id="memberName" name="memberName" class="form-control">
                        <option value="None">(Select Name)</option>
                            <option value="Vijay">Vijay</option>
                            <option value="Prakash">Prakash</option>
                            <option value="Ugandar">Ugandar</option>
                        </select>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="project">Current Project or Task</label>
                <div class="col-md-4">
                    <select id="project" name="project" class="form-control">
                        <option value="None">(Select Project)</option>
                        <option value="Sith">Sith</option>
                        <option value="Jedi">Jedi</option>
                        <option value="Dragonborn">Dragonborn</option>
                    </select>
                </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="workYesterday">What did you work on yesterday?</label>
                <div class="col-md-6">
                    <textarea class="form-control" id="workYesterday" name="workYesterday">Yesterday</textarea>
                </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="workToday">What will you work on today?</label>
                <div class="col-md-6">
                    <textarea class="form-control" id="workToday" name="workToday">Today</textarea>
                </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="impediment">Any Impediment(s)?</label>
                <div class="col-md-6">
                    <textarea class="form-control" id="impediment" name="impediment">None</textarea>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="btnSaveNote">Save Note</label>
                <div class="col-md-4">
                    <button id="btnSaveNote" name="btnSaveNote" class="btn btn-primary" type="submit">Save</button>
                </div>
            </div>

        </fieldset>
    </form>


</div><!-- /.container -->
</body>
</html>