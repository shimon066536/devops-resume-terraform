from datetime import datetime
from flask import Flask, request, jsonify
from flask_mail import Mail, Message
from dotenv import load_dotenv
from flask_cors import CORS
from pymongo import MongoClient
import os

load_dotenv()  # טוען את המשתנים מקובץ .env

app = Flask(__name__)
CORS(app)  # מאפשר גישה מה-Frontend

app.config['MAIL_SERVER'] = os.getenv('MAIL_SERVER')
app.config['MAIL_PORT'] = int(os.getenv('MAIL_PORT'))
app.config['MAIL_USE_TLS'] = os.getenv('MAIL_USE_TLS') == 'True'
app.config['MAIL_USERNAME'] = os.getenv('MAIL_USERNAME')
app.config['MAIL_PASSWORD'] = os.getenv('MAIL_PASSWORD')

mail = Mail(app)

# חיבור ל-MongoDB
mongo_url = "mongodb://localhost:27017"  # או connection string של Atlas
client = MongoClient(mongo_url)
db = client["contact_db"]
collection = db["messages"]

@app.route('/contact', methods=['POST'])
def contact():
    data = request.get_json()
    name = data.get('name')
    email = data.get('email')
    message = data.get('message')

    if not name or not email or not message:
        return jsonify({"error": "Missing fields"}), 400
    
    # שמירה ל-MongoDB
    result = collection.insert_one({
        'name': data['name'],
        'email': data['email'],
        'message': data['message'],
        "name": name,
        "email": email,
        "message": message,
        "timestamp": datetime.utcnow()
    })

    # שליחת מייל אליך
    msg = Message(subject="New Contact Form Submission",
                  sender=app.config['MAIL_USERNAME'],
                  recipients=[app.config['MAIL_USERNAME']],  # כתובת היעד – שלך
                  body=f"""
New message from {data['name']} <{data['email']}>

{data['message']}
""")
    mail.send(msg)


    return jsonify({"message": "Form submitted successfully!"}), 200

if __name__ == '__main__':
    app.run(debug=True)

