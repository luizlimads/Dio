USE COMPANY;
SHOW TABLES;
DESC EMPLOYEE;
SET SQL_SAFE_UPDATES = 0;
SET foreign_key_checks = 0;
DELETE FROM EMPLOYEE;
INSERT INTO EMPLOYEE VALUES ('John', 'B', 'Smith', 123456789, '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, 333445555, 5),
							('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638-Voss-Houston-TX', 'M', 40000, 888665555, 5),
                            ('Alicia', 'J', 'Zelaya', 999887777, '1968-01-19', '3321-Castle-Spring-TX', 'F', 25000, 987654321, 4),
                            ('Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291-Berry-Bellaire-TX', 'F', 43000, 888665555, 4),
                            ('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975-Fire-Oak-Humble-TX', 'M', 38000, 333445555, 5),
                            ('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631-Rice-Houston-TX', 'F', 25000, 333445555, 5),
                            ('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980-Dallas-Houston-TX', 'M', 25000, 987654321, 4),
                            ('James', 'E', 'Borg', 888665555, '1937-11-10', '450-Stone-Houston-TX', 'M', 55000, NULL, 1);
SELECT * FROM EMPLOYEE;

DELETE FROM DEPENDENTS;
-- ALTER TABLE DEPENDENTS DROP AGE;
-- DESC DEPENDENTS;
INSERT INTO DEPENDENTS VALUES(333445555, 'Alice', 'F', '1986-04-05', 'Daughter'),
							 (333445555, 'Theodore', 'M', '1983-10-25', 'Son'),
                             (333445555, 'Joy', 'F', '1958-05-03', 'Spouse'),
                             (987654321, 'Abner', 'M', '1942-02-28', 'Spouse'),
                             (123456789, 'Michael', 'M', '1988-01-04', 'Son'),
                             (123456789, 'Alice', 'F', '1988-12-30', 'Daughter'),
                             (123456789, 'Elizabeth', 'F', '1967-05-05', 'Spouse');
SELECT * FROM DEPENDENTS;                             

DELETE FROM DEPARTAMENT;                             
INSERT INTO DEPARTAMENT VALUES ('Research', 5, 333445555, '1988-05-22','1986-05-22'),
							   ('Administration', 4, 987654321, '1995-01-01','1994-01-01'),
                               ('Headquarters', 1, 888665555,'1981-06-19','1980-06-19');
SELECT * FROM DEPARTAMENT;


SHOW TABLES;
DELETE FROM DEPT_LOCATIONS;
INSERT INTO DEPT_LOCATIONS VALUES(1, 'Houston'),
								 (4, 'Stafford'),
                                 (5, 'Bellaire'),
                                 (5, 'Sugarland'),
                                 (5, 'Houston');
SELECT * FROM DEPT_LOCATIONS;

DELETE FROM PROJECT;
INSERT INTO PROJECT VALUES ('ProductX', 1, 'Bellaire', 5),
						   ('ProductY', 2, 'Sugarland', 5),
						   ('ProductZ', 3, 'Houston', 5),
                           ('Computerization', 10, 'Stafford', 4),
                           ('Reorganization', 20, 'Houston', 1),
                           ('Newbenefits', 30, 'Stafford', 4);
SELECT * FROM PROJECT; 
                          
DELETE FROM WORKS_ON;
INSERT INTO WORKS_ON VALUES (123456789, 1, 32.5),
							(123456789, 2, 7.5),
                            (666884444, 3, 40.0),
                            (453453453, 1, 20.0),
                            (453453453, 2, 20.0),
                            (333445555, 2, 10.0),
                            (333445555, 3, 10.0),
                            (333445555, 10, 10.0),
                            (333445555, 20, 10.0),
                            (999887777, 30, 30.0),
                            (999887777, 10, 10.0),
                            (987987987, 10, 35.0),
                            (987987987, 30, 5.0),
                            (987654321, 30, 20.0),
                            (987654321, 20, 15.0),
                            (888665555, 20, 0.0);
SELECT * FROM WORKS_ON;
DESC DEPARTAMENT;
-- GERENTE E SEU DEPARTAMENTO
SELECT SSN, F_NAME, D_NAME FROM EMPLOYEE E, DEPARTAMENT D WHERE (E.SSN = D.MGR_SSN);

SHOW TABLES;
-- ALTER TABLE DEPENDENTS CHANGE RELATIOSHIP RELATIONSHIP VARCHAR(15);	
SELECT F_NAME, DEPENDENT_NAME, RELATIONSHIP FROM EMPLOYEE, DEPENDENTS WHERE E_SSN = SSN;


DESC EMPLOYEE;
SELECT B_DATE, ADDRESS FROM EMPLOYEE
	WHERE F_NAME = 'JOHN' AND M_INIT= 'B' AND L_NAME = 'SMITH';

SELECT * FROM DEPARTAMENT WHERE D_NAME = 'RESEARCH';

SELECT F_NAME, L_NAME, ADDRESS FROM EMPLOYEE, DEPARTAMENT
	WHERE D_NAME = 'RESEARCH' AND D_NUMBER=D_NO;

SELECT P_NAME, E_SSN, F_NAME, HOURS
	FROM PROJECT, WORKS_ON, EMPLOYEE
    WHERE P_NUMBER = P_NO;
    
SELECT * FROM DEPARTAMENT;
SELECT * FROM DEPT_LOCATIONS;
DESC DEPARTAMENT;
DESC DEPT_LOCATIONS;

-- ALIAS PARA DESFAZER AMBIGUIDAE OU FACILITAR
SELECT * FROM DEPARTAMENT, DEPT_LOCATIONS WHERE DEPARTAMENT.D_NUMBER = DEPT_LOCATIONS.D_NUMBER;
SELECT * FROM DEPARTAMENT AS D, DEPT_LOCATIONS AS DL WHERE D.D_NUMBER = DL.D_NUMBER;

SELECT CONCAT(F_NAME,' ',L_NAME) AS EMPLOYEE FROM EMPLOYEE;