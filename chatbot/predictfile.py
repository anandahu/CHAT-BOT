from keras.models import load_model
import json
import pickle
import numpy as np
import random

model = load_model('chatbot_model.h5')

intents = json.loads(open('C:/Users/ASUS/Desktop/Chatbot_completed_remplate_2/Chatbot/intents.json').read())

words = pickle.load(open('C:/Users/ASUS/Desktop/Chatbot_completed_remplate_2/Chatbot/words.pkl','rb'))

classes = pickle.load(open('C:/Users/ASUS/Desktop/Chatbot_completed_remplate_2/Chatbot/classes.pkl','rb'))


# def clean_up_sentence(sentence): # tokenize the pattern - split words into array

# sentence_words = nltk.word_tokenize(sentence)
# #print(sentence_words)
# # stem each word - create short form for word

# sentence_words = [lemmatizer.lemmatize(word.lower()) for word in sentence_words]
# #print(sentence_words)

# return sentence_words
import nltk
from nltk.stem import WordNetLemmatizer

lemmatizer = WordNetLemmatizer()

def clean_up_sentence(sentence):
    sentence_words = nltk.word_tokenize(sentence)
    sentence_words = [lemmatizer.lemmatize(word.lower()) for word in sentence_words]
    return sentence_words


import nltk
from nltk.stem import WordNetLemmatizer

lemmatizer = WordNetLemmatizer()

def clean_up_sentence(sentence):
    sentence_words = nltk.word_tokenize(sentence)
    sentence_words = [lemmatizer.lemmatize(word.lower()) for word in sentence_words]
    return sentence_words

def bow(sentence, words, show_details=True):
    sentence_words = clean_up_sentence(sentence)
    print(sentence_words)

    bag = [0]*len(words)
    for s in sentence_words:
        for i, w in enumerate(words):
            if w == s:
                bag[i] = 1
                if show_details:
                    print("found in bag: %s" % w)
    return np.array(bag)

def predict_class(sentence, model):
    p = bow(sentence, words, show_details=False)
    print(p)

    res = model.predict(np.array([p]))[0]
    print(res)

    ERROR_THRESHOLD = 0.25

    results = [[i, r] for i, r in enumerate(res) if r > ERROR_THRESHOLD]
    print(results)

    results.sort(key=lambda x: x[1], reverse=True)
    print(results)

    return_list = []

    for r in results:
        return_list.append({"intent": classes[r[0]], "probability": str(r[1])})

    return return_list
    print(return_list)




def getResponse(ints, intents_json):

    tag = ints[0]['intent']
    #print(tag)

    list_of_intents = intents_json['intents']
    #print(list_of_intents)

    for i in list_of_intents:
        if(i['tag']== tag):
            result = random.choice(i['responses'])
            break
    return result
def chatbot_response(text):
    ints = predict_class(text, model) #print(ints)

    res = getResponse(ints, intents)
    print(res)
    return res




start = True

# while start:

query = "sports"
if query in ['quit','exit','bye']:
    start = False
    # continue
try:
	print("User: ", query)
	res = chatbot_response(query)

	print(res)
except:
	print('You may need to rephrase your question.')