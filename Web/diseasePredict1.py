import numpy as np
import pandas as pd
import re
#import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.naive_bayes import MultinomialNB
from sklearn.model_selection import train_test_split
from sklearn import model_selection
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import cross_val_score
import pickle

#Analysing Data
data = pd.read_csv("Scraped-Data/dataset_clean.csv", encoding ="ISO-8859-1")
df = pd.DataFrame(data)
df_1 = pd.get_dummies(df.Target)
df_s = df['Source']
df_pivoted = pd.concat([df_s,df_1], axis=1)
df_pivoted.drop_duplicates(keep='first',inplace=True)
df_pivoted[:5]

cols = df_pivoted.columns
cols = cols[1:]
df_pivoted = df_pivoted.groupby('Source').sum()
df_pivoted = df_pivoted.reset_index()
df_pivoted[:5]

df_pivoted.to_csv("Scraped-Data/df_pivoted.csv")
x = df_pivoted[cols]
y = df_pivoted['Source']

#print(len(df_pivoted))

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.33, random_state=42)

mnb = MultinomialNB()
mnb = mnb.fit(x_train, y_train)
#print(mnb.score(x_test, y_test))

mnb_tot = MultinomialNB()
mnb_tot = mnb_tot.fit(x, y)
print(mnb_tot.score(x, y))

disease_pred = mnb_tot.predict(x)
disease_real = y.values
for i in range(0, len(disease_real)):
    if disease_pred[i]!=disease_real[i]:
        print ('Pred: {0} Actual:{1}'.format(disease_pred[i], disease_real[i]))

print ("DecisionTree")
dt = DecisionTreeClassifier()
clf_dt=dt.fit(x,y)
print ("Acurracy: ", clf_dt.score(x,y))

data = pd.read_csv("Manual-Data/Training.csv")

df = pd.DataFrame(data)
cols = df.columns
cols = cols[:-1]
x = df[cols]
y = df['prognosis']

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.33, random_state=42)
mnb = MultinomialNB()
mnb = mnb.fit(x_train, y_train)
print(mnb.score(x_test, y_test))

test_data = pd.read_csv("Manual-Data/Testing.csv")

testx = test_data[cols]
testy = test_data['prognosis']
mnb.score(testx, testy)

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.33, random_state=42)
print ("DecisionTree")
clf_dt=dt.fit(x_train,y_train)
print ("Acurracy: ", clf_dt.score(x_test,y_test))
scores = model_selection.cross_val_score(dt, x_test, y_test, cv=3)
print (scores)
print (scores.mean())
print ("Acurracy on the actual test data: ", clf_dt.score(testx,testy))

importances = dt.feature_importances_
indices = np.argsort(importances)[::-1]
features = cols
for f in range(5):
    print("%d. feature %d - %s (%f)" % (f + 1, indices[f], features[indices[f]] ,importances[indices[f]]))

feature_dict = {}
for i,f in enumerate(features):
    feature_dict[f] = i
print("Enter 3 Symptoms")
for i in ["itching","nodal_skin_eruptions","skin_rash"]:
    s=i
    m=feature_dict[s]
    if (m!=0):
        sample_x = [i/m if i ==m else i*0 for i in range(len(features))]

filename = 'finalized_model.sav'
pickle.dump(clf_dt, open(filename, 'wb'))

loaded_model = pickle.load(open(filename, 'rb'))
result = loaded_model.score(x_train, y_train)

sample_x = np.array(sample_x).reshape(1,len(sample_x))
p_disease=clf_dt.predict(sample_x)
print(p_disease[0])
p1=p_disease[0]