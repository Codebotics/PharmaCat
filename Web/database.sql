create table users
(
ID int AUTO_INCREMENT,
Username varchar(255),
Password varchar(255), 
Email varchar(255), 
Full_Name varchar(255),
Address varchar(255),
Blood_Group varchar(255),
Age int,
API_Token varchar(255), 
PRIMARY KEY (ID)
);

create table doctors
(
ID int AUTO_INCREMENT,
Username varchar(255),
Password varchar(255), 
Email varchar(255), 
Full_Name varchar(255),
Registration_Number varchar(255),
Contact_Number bigint(13),
Hospital_Name varchar(255),
Specialization varchar(255),
Address varchar(255),
PRIMARY KEY (ID)
);

create table booking
(
 Record_ID int AUTO_INCREMENT,
 Doctor_ID int,
 Patient_ID int,
 Appointment_Time time,
 Status int,
 PRIMARY KEY(Record_ID)
);
 
/*symptoms table and data*/
create table symptoms(Symptom_ID int AUTO_INCREMENT,Symptom_Name varchar(255),PRIMARY KEY (Symptom_ID));
INSERT INTO symptoms VALUES('','itching');
INSERT INTO symptoms VALUES('','skin_rash');
INSERT INTO symptoms VALUES('','nodal_skin_eruptions');
INSERT INTO symptoms VALUES('','continuous_sneezing');
INSERT INTO symptoms VALUES('','chills');
INSERT INTO symptoms VALUES('','joint_pain');
INSERT INTO symptoms VALUES('','stomach_pain');
INSERT INTO symptoms VALUES('','acidity');
INSERT INTO symptoms VALUES('','ulcers_on_tongue');
INSERT INTO symptoms VALUES('','muscle_wasting');
INSERT INTO symptoms VALUES('','vomiting');
INSERT INTO symptoms VALUES('','burning_micturition');
INSERT INTO symptoms VALUES('','spotting_ urination');
INSERT INTO symptoms VALUES('','fatigue');
INSERT INTO symptoms VALUES('','weight_gain');
INSERT INTO symptoms VALUES('','anxiety');
INSERT INTO symptoms VALUES('','cold_hands_and_feets');
INSERT INTO symptoms VALUES('','mood_swings');
INSERT INTO symptoms VALUES('','weight_loss');
INSERT INTO symptoms VALUES('','restlessness');
INSERT INTO symptoms VALUES('','lethargy');
INSERT INTO symptoms VALUES('','patches_in_throat');
INSERT INTO symptoms VALUES('','irregular_sugar_level');
INSERT INTO symptoms VALUES('','cough');
INSERT INTO symptoms VALUES('','high_fever');
INSERT INTO symptoms VALUES('','sunken_eyes');
INSERT INTO symptoms VALUES('','breathlessness');
INSERT INTO symptoms VALUES('','sweating');
INSERT INTO symptoms VALUES('','dehydration');
INSERT INTO symptoms VALUES('','indigestion');
INSERT INTO symptoms VALUES('','headache');
INSERT INTO symptoms VALUES('','yellowish_skin');
INSERT INTO symptoms VALUES('','dark_urine');
INSERT INTO symptoms VALUES('','nausea');
INSERT INTO symptoms VALUES('','loss_of_appetite');
INSERT INTO symptoms VALUES('','pain_behind_the_eyes');
INSERT INTO symptoms VALUES('','back_pain');
INSERT INTO symptoms VALUES('','constipation');
INSERT INTO symptoms VALUES('','abdominal_pain');
INSERT INTO symptoms VALUES('','diarrhoea');
INSERT INTO symptoms VALUES('','mild_fever');
INSERT INTO symptoms VALUES('','yellow_urine');
INSERT INTO symptoms VALUES('','yellowing_of_eyes');
INSERT INTO symptoms VALUES('','acute_liver_failure');
INSERT INTO symptoms VALUES('','fluid_overload');
INSERT INTO symptoms VALUES('','swelling_of_stomach');
INSERT INTO symptoms VALUES('','swelled_lymph_nodes');
INSERT INTO symptoms VALUES('','malaise');
INSERT INTO symptoms VALUES('','blurred_and_distorted_vision');
INSERT INTO symptoms VALUES('','phlegm');
INSERT INTO symptoms VALUES('','throat_irritation');
INSERT INTO symptoms VALUES('','redness_of_eyes');
INSERT INTO symptoms VALUES('','sinus_pressure');
INSERT INTO symptoms VALUES('','runny_nose');
INSERT INTO symptoms VALUES('','congestion');
INSERT INTO symptoms VALUES('','chest_pain');
INSERT INTO symptoms VALUES('','weakness_in_limbs');
INSERT INTO symptoms VALUES('','fast_heart_rate');
INSERT INTO symptoms VALUES('','pain_during_bowel_movements');
INSERT INTO symptoms VALUES('','pain_in_anal_region');
INSERT INTO symptoms VALUES('','bloody_stool');
INSERT INTO symptoms VALUES('','neck_pain');
INSERT INTO symptoms VALUES('','dizziness');
INSERT INTO symptoms VALUES('','cramps');
INSERT INTO symptoms VALUES('','bruising');
INSERT INTO symptoms VALUES('','obesity');
INSERT INTO symptoms VALUES('','swollen_legs');
INSERT INTO symptoms VALUES('','swollen_blood_vessels');
INSERT INTO symptoms VALUES('','puffy_face_and_eyes');
INSERT INTO symptoms VALUES('','enlarged_thyroid');
INSERT INTO symptoms VALUES('','brittle_nails');
INSERT INTO symptoms VALUES('','swollen_extremeties');
INSERT INTO symptoms VALUES('','excessive_hunger');
INSERT INTO symptoms VALUES('','extra_marital_contacts');
INSERT INTO symptoms VALUES('','drying_and_tingling_lips');
INSERT INTO symptoms VALUES('','slurred_speech');
INSERT INTO symptoms VALUES('','knee_pain');
INSERT INTO symptoms VALUES('','hip_joint_pain');
INSERT INTO symptoms VALUES('','muscle_weakness');
INSERT INTO symptoms VALUES('','stiff_neck');
INSERT INTO symptoms VALUES('','swelling_joints');
INSERT INTO symptoms VALUES('','movement_stiffness');
INSERT INTO symptoms VALUES('','spinning_movements');
INSERT INTO symptoms VALUES('','loss_of_balance');
INSERT INTO symptoms VALUES('','unsteadiness');
INSERT INTO symptoms VALUES('','weakness_of_one_body_side');
INSERT INTO symptoms VALUES('','loss_of_smell');
INSERT INTO symptoms VALUES('','bladder_discomfort');
INSERT INTO symptoms VALUES('','foul_smell_of urine');
INSERT INTO symptoms VALUES('','continuous_feel_of_urine');
INSERT INTO symptoms VALUES('','passage_of_gases');
INSERT INTO symptoms VALUES('','internal_itching');
INSERT INTO symptoms VALUES('','toxic_look_(typhos)');
INSERT INTO symptoms VALUES('','depression');
INSERT INTO symptoms VALUES('','irritability');
INSERT INTO symptoms VALUES('','muscle_pain');
INSERT INTO symptoms VALUES('','altered_sensorium');
INSERT INTO symptoms VALUES('','red_spots_over_body');
INSERT INTO symptoms VALUES('','abnormal_menstruation');
INSERT INTO symptoms VALUES('','dischromic _patches');
INSERT INTO symptoms VALUES('','watering_from_eyes');
INSERT INTO symptoms VALUES('','increased_appetite');
INSERT INTO symptoms VALUES('','polyuria');
INSERT INTO symptoms VALUES('','family_history');
INSERT INTO symptoms VALUES('','mucoid_sputum');
INSERT INTO symptoms VALUES('','rusty_sputum');
INSERT INTO symptoms VALUES('','lack_of_concentration');
INSERT INTO symptoms VALUES('','visual_disturbances');
INSERT INTO symptoms VALUES('','receiving_blood_transfusion');
INSERT INTO symptoms VALUES('','receiving_unsterile_injections');
INSERT INTO symptoms VALUES('','coma');
INSERT INTO symptoms VALUES('','stomach_bleeding');
INSERT INTO symptoms VALUES('','distention_of_abdomen');
INSERT INTO symptoms VALUES('','history_of_alcohol_consumption');
INSERT INTO symptoms VALUES('','fluid_overload');
INSERT INTO symptoms VALUES('','blood_in_sputum');
INSERT INTO symptoms VALUES('','prominent_veins_on_calf');
INSERT INTO symptoms VALUES('','palpitations');
INSERT INTO symptoms VALUES('','painful_walking');
INSERT INTO symptoms VALUES('','pus_filled_pimples');
INSERT INTO symptoms VALUES('','blackheads');
INSERT INTO symptoms VALUES('','skin_peeling');
INSERT INTO symptoms VALUES('','silver_like_dusting');
INSERT INTO symptoms VALUES('','small_dents_in_nails');
INSERT INTO symptoms VALUES('','inflammatory_nails');
INSERT INTO symptoms VALUES('','blister');
INSERT INTO symptoms VALUES('','red_sore_around_nose');
INSERT INTO symptoms VALUES('','yellow_crust_ooze');

