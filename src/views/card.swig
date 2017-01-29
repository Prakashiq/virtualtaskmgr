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
            <a class="navbar-brand" href="#">Virtual Task Card</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/standup">Notes</a></li>
                <li><a href="/standup">New Notes</a></li>
                <li class="active"><a href="/card">Cards</a></li>
                <li><a href="/card/newcard">New Card</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </div><!--/.nav-collapse -->

    </div>
</div>

<div class="container">

    <div class="text-center">
        <h1>Virtual Card Assigned</h1>
        <p class="lead">This is a list of the last dozen task that were assigned. </p>
    </div>

    <div>
        <!--<h2>Latest Notes</h2>-->
        <div class="container">
            <!--Filter notes list by member name-->
            <form action="/card" method="post">
                <div class="row clearfix">
                               <!-- Select Basic -->
                    <div class="form-group">
                        <div class="col-md-4">
                            <select id="project" name="project" class="form-control">
                                <option value="None">(Select Project)</option>
                                <option value="Sith">Sith</option>
                                <option value="Jedi">Jedi</option>
                                <option value="Dragonborn">Dragonborn</option>
                            </select>
                        </div>

                    
                    <div class="col-md-8 column">
                        <!-- Button -->
                        <button id="btnFilterNotes" name="btnFilterNotes" class="btn btn-primary" type="submit">Filter Cards...</button>
                    </div>
                </div>
                </div>
            </form>
        </div>
        <br />
        <div class="container">
            <div class="col-md-12 column list-group">
                {% for card in cards %}
                <div class="list-group-item">
                    <div>Card Title <em><strong>{{ card.CardTitle }}</strong></em> Planned on: {{ card.PlannedStart.toDateString() }} - {{ card.PlannedEnd.toDateString() }}
                        - for project: <strong>{{ card.CardProject }}</strong></div>
                    <div><strong>Card Owner:</strong> {{ card.CardOwner }}</div>
                    <div><strong>Card Description:</strong> {{ card.Description }}</div>
                </div>
                {% endfor %}
            </div>

        </div>
    </div>
</div><!-- /.container -->
</body>
</html>