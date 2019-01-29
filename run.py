#Add commands to run development server from here
import portfolio
from instance import config

if __name__ == "__main__":
    portfolio.app.run(debug=config.DEBUG)