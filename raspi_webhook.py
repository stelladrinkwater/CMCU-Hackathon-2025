from flask import Flask, request, jsonify
from pythonosc import udp_client

app = Flask(__name__)


target_ip = "192.168.1.65" # Verify this
# target_ip = "mwpi.local" maybe?
target_port = 1234
client = udp_client.SimpleUDPClient(target_ip, target_port)


@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.get_json()
    if 'id' in data:
        nfc_id = data['id']
        # Process the NFC ID as needed
        print(f"NFC Id recieved: {nfc_id}")

        try:
            nfc_id = float(nfc_id)
            client.send_message("/rnbo/inst/0/params/card", nfc_id)

        except ValueError:
            print(f"NFC Id not a float.")

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
