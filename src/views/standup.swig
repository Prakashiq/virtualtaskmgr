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
                <li class="active"><a href="/standup">Notes</a></li>
                <li><a href="/standup/newnote">New Notes</a></li>
                <li><a href="/card">Cards</a></li>
                <li><a href="/card/newcard">New Card</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

<div class="container">

    <div class="text-center">
        <h1>Virtual Stand-up Meeting Notes</h1>
        <p class="lead">This is a list of the last dozen meeting notes that were entered in. </p>
    </div>

    <div>
        <!--<h2>Latest Notes</h2>-->
        <div class="container">
            <!--Filter notes list by member name-->
            <form action="/standup" method="post">
                <div class="row clearfix">
                    <div class="col-md-4 column">
                        <select id="memberName" name="memberName" class="form-control">
                            <option value="">(Show All Members)</option>
                            <option value="Vijay">Vijay</option>
                            <option value="Prakash">Prakash</option>
                            <option value="Ugandar">Ugandar</option>
                        </select>
                    </div>
                    <div class="col-md-8 column">
                        <!-- Button -->
                        <button id="btnFilterNotes" name="btnFilterNotes" class="btn btn-primary" type="submit">Filter Notes...</button>
                    </div>
                </div>
            </form>
        </div>
        <br />
        <div class="container">
            <div class="col-md-12 column list-group">
                {% for note in notes %}
                <div class="list-group-item">
                    <div>Note from <em><strong>{{ note.memberName }}</strong></em> on: {{ note.createdOn.toDateString() }}
                        - for project: <strong>{{ note.project }}</strong></div>
                    <div><strong>Work yesterday:</strong> {{ note.workYesterday }}</div>
                    <div><strong>Work today:</strong> {{ note.workToday }}</div>
                    <div><strong>Impediment:</strong> {{ note.impediment }}</div>
                </div>
                {% endfor %}
            </div>

        </div>
    </div>
</div><!-- /.container -->
</body>
</html>