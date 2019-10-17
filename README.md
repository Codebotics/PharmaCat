# PharmaCat

![logo](https://i.imgur.com/zko8kft.jpg "PharmaCat logo was created by Prince Singh and Banner created by Apratim Shukla")

### This project was created during the 24 hours Hackathon conducted by Microsoft Innovations Club,VIT Chennai and sponsored by Geek for Geeks.

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
|  `GET` | http://127.0.0.1:5000//api/diagnosesym/<b>symptom1~symptom2</b>    | Diagnoses Disease,Medicine and Specialist               |
|  `GET` | http://127.0.0.1:5000/api/diagnosetext/<b>word1 ~ word2 ~ word3</b>    | Diagnoses Disease                                       |
|  `GET` | http://127.0.0.1:5000/api/hospital/<b>apitoken</b>                 | Generates list of Hospitals near you                      |
|  `GET` | http://127.0.0.1:5000/api/register/<b>username ~ password ~ email ~ fullname ~ address ~ bloodgroup ~ age</b>                 | Registers the Patient in the PharmaCat Database                      |

