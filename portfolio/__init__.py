#Add flask init here
from flask import Flask
app = Flask(__name__)

import portfolio.views
