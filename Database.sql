-- Create Patients Table
CREATE TABLE Patients (
  patient_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  date_of_birth DATE,
  contact_info VARCHAR(255),
  address VARCHAR(255)
);

-- Create Doctors Table
CREATE TABLE Doctors (
  doctor_id INT PRIMARY KEY,
  name VARCHAR(255),
  specialty VARCHAR(100),
  phone_number VARCHAR(20),
  email VARCHAR(255)
);


-- Create Appointments Table
CREATE TABLE Appointments (
  appointment_id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  appointment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  appointment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(50)
);

-- Create Medical_Records Table
CREATE TABLE Medical_Records (
  med_record_id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  diagnosis VARCHAR(255),
  record_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Medications Table
CREATE TABLE Medications (
  medication_id INT PRIMARY KEY,
  med_record_id INT,
  medication_name VARCHAR(255),
  dosage VARCHAR(100),
  frequency VARCHAR(100)
);



--Patients Data
insert into Patients (patient_id, first_name, last_name, date_of_birth, contact_info, address) values 
(1, 'Daniella', 'Patria', '2024-04-06', '+30 916 616 3605', '3 Johnson Way'),
(2, 'Jerry', 'Linney', '2023-11-23', '+86 215 766 7970', '511 Declaration Plaza'),
(3, 'Randolph', 'Rosie', '92024-09-20', '+86 696 541 2767', '3 Blue Bill Park Way'),
(4, 'Moria', 'Lashley', '2023-11-12', '+237 567 123 3529', '4833 Ridgeway Place'),
(5, 'Daile', 'Randle', '2023-04-25', '+242 150 353 0828', '024 Towne Way'),
(6, 'Theresa', 'Kingzeth', '2023-08-08', '+353 805 154 0822', '6186 Waywood Parkway'),
(7, 'Heindrick', 'Delve', '2023-02-15', '+255 198 628 7541', '2443 Village Green Point'),
(8, 'Owen', 'Robrose', '2021-08-12', '+46 428 474 7529', '232 Moland Hill'),
(9, 'Jefferson', 'Smoughton', '2022-05-11', '+86 684 167 3890', '7977 Thierer Court'),
(10, 'Fabio', 'Garatty', '2022-03-24', '+86 386 436 9015', '88247 Hoard Street');

--Doctors Data 
insert into Doctors (doctor_id, name, specialty, phone_number, email) values 
(1, 'Nestor', 'Pediatrics', '+62 148 635 2988', 'nyanson0@hexun.com'),
(2, 'Clemmy', 'Neurology', '+86 184 233 2773', 'cparish1@mapy.cz'),
(3, 'Iona', 'Psychiatry', '+33 251 844 2042', 'irozsa2@yale.edu'),
(4, 'Norina', 'Dermatology', '+962 925 698 0432', 'nmcgonagle3@ed.gov'),
(5, 'Fayth', 'Gynecology', '+55 486 696 7229', 'fsouthernwood4@apache.org'),
(6, 'Glenna', 'Orthopedics', '+420 964 344 3120', 'gmulqueeny6@yandex.ru'),
(7, 'Andrej', 'Oncology', '+351 485 951 7566', 'aandriessen7@cisco.com'),
(8, 'Harriot', 'Neurology', '+1 336 498 5822', 'hloker8@biglobe.ne.jp'),
(9, 'Gerri', 'Cardiology', '+61 255 876 2522', 'gvoaden9@nationalgeographic.com'),
(10, 'Anna', 'Cardiology', '+61 255 892 2522', 'hjanna9@nationalgeographic.com');

--Appointments Data
insert into Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status) values 
(1, 1, 10, '2023-12-18', '2024-11-16T22:28:24Z', 'Scheduled'),
(2, 8, 5, '2024-08-23', '2022-06-14T00:40:28Z', 'Completed'),
(3, 2, 10, '2023-03-09', '2023-12-05T21:45:12Z', 'Cancelled'),
(4, 2, 4, '2023-09-23', '2022-03-28T05:46:16Z', 'No Show'),
(5, 2, 8, '2024-10-07', '2023-05-26T17:28:17Z', 'Scheduled'),
(6, 8, 8, '2022-05-15', '2023-12-08T20:00:15Z', 'Rescheduled'),
(7, 6, 9, '2023-05-05', '2023-03-22T16:39:51Z', 'Completed'),
(8, 8, 5, '2024-04-02', '2024-11-13T03:27:00Z', 'Cancelled'),
(9, 6, 6, '2024-01-10', '2024-10-16T10:37:26Z', 'Scheduled'),
(10, 5, 3, '2024-04-30', '2023-12-27T14:50:35Z', 'No Show'),
(11, 8, 2, '2023-11-17', '2024-01-04T09:21:36Z', 'Completed'),
(12, 3, 2, '2024-12-14', '2024-05-22T20:16:16Z', 'Rescheduled'),
(13, 9, 3, '2024-06-17', '2023-06-14T01:03:04Z', 'Cancelled'),
(14, 3, 10, '2024-07-22', '2023-01-26T21:50:05Z', 'Scheduled'),
(15, 2, 9, '2023-03-30', '2022-02-05T10:58:01Z', 'Cancelled');

