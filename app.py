from flask import Flask
import os

env_var = os.environ.get("APP_PORT", "3000")

app = Flask(__name__)

@app.route("/health")
def hello_health():
    return "ok", HTTP_200_OK

@app.route("/")
def hello_world():
    return "ola mundo"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=env_var, debug=True)
