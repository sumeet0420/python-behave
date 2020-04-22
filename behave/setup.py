#from distutils.core import setup
from setuptools import setup
setup(name='BDD-Behave-Python Framework',
	version='1.0',
	description='Python-Behave Framework for BDD',
	author='Sumeet Agrawal',
	author_email='sumeetagrawal840@gmail.com',
	packages=[
	'BDDCommons.CommonFuncs',
	'BDDCommons.CommonSteps'
	]
)

#python setup.py install
#python setup.py develop
