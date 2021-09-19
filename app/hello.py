#!flask/bin/python
import time
import json


from flask import jsonify, request
from flask import Flask

app = Flask(__name__)

@app.route('/hello', methods=['GET', 'POST'])
def hello():
    return jsonify({"name": "jj", "age": 91 })

if __name__ == '__main__':
    app.run(host='0.0.0.0')