/*doctor table and data*/
CREATE table doctor_fields(Field_ID int AUTO_INCREMENT, Disease VARCHAR(255), Specialisation VARCHAR(255), PRIMARY KEY (Field_ID));
INSERT INTO doctor_fields VALUES('','Fungal infection','Dermatologist');
INSERT INTO doctor_fields VALUES('','Allergy','Allergist/Immunologists');
INSERT INTO doctor_fields VALUES('','GERD','Gastroenterologist');
INSERT INTO doctor_fields VALUES('','Acne','Dermatologist');
INSERT INTO doctor_fields VALUES('','hepatitis A','Hepatologist');
INSERT INTO doctor_fields VALUES('','hepatitis B','Hepatologist');
INSERT INTO doctor_fields VALUES('','hepatitis C','Hepatologist');
INSERT INTO doctor_fields VALUES('','hepatitis D','Hepatologist');
INSERT INTO doctor_fields VALUES('','hepatitis E','Hepatologist');
INSERT INTO doctor_fields VALUES('','Chronic cholestasis','Gastroenterologist');
INSERT INTO doctor_fields VALUES('','Drug Reaction','Pharmacologist');
INSERT INTO doctor_fields VALUES('','Peptic ulcer disease','Gastroenterologist');
INSERT INTO doctor_fields VALUES('','AIDS','HIV Specialist');
INSERT INTO doctor_fields VALUES('','Diabetes','Endocrinologist');
INSERT INTO doctor_fields VALUES('','Gastroenteritis','Gastroenterologist');
INSERT INTO doctor_fields VALUES('','Bronchial Asthma','Asthma Specialist');
INSERT INTO doctor_fields VALUES('','Hypertension','Cardiologist');
INSERT INTO doctor_fields VALUES('','Migraine','Neurologist');
INSERT INTO doctor_fields VALUES('','Cervical spondylosis','Otolaryngologist');
INSERT INTO doctor_fields VALUES('','Paralysis (brain hemorrhage)','Paralysis Doctor');
INSERT INTO doctor_fields VALUES('','Jaundice','Gastroenterologist');
INSERT INTO doctor_fields VALUES('','Malaria','General Physician');
INSERT INTO doctor_fields VALUES('','Chicken pox','General Physician');
INSERT INTO doctor_fields VALUES('','Dengue','Microbiologist');
INSERT INTO doctor_fields VALUES('','Typhoid','General Physician');
INSERT INTO doctor_fields VALUES('','Alcoholic hepatitis','Gastroenterologist');
INSERT INTO doctor_fields VALUES('','Tuberculosis','Pulmonologists');
INSERT INTO doctor_fields VALUES('','Common Cold','Otolaryngologist');
INSERT INTO doctor_fields VALUES('','Pneumonia','Pediatric');
INSERT INTO doctor_fields VALUES('','Dimorphic hemmorhoids(piles)','Proctologist');
INSERT INTO doctor_fields VALUES('','Heart attack','Cardiologist');
INSERT INTO doctor_fields VALUES('','Varicose veins','Endocrinologist');
INSERT INTO doctor_fields VALUES('','Hypothyroidism','Endocrinologist');
INSERT INTO doctor_fields VALUES('','Hyperthyroidism','Endocrinologist');
INSERT INTO doctor_fields VALUES('','Hypoglycemia','Endocrinologist');
INSERT INTO doctor_fields VALUES('','Osteoarthristis','Orthopedist');
INSERT INTO doctor_fields VALUES('','Arthritis','Orthopedist');
INSERT INTO doctor_fields VALUES('','(vertigo) Paroymsal Positional Vertigo','ENT Specialist');
INSERT INTO doctor_fields VALUES('','Urinary tract infection','Urologist');
INSERT INTO doctor_fields VALUES('','Psoriasis','Physician');
INSERT INTO doctor_fields VALUES('','Impetigo','Expert Physician');

