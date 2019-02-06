#Add commands to run development server from here
import portfolio
from instance import config
import os

if os.environ.get("FLASK_PORT") != 0:
    PORT = os.environ.get("FLASK_PORT")
else:
    PORT = "5000"

if __name__ == "__main__":
    portfolio.app.run(debug=config.DEBUG, host="0.0.0.0", port=PORT)
