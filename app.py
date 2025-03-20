from transformers import pipeline
import time, datetime, os
import csv

from flask import Flask, request, jsonify

sentiment_pipeline = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english", device=-1)

def log_metrics(input_text, start_time, end_time, prediction):
    timestamp = datetime.datetime.now().isoformat()
    latency_ms = (end_time - start_time) * 1000
    log_file = os.environ.get('METRICS_LOG_FILE', 'system_inference_metrics.csv')
    log_entry = {
        'Inference Latency (ms)': f'{latency_ms:.2f}',
        'Prediction': prediction,
        'Input Text': input_text,
        'Timestamp': timestamp,

    }

    file_exists = os.path.isfile(log_file)

    with open(log_file, 'a', newline='') as f:
        csv_writer = csv.DictWriter(f, fieldnames=log_entry.keys())

        if not file_exists:
            csv_writer.writeheader()
        csv_writer.writerow(log_entry)

    print(log_entry)

app = Flask(__name__)

@app.route("/infer", methods=["POST"])
def infer():
    input_text = request.json.get('text', '')
    start_time = time.time()
    prediction_result = sentiment_pipeline(input_text)[0]
    end_time = time.time()
    prediction_label = prediction_result['label']

    log_metrics(input_text, start_time, end_time, prediction_label)

    return jsonify({"input_text": input_text, "sentiment": prediction_label}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)