/*medicine table and data*/
CREATE table medicine (Medicine_ID int AUTO_INCREMENT, Disease VARCHAR(255), Name VARCHAR(255), PRIMARY KEY (Medicine_ID));
INSERT INTO medicine VALUES('','Fungal infection','Seborrheic Dermatitis');
INSERT INTO medicine VALUES('','Allergy','Aripiprazole');
INSERT INTO medicine VALUES('','GERD','Kapidex');
INSERT INTO medicine VALUES('','Chronic cholestasis','amoxicillin');
INSERT INTO medicine VALUES('','Drug Reaction','Percocet');
INSERT INTO medicine VALUES('','Peptic ulcer diseae','clarithromycin');
INSERT INTO medicine VALUES('','AIDS','Atripla');
INSERT INTO medicine VALUES('','Diabetes','Lyrica');
INSERT INTO medicine VALUES('','Gastroenteritis','Zofran');
INSERT INTO medicine VALUES('','Bronchial Asthma','Prednisone');
INSERT INTO medicine VALUES('','Hypertension','Methylphenidate');
INSERT INTO medicine VALUES('','Migraine','Topiramate');
INSERT INTO medicine VALUES('','Cervical spondylosis','Gabapentin');
INSERT INTO medicine VALUES('','Paralysis (brain hemorrhage)','Belsomra');
INSERT INTO medicine VALUES('','Jaundice','Ledipasvir / sofosbuvir');
INSERT INTO medicine VALUES('','Malaria','Malarone');
INSERT INTO medicine VALUES('','Chicken pox','Tri-Linyah');
INSERT INTO medicine VALUES('','Dengue','Acetaminophen');
INSERT INTO medicine VALUES('','Typhoid','Amoxicillin / clavulanate');
INSERT INTO medicine VALUES('','hepatitis A','Dimenhydrinate');
INSERT INTO medicine VALUES('','hepatitis B','Tenofovir');
INSERT INTO medicine VALUES('','hepatitis C','Ledipasvir / sofosbuvir');
INSERT INTO medicine VALUES('','hepatitis D','Hydromorphone');
INSERT INTO medicine VALUES('','hepatitis E','acetaminophen');
INSERT INTO medicine VALUES('','Alcoholic hepatitis','Corticosteroids');
INSERT INTO medicine VALUES('','Tuberculosis','Isoniazid');
INSERT INTO medicine VALUES('','Common Cold','Benzonatate');
INSERT INTO medicine VALUES('','Pneumonia','Loratadine');
INSERT INTO medicine VALUES('','Dimorphic hemmorhoids(piles)','Proctofoam');
INSERT INTO medicine VALUES('','Heart attack','Venlafaxine');
INSERT INTO medicine VALUES('','Varicose veins','Gabapentin');
INSERT INTO medicine VALUES('','Hypothyroidism','Ziprasidone');
INSERT INTO medicine VALUES('','Hyperthyroidism','Adderall XR');
INSERT INTO medicine VALUES('','Hypoglycemia','Lurasidone');
INSERT INTO medicine VALUES('','Osteoarthristis','Corticosteroids');
INSERT INTO medicine VALUES('','Arthritis','Etanercept');
INSERT INTO medicine VALUES('','(vertigo) Paroymsal Positional Vertigo','Effexor');
INSERT INTO medicine VALUES('','Acne','Ethinyl estradiol');
INSERT INTO medicine VALUES('','Urinary tract infection','Trimethoprim');
INSERT INTO medicine VALUES('','Psoriasis','Halobetasol');
INSERT INTO medicine VALUES('','Impetigo','Keflex');