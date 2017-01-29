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
            <a class="navbar-brand" href="#">Virtual Task Card</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/standup">Notes</a></li>
                <li><a href="/standup">New Notes</a></li>
                <li><a href="/card">Cards</a></li>
                <li class="active"><a href="/card/newcard">New Card</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

<div class="container">

    <div class="text-center">
        <h1>New Virtual Task Card</h1>
        <p class="lead">Use this form to assign new card...</p>
    </div>

    <form class="form-horizontal" action="/card/newcard" method="post">
        <fieldset>

            <!-- Form Name -->
            <legend>Enter a Card Details</legend>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="cardTitle">Card Title</label>
                <div class="col-md-6">
                    <textarea class="form-control" id="cardTitle" name="cardTitle">New Card</textarea>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="cardProject">Card Assigned To</label>
                <div class="col-md-4">
                    <select id="cardProject" name="cardProject" class="form-control">
                        <option value="None">(Select Project)</option>
                        <option value="Sith">Sith</option>
                        <option value="Jedi">Jedi</option>
                        <option value="Dragonborn">Dragonborn</option>
                    </select>
                </div>
            </div>


            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="cardOwner">CardOwner</label>
                <div class="col-md-4">
                    <select id="cardOwner" name="cardOwner" class="form-control">
                        <option value="None">(Select Name)</option>
                            <option value="Vijay">Vijay</option>
                            <option value="Prakash">Prakash</option>
                            <option value="Ugandar">Ugandar</option>
                        </select>
                    </select>
                </div>
            </div>

            

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="description">Card Description</label>
                <div class="col-md-6">
                    <textarea class="form-control" id="description" name="description"></textarea>
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-4 control-label" for="Size">Card Size</label>
                <div class="col-md-4">
                    <select id="size" name="size" class="form-control">
                        <option value="None">(Select Name)</option>
                            <option value="1">Critical</option>
                            <option value="2">High</option>
                            <option value="3">Medium</option>
                            <option value="4">Low</option>
                        </select>
                    </select>
                </div>
            </div>



            <!-- Date -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="plannedStart">Planned Start</label>
                <div class="col-md-6">
                    <input type="date" class="form-control" id="plannedStart" name="plannedStart"></input>
                </div>
            </div>
             
            <!-- Date -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="plannedEnd">Planned End</label>
                <div class="col-md-6">
                    <input type="date" class="form-control" id="plannedEnd" name="plannedEnd"></input>
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