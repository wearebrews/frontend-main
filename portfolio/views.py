#Add views here

from portfolio import app
from flask import render_template

@app.route("/")
@app.route("/<menu>")
def main(menu=None):
    if isinstance(menu, str):
        menu = menu.upper()
    menu_items = ["MAIN", "PROJECTS", "BLOG", "ABOUT"]
    return render_template("frontpage/layout.html", menu_items=menu_items, current_menu=menu)


if __name__=="__main__":
    print("Main")