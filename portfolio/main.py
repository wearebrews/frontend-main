from flask import Flask, render_template
app = Flask(__name__)

DEBUG=True

@app.route("/<menu>")
def submenu(menu):
    menu_items = ["MAIN", "PROJECTS", "BLOG", "ABOUT"]
    return render_template("navbar.html", menu_items=menu_items, current_menu=menu.upper())


if __name__=="__main__":
    print("Main")
    app.run(debug=True)
