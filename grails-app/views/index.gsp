<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to "My Listings Application"</title>
		
	</head>
	<body>

		<div id="page-body" role="main">
			<h1>My Listings Application</h1>
			<p>Congratulations, you have made it to My Listings Application. You can find out and share events that are happening in your area!

	Below is a list of options that are currently deployed in this application,
			   click on each link to see available events, promoters and venues:</p>

			<div id="controller-list" role="navigation">
				<h2>Please select a link below to see either events, promoters or a venue:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
