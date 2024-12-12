import spacy
from spacy.lang.sk import Slovak


# Load model
nlp = spacy.load("en_core_web_sm")


# Read text
with open('textfile.txt', 'r', encoding='utf-8') as file:
    text = file.read()

#text="SpaCy je výkonná knižnica pre spracovanie prirodzeného jazyka."
# Process text
doc = nlp(text)

# Data about tookens
for token in doc:
    print(f"{token.text} -> {token.pos_}")
