from flask import Flask, jsonify
from api.vdi import vdi_bp
from utils.logger import setup_logger

app = Flask(__name__)
logger = setup_logger()

# Register API blueprint
app.register_blueprint(vdi_bp, url_prefix='/api')

@app.route('/')
def home():
    logger.info("Home endpoint accessed")
    return jsonify({"message": "Welcome to Secure VDI Platform"})

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=False)
