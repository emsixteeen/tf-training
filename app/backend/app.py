import os
import time

from flask import Flask
from flaskext.mysql import MySQL
app = Flask(__name__)

mysql = MySQL()

mysql_database_host = os.environ['MYSQL_HOST']

# MySQL configurations
app.config['MYSQL_USER'] = 'user'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'app'
app.config['MYSQL_HOST'] = mysql_database_host
mysql.init_app(app)

while True:
    try:
        global cursor
        conn = mysql.connect()
        cursor = conn.cursor()
        break
    except Exception as e:
        print(e)
        time.sleep(2)

@app.route("/")
def main():
    return "Hello from Our Web App!\n"

@app.route('/joke')
def hello():
    return 'Why is it always hot in the corner of a room? Because a corner is 90 degrees.\n'

@app.route('/jokeDb')
def read():
    cursor.execute("SELECT * FROM app.jokes ORDER BY RAND() LIMIT 1")
    row = cursor.fetchone()
    result = []
    while row is not None:
      result.append(row[0])
      row = cursor.fetchone()

    return "{}\n".format(",".join(result))

if __name__ == "__main__":
    app.run()
