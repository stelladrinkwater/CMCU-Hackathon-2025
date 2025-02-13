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
    print(data)
    if 'tag' in data:
        tag = data['tag']
        print(f"NFC tag recieved: {tag}")
    else:
        return jsonify({"status": "error", "message": "Tag not found"}), 400
    
    if 'device' in data:
        device = data['device']
        print(f"Recieved from device #{device}")
    else:
        return jsonify({"status": "error", "message": "Device not found"}), 400
    
    try:
        tag = float(tag)
    except ValueError:
        return jsonify({"status": "error", "message": "Tag not an int"}), 400

    try:
        device = float(device)
    except ValueError:
        return jsonify({"status": "error", "message": "Device not an int"}), 400

    if (device < 1 or device > 3):
        return jsonify({"status": "error", "message": "Invalid device"}), 400
    
    if (device == 1):
        print("Sending message to RNBO...")
        try:
            client.send_message("/rnbo/inst/0/params/past_card", tag)
        except:
            print("We got an error :(")

    elif (device == 2):
        client.send_message("/rnbo/inst/0/params/present_card", tag)

    elif (device == 3):
        client.send_message("/rnbo/inst/0/params/future_card", tag)

    return jsonify({"status": "success", "tag": tag}), 200
    

if __name__ == '__main__':
    # To test this endpoint, you can use the following curl command:
    # PowerShell:
    # Invoke-RestMethod -Uri http://***server_IP***:5000/webhook -Method Post -ContentType "application/json" -Body '{"id": "your_nfc_id"}'
    
    # Python:
    # import requests
    # response = requests.post('http://***server_IP***:5000/webhook', json={"id": "your_nfc_id"})
    # print(response.json())
    app.run(host='0.0.0.0', port=5000,debug=True)