--Medical_Records Data
insert into Medical_Records (med_record_id, patient_id, doctor_id, diagnosis, record_date) values 
(1, 3, 7, 'tortor quis turpis sed ante vivamus tortor', '2022-01-15'),
(2, 9, 4, 'cras pellentesque volutpat dui maecenas tristique', '2024-11-05'),
(3, 6, 6, 'praesent lectus vestibulum quam sapien varius ut', '2023-12-14'),
(4, 2, 10, 'a odio in hac habitasse platea dictumst', '2022-06-10'),
(5, 3, 8, 'vitae mattis nibh ligula nec sem', '2023-02-10'),
(6, 3, 4, 'venenatis tristique fusce congue diam id', '2024-10-28'),
(7, 10, 6, 'suscipit a feugiat et eros vestibulum ac', '2022-09-07'),
(8, 2, 4, 'at feugiat non pretium quis lectus suspendisse', '2024-07-07'),
(9, 3, 3, 'fusce consequat nulla nisl nunc', '2023-03-05'),
(10, 7, 6, 'in faucibus orci luctus et ultrices posuere', '2024-02-05'),
(11, 1, 4, 'quis turpis sed ante vivamus', '2023-03-21'),
(12, 10, 5, 'feugiat non pretium quis lectus suspendisse potenti', '2024-10-14'),
(13, 8, 7, 'maecenas pulvinar lobortis est phasellus sit', '2022-11-13'),
(14, 5, 7, 'interdum eu tincidunt in leo', '2022-01-21'),
(15, 3, 8, 'et tempus semper est quam pharetra magna', '2023-02-10');

--Medications Data
insert into Medications (medication_id, med_record_id, medication_name, frequency) values 
(1, 2, 'Eucalyptol, menthol, methyl salicylate, thymol', 'Monthly'),
(2, 8, 'Aconitum nap., Arnica, Arsenicum alb., Staphysag., Echinacea', 'Weekly'),
(3, 5, 'Malt', 'Daily'),
(4, 11, 'Anacardium 30c, Apis 30c, Causticum 30c, Chloralum 30c', 'Once'),
(5, 7, 'Homosalate, Octinoxate, Octisalate, Titanium Dioxide', 'Monthly'),
(6, 10, 'Naproxen', 'Yearly'),
(7, 10, 'TITANIUM DIOXIDE', 'Seldom'),
(8, 7, 'Sodium chloride, potassium chloride, sodium lactate', 'Never'),
(9, 10, 'Standardized Cat Hair', 'Monthly'),
(10, 11, 'morphine sulfate', 'Weekly');