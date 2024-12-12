# Použi oficiálny Python image ako základ
FROM python:3.10-slim

# Nastav pracovný adresár v kontejnere
WORKDIR /app

# Kopíruj requirements.txt a skript do pracovného adresára
COPY requirements.txt .
COPY app.py .
COPY textfile.txt .

# Nainštaluj závislosti
RUN pip install --no-cache-dir -r requirements.txt

# Stiahnutie spaCy modelu
RUN python -m spacy download en_core_web_sm

# Spusti Python skript pri štarte kontejnér
CMD ["python", "app.py"]
