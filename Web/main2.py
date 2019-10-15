import pandas as pd 
import numpy as np
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics import classification_report
import nltk
import re
from sklearn.metrics import classification_report
import pickle

data=pd.read_csv('Data/drugsComTrain_raw.csv')
df_X=data['review']
df_X=df_X[0:5000]
df_Y1=data['condition']
df_Y1=df_Y1[0:5000]

#nltk.download('stopwords')
from nltk.corpus import stopwords
from nltk.stem.porter import PorterStemmer
corpus=[]
ps=PorterStemmer()
for i in range(0,len(df_X)):
    review=re.sub('[^a-zA-Z]', ' ', df_X[i]) #dataset.values[0][0] will also work
    review=review.lower()
    review=review.split()
    review=[ps.stem(word) for word in review if not word in set(stopwords.words('english'))]
    review=' '.join(review)
    corpus.append(review)
print("hi")
#print(corpus)

cv= CountVectorizer()
X=cv.fit_transform(corpus).toarray()

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test=train_test_split(X,df_Y1,test_size=0.25,random_state=0)

# Fitting the classifier to the training set
from sklearn.naive_bayes import GaussianNB
classifier=GaussianNB()
classifier.fit(X_train, y_train)

# Predicting the test set results
y_pred=classifier.predict(X_test)

filename = 'disease_predict.sav'
pickle.dump(classifier, open(filename, 'wb'))

loaded_model = pickle.load(open(filename, 'rb'))
result = loaded_model.score(X_test, y_test)

data=['headache and vomiting']
vect=cv.transform(data).toarray()
p=classifier.predict(vect)
print(p)
# Making the Confusion Matrix
from sklearn.metrics import confusion_matrix
cm=confusion_matrix(y_test,y_pred)

#print(classification_report(y_test, classifier.predict(X_test), digits=4))

