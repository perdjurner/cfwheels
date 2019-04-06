<cfinclude template="../layout/_header.cfm">
<cfscript>
setting requestTimeout=10000 showDebugOutput=false;
param name="request.wheels.params.type" default="app";
param name="request.wheels.params.format" default="html";

// Run the tests.
testResults = $createObjectFromRoot(
	fileName="Test",
	method="$WheelsRunner",
	options=request.wheels.params,
	path=application.wheels.wheelsComponentPath
);

// Output the results in the requested format.
include "../tests/#request.wheels.params.format#.cfm";

</cfscript>

<cfinclude template="../layout/_footer.cfm">


