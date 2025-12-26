from flask import Flask
app = Flask(__name__)
@app.route('/', methods=['GET'])
def root():
    return "Hello from Flask Service!"

if __name__ == '__main__':
    # Run the app on localhost:5000
    app.run(host='0.0.0.0', port=5000, debug=True)
