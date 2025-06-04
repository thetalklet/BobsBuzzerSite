from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/button-pressed', methods=['POST'])
def button_pressed():
    data = request.get_json()
    message = data.get('message', '[No message]')
    print(f"Button clicked! Message: {message}")
    return jsonify(status="ok", message=f"Server got: {message}")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=7999)

