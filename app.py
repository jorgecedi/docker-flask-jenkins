#!/bin/python3
from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    # Test
    return "This is the index view"

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
