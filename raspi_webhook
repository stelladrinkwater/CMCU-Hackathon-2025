from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.get_json()
    if 'id' in data:
        nfc_id = data['id']
        # Process the NFC ID as needed
        print(f"NFC Id recieved: {nfc_id}")
        return jsonify({"status": "success", "nfc_id": nfc_id}), 200
    else:
        return jsonify({"status": "error", "message": "ID not found"}), 400

if __name__ == '__main__':
    # To test this endpoint, you can use the following curl command:
    # PowerShell:
    # Invoke-RestMethod -Uri http://***server_IP***:5000/webhook -Method Post -ContentType "application/json" -Body '{"id": "your_nfc_id"}'
    
    # Python:
    # import requests
    # response = requests.post('http://***server_IP***:5000/webhook', json={"id": "your_nfc_id"})
    # print(response.json())
    app.run(host='0.0.0.0', port=5000,debug=True)
