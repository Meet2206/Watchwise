import os
from flask import Flask, request, jsonify
from flask_cors import CORS
import mysql.connector
from config import DB_CONFIG

app = Flask(__name__)
CORS(app)

def get_db_connection():
    return mysql.connector.connect(
        host=DB_CONFIG['host'],
        user=DB_CONFIG['user'],
        password=DB_CONFIG['password'],
        database=DB_CONFIG['database']
    )

@app.route('/')
def home():
    return "WatchWise Backend is running!"

@app.route('/recommend', methods=['POST'])
def recommend_watches():
    data = request.get_json()
    min_budget = data.get('min_budget')
    max_budget = data.get('max_budget')
    occupation = data.get('occupation', '').strip()
    style = data.get('style', '').strip().lower()

    if min_budget is None or max_budget is None or not occupation or not style:
        return jsonify({'error': 'All fields are required.'}), 400

    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        query = """
            SELECT * FROM watches
            WHERE price BETWEEN %s AND %s
              AND LOWER(style) LIKE %s
              AND FIND_IN_SET(%s, occupation_fit) > 0
            ORDER BY price DESC
            LIMIT 10;
        """
        cursor.execute(query, (min_budget, max_budget, f"%{style}%", occupation))
        watches = cursor.fetchall()
        return jsonify({'watches': watches}), 200
    except Exception as e:
        return jsonify({'error': 'Internal server error.', 'details': str(e)}), 500
    finally:
        try:
            cursor.close()
            conn.close()
        except:
            pass

if __name__ == '__main__':
    app.run(debug=True)
