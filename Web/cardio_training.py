import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
from matplotlib import pyplot as plt
import tensorflow as tf
from tensorflow.keras.optimizers import RMSprop,Nadam,Adadelta,Adam
from tensorflow.keras.layers import BatchNormalization,LeakyReLU
from tensorflow.keras.callbacks import ReduceLROnPlateau, EarlyStopping
import seaborn as sns
import scipy.stats as stats
import sklearn
import os
import pickle
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import normalize
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB

df = mydata = pd.read_csv("Data/cardio_train.csv", sep=";")

df.drop('id', inplace=True, axis=1)
df.head()
dfcol = df.columns

# duplicated_number = mydata.duplicated().sum()
# print(duplicated_number)

# #removing the duplicated values from the dataset
# duplicated = mydata[mydata.duplicated(keep=False)]
# #duplicated.head(2)

# mydata.drop_duplicates(inplace=True)

# duplicated_number2 = mydata.duplicated().sum()
# print(duplicated_number2)
# x = mydata.copy(deep=True)
# x.describe()
# s_list = ["age", "height", "weight", "ap_hi", "ap_lo"]
# def standartization(x):
#     x_std = x.copy(deep=True)
#     for column in s_list:
#         x_std[column] = (x_std[column]-x_std[column].mean())/x_std[column].std()
#     return x_std 
# x_std=standartization(x)
# x_std.head()
# x_melted = pd.melt(frame=x_std, id_vars="cardio", value_vars=s_list, var_name="features", value_name="value", col_level=None)
# x_melted
# ap_list = ["ap_hi", "ap_lo"]
# boundary = pd.DataFrame(index=["lower_bound","upper_bound"]) # We created an empty dataframe
# for each in ap_list:
#     Q1 = x[each].quantile(0.25)
#     Q3 = x[each].quantile(0.75)
#     IQR = Q3 - Q1

#     lower_bound = Q1- 1.5*IQR
#     upper_bound = Q3 + 1.5*IQR
#     boundary[each] = [lower_bound, upper_bound ]
# boundary
# ap_hi_filter = (x["ap_hi"] > boundary["ap_hi"][1])
# ap_lo_filter = (x["ap_lo"] > boundary["ap_lo"][1])                                                           
# outlier_filter = (ap_hi_filter | ap_lo_filter)
# x_outliers = x[outlier_filter]
# x_outliers["cardio"].value_counts()
# out_filter = ((x["ap_hi"]>250) | (x["ap_lo"]>200) )
# print(x[out_filter]["cardio"].count())
# #count of outliers
# x = x[~out_filter]
# corr = x.corr()
# y = x["cardio"]
# x.drop("cardio", axis=1,inplace=True)

from sklearn import preprocessing
scaler=preprocessing.MinMaxScaler()
dfscale=scaler.fit_transform(df)
dfscale2=pd.DataFrame(dfscale, columns=dfcol)
dfscale2.head()

# x_train,x_test, y_train, y_test = train_test_split(x,y,test_size=0.2,random_state=42)
# x_train = normalize(x_train)
# x_test = normalize(x_test)
# x = normalize(x)


xdf=dfscale2.iloc[:,0:11]
#xdf["gender"]=np.where(xdf["gender"]==1,"0","1") #Cambiar el 2 por 1, el 1 por 0 (por orden)
#Aca vendria un posible drop de variables xdf=xdf.drop(["gender","gluc"], axis=1)
ydf=dfscale2.iloc[:,-1]

x_training, x_testing, y_training, y_testing = train_test_split(xdf, ydf, test_size = 0.2, random_state=123, stratify=ydf)


ran = RandomForestClassifier(n_estimators=100)

ran2 = ran.fit(x_training,y_training)


# import tensorflow as tf
# from tensorflow.keras.optimizers import RMSprop,Nadam,Adadelta,Adam
# from tensorflow.keras.layers import BatchNormalization,LeakyReLU
# from tensorflow.keras.callbacks import ReduceLROnPlateau, EarlyStopping
# import numpy as np # linear algebra
# import pandas as pd # data processing
# import seaborn as sns             # visualizations
# import matplotlib.pyplot as plt   # visualizations
# from sklearn import preprocessing
# from sklearn.model_selection import train_test_split
# from tensorflow.keras import utils
# import os
# import pickle


# from keras.models import Sequential
# from keras.layers.core import Dense, Activation
# from keras.optimizers import SGD
# from keras.layers import Dropout
# from keras.constraints import maxnorm

# mydata = pd.read_csv("cardio_train.csv", sep=";")
# mydata.drop('id', inplace=True, axis=1)
# df = mydata
# dfcol=df.columns
# mydata.head()


# model = Sequential()
# model.add(Dense(25, input_dim=11, activation='softsign', kernel_constraint=maxnorm(2)))
# #model.add(Dropout(0))
# model.add(Dense(5, activation='softsign'))
# #model.add(Dropout(0))
# model.add(Dense(3, activation='softsign'))
# #model.add(Dropout(0))
# model.add(Dense(1, activation='sigmoid'))

# model.compile(loss = 'binary_crossentropy', optimizer='Nadam', metrics=['accuracy'])


# from sklearn import preprocessing
# scaler=preprocessing.MinMaxScaler()
# dfscale=scaler.fit_transform(df)
# dfscale2=pd.DataFrame(dfscale, columns=dfcol)
# dfscale2.head()


# xdf=dfscale2.iloc[:,0:11]
# #xdf["gender"]=np.where(xdf["gender"]==1,"0","1") #Cambiar el 2 por 1, el 1 por 0 (por orden)
# #Aca vendria un posible drop de variables xdf=xdf.drop(["gender","gluc"], axis=1)
# ydf=dfscale2.iloc[:,-1]


# x_training, x_testing, y_training, y_testing = train_test_split(xdf, ydf, test_size = 0.2, random_state=123, stratify=ydf)

# model2 = model.fit(x_training, y_training, epochs=50, batch_size=50, verbose=0)
# score = model.evaluate(x_training, y_training)
# print("\n Training Accuracy:", score[1])
# score = model.evaluate(x_testing, y_testing)
# print("\n Testing Accuracy:", score[1])


filename = 'fcardio.sav'
pickle.dump(ran2, open(filename, 'wb'))