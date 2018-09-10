import os


import time

from flask import Flask
print "container running, start app"

app = Flask(__name__)


hit_cnt = 0
def get_hit_count():
    global hit_cnt
    retries = 5
    hit_cnt += 1
    return hit_cnt
        


@app.route('/')
def hello():
    count = get_hit_count()
    return 'Hello World! I have been seen {} times.\n'.format(count)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)

