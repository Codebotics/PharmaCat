# Pharmacat
A cutting edge Open Source HealthCare app(Android+Web) which utilizes Machine Learning to predict diseases based on Symptoms or Natural Language. Also includes features such as Live Chat with Doctors,Appointment Booking,Possible Drugs you can take and Specialist you can refer to.


## Motivation
With the amount of data present in today's age, we can diagnose common ailments and help reduce the workload on hospitals and doctors. Prognosis of common ailments through ML and NLP will also help patients save time and money by not having to travel long distances and physically consult doctors which is also tedious and time consuming. Moreover we still feel that having a doctor's final opinion is priceless and that ML cannot completely replace doctors. Hence our services provides virtual doctor consultations. Moreover in cases of emergency when going to a hospital is absolutely necessary we cannot waste time on booking appointments after reaching the hospital. Our service lets users check for doctors' availabiltiy in hospitals neraby and prebook appointments for emergency consultations. It also shows vacancies for particular doctors (those who sign-up) in nearby hospitals. We also provide basic medication suggestions for common aiements.



*Feel free to navigate to any section you want through the navbar below.*

## ATTENTION 
This project is not meant for use in real life but rather provides a base on which a solid service can be built with the help of individuals from the healthcare industry.
This project was created solely for educational purposes and is not intended for commercial use. Please do not take any decisions without consulting a real doctor first.

![logo](https://i.imgur.com/zko8kft.jpg "PharmaCat logo was created by Prince Singh and Banner created by Apratim Shukla")

### Winner of the 24 hours Hackathon conducted by Microsoft Innovations Club,VIT Chennai and sponsored by Geek for Geeks.

The PharmaCat Project is divided into **2 sections**:


...The PharmaCat Android App (based on PharmaCat REST API) created by [Prince Singh](https://github.com/princesinghr1)

...The Web Application(utilizes Flask) and API Server created by [Apratim Shukla](https://github.com/apratimshukla6), [Mayank Tolani](https://github.com/mak1082) and [Swapnil Mishra](https://github.com/Swapnil0115)

*To setup the Web Application along with API server do:*
```
pip install virtualenv
virtualenv venv
venv\scripts\activate
```
**Then after activating the virtual environment do:**
```
pip install -r requirements.txt
```

**Documentation for PharmaCat RESTFUL JSON API**


| Method | URL                                                                | USE                                                     |
| ------ | ------------------------------------------------------------------ | ------------------------------------------------------- |
|  `GET` | http://127.0.0.1:5000/api/details/<b>apitoken</b>                  | Shows your PharmaCat Account Details                    |
|  `GET` | http://127.0.0.1:5000/api/login/<b>username~password</b>           | Generates your PharmaCat API Token upon successful login|
|  `GET` | http://127.0.0.1:5000/api/symptoms                                 | Generates list of all Symptoms in your Database         |
|  `GET` | http://127.0.0.1:5000/api/diagnosesym/<b>n\~symptom1\~symptom2</b>    | Diagnoses Disease,Medicine and Specialist               |
|  `GET` | http://127.0.0.1:5000/api/diagnosetext/<b>word1 ~ word2 ~ word3</b>    | Diagnoses Disease                                       |
|  `GET` | http://127.0.0.1:5000/api/hospital/<b>apitoken</b>                 | Generates list of Hospitals near you                      |
|  `GET` | http://127.0.0.1:5000/api/register/<b>username ~ password ~ email ~ fullname ~ address ~ bloodgroup ~ age</b>                 | Registers the Patient in the PharmaCat Database                      |

