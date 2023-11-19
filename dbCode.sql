CREATE TABLE organisateurs (
  	id INT  PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    position VARCHAR(255),
    contact INT
);
CREATE TABLE evenements (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    venue_date DATE,
    venue_time TIME
);
CREATE TABLE lieux (
	id INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(255),
    city VARCHAR(255),
    address VARCHAR(255)
);
CREATE TABLE sponsors (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    website VARCHAR(255),
    contact INT
);
CREATE TABLE retours (
	id INT PRIMARY KEY AUTO_INCREMENT,
    montant float
);
CREATE TABLE participants (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    contactName VARCHAR(255),
    city VARCHAR(255),
    postalCode VARCHAR(255),
    address VARCHAR(255),
    country VARCHAR(255),
    cin VARCHAR(255),
    rank VARCHAR(255)
);
CREATE TABLE billets (
	id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(255),
    price FLOAT,
    FK_id_retour INT,
    FK_id_participant INT,
    FK_id_evenement INT,
    FOREIGN KEY (FK_id_retour) REFERENCES retours(id),
    FOREIGN KEY (FK_id_participant) REFERENCES participants(id),
    FOREIGN KEY (FK_id_evenement) REFERENCES evenement(id)
);
CREATE TABLE creating (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FK_id_organisateur INT,
    FK_id_evenement INT,
    FOREIGN KEY (FK_id_organisateur) REFERENCES organisateurs(id),
    FOREIGN KEY (FK_id_evenement) REFERENCES evenements(id)
);
CREATE TABLE sponsoring (
	id INT PRIMARY KEY AUTO_INCREMENT,
    FK_id_organisateur INT,
    FK_id_evenement INT,
    FOREIGN KEY (FK_id_sponsor) REFERENCES sponsors(id),
    FOREIGN KEY (FK_id_evenement) REFERENCES evenements(id)
);