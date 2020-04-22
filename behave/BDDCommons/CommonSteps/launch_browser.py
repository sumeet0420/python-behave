# Launch the browser
from BDDCommons.CommonFuncs import browsers
from behave import given

@given("I have launched the browser")
def launch_browser(context):
	context.email='email@test.com'
	print("Hello behave bdd....")
	print(f"Browser names from CommonFuncs...",browsers.browser_names()[0])