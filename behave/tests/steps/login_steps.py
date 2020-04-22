from behave import given, when, then
from BDDCommons.CommonSteps.launch_browser import *

@then("I should be able to launch the homepage")
def launch_homepage(context):
	print("Homepage is launched...")

@then('I navigate to the "{site}" site')
def navigate_to_broser(context, site):
	print(f"I have navigate to ",site)
	print(f"Email id is ",context.email)
	print(f"",context.scenario)
	print(f"",context.feature)

@then('I login for the user')
def login_for_user(context):
	for row in context.table:
		username=row['username']
		print(f"username: ",username)