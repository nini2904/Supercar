---VERESION 16.04
CREATE DATABASE supercar;




CREATE TABLE ADMINISTRATEUR(
   id_admin INT NOT NULL AUTO_INCREMENT,
   username VARCHAR(50) NOT NULL,
   password VARCHAR(200) NOT NULL,
   
   PRIMARY KEY(id_admin)
);

CREATE TABLE CONTACT(
   id_message INT NOT NULL AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   message VARCHAR(500) NOT NULL,
   numero VARCHAR(20) NOT NULL,
   email VARCHAR(100),
   PRIMARY KEY(id_message)
);

CREATE TABLE P_ACCUEIL(
   identifiant INT NOT NULL AUTO_INCREMENT,
   QSN VARCHAR(500) NOT NULL,
   QFN VARCHAR(500) NOT NULL,
   image1 VARCHAR(50) NOT NULL, 
   image2 VARCHAR(50) NOT NULL,
   PRIMARY KEY(identifiant)
);

CREATE TABLE P_SERVICE(
   identifiant INT NOT NULL AUTO_INCREMENT,
   image VARCHAR(50) NOT NULL,
   type_service VARCHAR(50) NOT NULL,
   description_service VARCHAR(1000) NOT NULL,
   PRIMARY KEY(identifiant)
);

CREATE TABLE INSCRIPTION(
   id_inscription INT NOT NULL AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   email VARCHAR(60) NOT NULL,
   numero VARCHAR(20) NOT NULL,
   username VARCHAR(50) NOT NULL,
   password VARCHAR(200) NOT NULL,
   PRIMARY KEY(id_inscription)
);

CREATE TABLE VOITURE(
   id_voiture INT NOT NULL AUTO_INCREMENT,
   marque VARCHAR(50) NOT NULL,
   modele VARCHAR(50) NOT NULL,
   annee INT NOT NULL,
   mini_description VARCHAR(500) NOT NULL,
   description_interieur VARCHAR(1000) NOT NULL,
   description_exterieur VARCHAR(1000) NOT NULL,
   image_interieur VARCHAR(60) NOT NULL,
   image_front VARCHAR(60) NOT NULL,
   image_back VARCHAR(60) NOT NULL,
   image_profile VARCHAR(60) NOT NULL,
   logo_vitesse VARCHAR(50) NOT NULL,
   vitesse VARCHAR(50) NOT NULL,
   logo_marque VARCHAR(50) NOT NULL,
   logo_prix VARCHAR(50) NOT NULL,
   prix VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_voiture)
);

CREATE TABLE SERVICE(
   id_service INT NOT NULL AUTO_INCREMENT,
   type_service VARCHAR(50) NOT NULL,
   date_service DATE NOT NULL,
   statut_service VARCHAR(50) DEFAULT 'En attente',
   id_inscription INT NOT NULL,
   PRIMARY KEY(id_service),
   FOREIGN KEY(id_inscription) REFERENCES INSCRIPTION(id_inscription)
);

CREATE TABLE DEMANDE_ESSAI(
   id_demande INT NOT NULL AUTO_INCREMENT,
   date_demande DATE NOT NULL,
   heure_demande TIME NOT NULL,
   statut_demande VARCHAR(50) DEFAULT 'En attente',
   id_inscription INT NOT NULL,
   id_voiture INT NOT NULL,
   PRIMARY KEY(id_demande),
   FOREIGN KEY(id_inscription) REFERENCES INSCRIPTION(id_inscription) ON DELETE CASCADE,
   FOREIGN KEY(id_voiture) REFERENCES VOITURE(id_voiture)
);





INSERT INTO p_accueil ( QSN, QFN, image1, image2) VALUES
('Bonjour, nous sommes les Représentant de la concession automobile SUPERCAR, nous vous souhaitons la bienvenue sur notre Site web. Permettez-nous de nous présenter, nous sommes une entreprise de vente de voiture depuis maintenant une décennie en exportant nos voitures de plusieurs pays.', 'En tant que commercial automobile nous souhaitons offrir à nos clients des voitures à la hauteur de leurs attentes. A travers une variété de choix de modèles, nos exportations de voiture de marques visent à atteindre cet objectif.', 'images/garage.jpg', 'images/mecanicien.jpg'); 


INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES 
('Audi', 'R8 Coupé V10', 2012, 'La Audi R8 Coupé V10 incarne l\'alliance parfaite entre performances exaltantes et design captivant. Propulsée par un moteur époustouflant, elle offre une expérience de conduite exceptionnelle, tout en évoquant l\'élégance intemporelle caractéristique de la marque.','L\'intérieur de la Audi R8 Coupé V10 est un mélange de luxe et de sportivité, avec des finitions haut de gamme, des sièges baquets, un volant sport multifonction et un tableau de bord épuré, offrant une expérience de conduite immersive et ergonomique.','Cette voiture se démarque par son design athlétique, des lignes fluides, des phares à LED percutants, une calandre Singleframe distinctive, et des détails aérodynamiques.', 'À partir de 136 507€','images/logo_prix.png', 'images/audi_R8_interieur.jpg', 'images/audi_R8_front.jpg', 'images/audi_R8_back.jpg', 'images/audi_R8_profile.jpg', 'images/logo_vitesse.png', '331 km/h', 'images/logo_audi.png');


INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES 
('Audi', 'A3 Sportback', 2014, 'La Audi A3 Sportback de 2014 marie avec élégance polyvalence et dynamisme. Dotée d\'un design raffiné, de technologies innovantes et d\'une conduite agile, elle incarne l\'harmonie parfaite entre sophistication urbaine et performances routières.','L\'intérieur de la Audi A3 Sportback allie élégance et fonctionnalité. Les sièges offrent un excellent soutien, le tableau de bord ergonomique intègre un écran MMI, et les matériaux haut de gamme créent une atmosphère raffinée. La connectivité moderne, y compris le Bluetooth, ajoute une touche de praticité et complète cette expérience de conduite luxueuse et pratique.','Cette voiture arbore un extérieur dynamique, caractérisé par des lignes épurées, une calandre distinctive et des phares effilés. Ses proportions équilibrées et ses détails sophistiqués, tels que les jantes en alliage, créent une esthétique moderne et sportive.', 'À partir de 38 900 €','images/logo_prix.png', 'images/audi_A3_interieur.jpg', 'images/audi_A3_front.webp', 'images/audi_A3_back.jpeg', 'images/audi_A3_profile.jpg', 'images/logo_vitesse.png', '214 km/h', 'images/logo_audi.png');


INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES 
('Audi', 'Q3', 2018, 'La Audi Q3 incarne l\'élégance et la performance dans le segment des SUV compacts. Avec son design distinctif, un intérieur luxueux et des performances dynamiques, il représente l\'alliance parfaite entre style et fonctionnalité.','L\'intérieur de la Audi Q3 allie élégance et praticité. Les matériaux haut de gamme, les finitions soignées et l\'éclairage d\'ambiance créent une atmosphère luxueuse. Les sièges offrent un excellent confort, tandis que la disposition ergonomique du tableau de bord intègre des technologies avancées, telles que le Virtual Cockpit. L\'espace est optimisé, offrant une convivialité accrue avec un hayon motorisé pour un accès facile au coffre. Les fonctionnalités de connectivité, y compris le système d\'infodivertissement MMI, ajoutent une touche moderne. Globalement, la Audi Q3 offre une expérience intérieure raffinée et fonctionnelle, soulignant son positionnement dans le segment des SUV premium.','Cette voiture présente un extérieur dynamique et distinctif, caractérisé par des lignes fluides et une calandre imposante, reflétant l\'esthétique moderne de la marque. Les phares LED expressifs et les feux arrière élégants ajoutent une touche de sophistication. Les jantes en alliage, les contours musclés et la posture robuste soulignent son caractère SUV. L\'intégration habile de détails chromés et la diversité des options de couleur permettent une personnalisation élégante. Dans l\'ensemble, elle marie style et fonctionnalité, offrant une présence extérieure attrayante et une expression dynamique de l\'ADN Audi.', 'À partir de 45 000 €','images/logo_prix.png', 'images/audi_Q3_interieur.jpg', 'images/audi_Q3_front.jpg', 'images/audi_Q3_back.webp', 'images/audi_Q3_profile.jpg', 'images/logo_vitesse.png', '270 km/h', 'images/logo_audi.png');


INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES 
('Toyota', 'Venza', 2024,'La Toyota Venza 2024 est un SUV crossover élégant et polyvalent qui offre un mélange parfait de style, de confort et d\'efficacité énergétique. Avec son design moderne et raffiné, elle présente des lignes fluides et des accents audacieux qui attirent le regard sur la route. Propulsée par une motorisation hybride, la Venza offre une performance économe en carburant sans compromis sur la puissance.','Son intérieur spacieux et bien équipé offre un confort de conduite supérieur, avec des fonctionnalités technologiques avancées et des matériaux de haute qualité.','Cette voiture arbore un extérieur élégant et moderne, avec des lignes fluides, une calandre distinctive et des phares effilés à LED. Ses proportions équilibrées et ses finitions chromées ajoutent une touche de sophistication à son design extérieur.', 'À partir de 32,301€', 'images/logo_prix.png', 'images/toyota_venza_interieur.jpg', 'images/toyota_venza_front.jpg', 'images/toyota_venza_back.jpg', 'images/toyota_venza_profile.jpg', 'images/logo_vitesse.png', '200 km/h', 'images/logo_toyota.png');


INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES 
('Toyota', 'Cross', 2024,'La Toyota Corolla Cross 2024 est un SUV compact polyvalent offrant à la fois style, confort et performances. Avec son design moderne et dynamique, elle combine élégance et robustesse.','Son intérieur spacieux et bien équipé est conçu pour offrir un confort optimal à tous les occupants, tandis que ses fonctionnalités technologiques avancées garantissent une expérience de conduite moderne et sécurisée.','L\'extérieur de la Toyota Cross 2024 présente un design moderne et dynamique, avec des lignes fluides et des accents audacieux.','À partir de 22 000€','images/logo_prix.png', 'images/toyota_corolla_cross_interior.jpg', 'images/toyota_corolla_cross_front.jpg', 'images/toyota_corolla_cross_back.jpg', 'images/toyota_corolla_cross_profile.jpg', 'images/logo_vitesse.png', ' 200 km/h', 'images/logo_toyota.png');


INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES 
('Toyota', 'Camry', 2024,'La Toyota Camry 2024 incarne l\'excellence dans le segment des berlines intermédiaires, offrant un mariage parfait entre performance, confort et style. Avec son design raffiné et dynamique, elle se distingue par des lignes fluides et des détails élégants.','Son intérieur spacieux et sophistiqué est doté de technologies de pointe et de matériaux de haute qualité, offrant un confort supérieur à tous les occupants.', 'L\'extérieur allie élégance et dynamisme avec des lignes fluides et des accents contemporains. Sa silhouette profilée est rehaussée par une calandre distinctive et des phares effilés, qui ajoutent une touche de sophistication.','À partir de 24 450€','images/logo_prix.png', 'images/toyota_camry_interieur.jpg', 'images/toyota_camry_front.jpg', 'images/toyota_camry_back.jpg', 'images/toyota_camry_profile.jpg', 'images/logo_vitesse.png', '180 km/h', 'images/logo_toyota.png.png');

 
INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES
('Ford', 'Mustang', 2024,'La Ford Mustang 2024 offre un design audacieux, des performances puissantes et une technologie de pointe, perpétuant ainsi son héritage emblématique dans le monde de l\'automobile.',
'L\'intérieur de la Ford Mustang 2024 allie confort et technologie de manière élégante. Avec des matériaux de haute qualité et une attention aux détails, l\'habitacle offre un environnement de conduite luxueux. Les sièges offrent un bon soutien et sont disponibles avec des options de réglage pour un confort personnalisé. Le tableau de bord est doté d\'un écran tactile intuitif qui contrôle les fonctionnalités de divertissement, de navigation et de connectivité. Des accents sportifs et des finitions haut de gamme complètent l\'ambiance raffinée de l\'intérieur, offrant aux conducteurs une expérience de conduite à la fois plaisante et sophistiquée.','L\'extérieur de la Ford Mustang 2024 arbore un design audacieux et dynamique, fidèle à l\'héritage emblématique de la Mustang. Sa silhouette musclée et agressive attire l\'attention sur la route, avec des lignes fluides et des courbes élégantes qui accentuent son caractère sportif. Les phares avant distinctifs et la calandre emblématique donnent à la voiture une présence imposante, tandis que les jantes alliage et les détails de finition soignés ajoutent une touche de sophistication.','À partir de 28 616.46€','images/logo_prix.png', 'images/ford_mustang_interieur.webp', 'images/ford_mustang_front.jpg', 'images/ford_mustang_back.jpg', 'images/ford_mustang_profile.jpg', 'images/logo_vitesse.png', '180 km/h', 'images/logo_ford.png');
 

INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES
('Ford', 'Focus', 2019,'La Ford Focus 2019 est une voiture compacte polyvalente offrant une conduite agile et dynamique. Avec un design moderne et épuré, elle propose un intérieur spacieux et bien équipé, comprenant des caractéristiques technologiques avancées telles qu\'un système d\'infodivertissement intuitif et des options de sécurité avancées.',
'L\'intérieur de la Ford Focus 2019 offre un espace accueillant et confortable avec des matériaux de qualité et une finition soignée. Doté d\'un design moderne et ergonomique, il propose un agencement intuitif des commandes pour une expérience de conduite agréable. L\'équipement technologique comprend un système d\'infodivertissement convivial avec écran tactile, compatible avec les smartphones, et des fonctionnalités telles que la navigation, la connectivité Bluetooth et les commandes vocales.','L\'extérieur de la Ford Focus 2019 présente un design moderne et dynamique qui attire le regard. Avec ses lignes audacieuses et fluides, elle dégage une impression de sportivité et d\'élégance. La face avant est caractérisée par une calandre distinctive et des phares effilés, qui lui confèrent une allure agressive et sophistiquée. Les proportions équilibrées et les contours musclés soulignent son dynamisme sur la route.','À partir de 40 300€','images/logo_prix.png', 'images/ford_focus_interieur.jpg', 'images/ford_focus_front.jpg', 'images/ford_focus_back.webp', 'images/ford_focus_profile.jpg', 'images/logo_vitesse.png', '180 km/h', 'images/logo_ford.png');
 

 
INSERT INTO voiture (marque, modele, annee, mini_description, description_interieur, description_exterieur, prix, logo_prix, image_interieur, image_front,image_back ,image_profile ,logo_vitesse ,vitesse, logo_marque) VALUES
('Ford', 'Explorer', 2024,'Le Ford Explorer 2024 offre un mélange de robustesse, de confort et de technologie. Son design imposant cache un intérieur spacieux et luxueux, équipé des dernières fonctionnalités. Avec des options de moteur performantes, il est prêt pour toutes les aventures.','L\'intérieur du Ford Explorer 2024 allie confort et technologie de pointe dans un espace spacieux et luxueux. Doté de matériaux de haute qualité et d\'une attention aux détails, cet habitacle offre une expérience de conduite raffinée. Les sièges offrent un soutien optimal, tandis que les fonctionnalités de connectivité et de divertissement modernes garantissent un voyage agréable pour tous les occupants.','L\'extérieur du Ford Explorer 2024 présente un design imposant et élégant, avec des lignes audacieuses et des proportions équilibrées. Sa silhouette robuste témoigne de ses capacités tout-terrain, tandis que des détails sophistiqués ajoutent une touche de raffinement. Que ce soit en ville ou sur les sentiers, le Ford Explorer 2024 ne passe pas inaperçu grâce à son allure distinctive qui allie style et fonctionnalité.','À partir de 34 000€','images/logo_prix.png', 'images/ford_explorer_interieur.png', 'images/ford_explorer_front.jpg', 'images/ford_explorer_back.jpg', 'images/ford_explorer_profile.jpg', 'images/logo_vitesse.png', '180 km/h', 'images/logo_ford.png');




INSERT INTO CONTACT (nom, prenom, message, numero, email) VALUES ('Smith', 'John', 'Ceci est le premier test.', '987456', 'johnsmith@gmail.com');

INSERT INTO CONTACT (nom, prenom, message, numero, email) VALUES ('Smith', 'Jane', 'Ceci est le deuxieme test.', '123456', 'janesmith@gmail.com');

INSERT INTO INSCRIPTION (nom, prenom, email, numero, username, password) VALUES ('Montenot', 'Anne-Sophie', 'annesophie.montenot@gmail.com', '123456', 'Anneso', '2db20663ecf88e50d838a3ebe1828832');

INSERT INTO INSCRIPTION (nom, prenom, email, numero, username, password) VALUES ('Kaully', 'Nanjanee', 'nanjaneekaully@gmail.com', '123456', 'Nini', 'db5cee64d8879581f189d71178dcb055');

INSERT INTO INSCRIPTION (nom, prenom, email, numero, username, password) VALUES ('Kanonge', 'Gloria', 'gloriakanonge@gmail.com', '123456', 'Glory', 'db2545515c456c8ff5d2ba3c474838e3');

INSERT INTO SERVICE (type_service, date_service, id_inscription) VALUES ('Lavage','2024-04-23', '1');

INSERT INTO SERVICE (type_service, date_service, id_inscription) VALUES ('Réparation','2024-04-24', '2');

INSERT INTO SERVICE (type_service, date_service, id_inscription) VALUES ('Maintenance','2024-04-25', '3');

INSERT INTO DEMANDE_ESSAI (date_demande, heure_demande, id_inscription, id_voiture) VALUES ('2024-04-23', '12:30:00', '1', '1');

INSERT INTO DEMANDE_ESSAI (date_demande, heure_demande, id_inscription, id_voiture) VALUES ('2024-04-23', '12:40:00', '2', '2');

INSERT INTO DEMANDE_ESSAI (date_demande, heure_demande, id_inscription, id_voiture) VALUES ('2024-04-23', '12:50:00', '3', '3');

INSERT INTO ADMINISTRATEUR (username, password) VALUES ('admin', 'c93ccd78b2076528346216b3b2f701e6');

INSERT INTO p_service ( image, type_service, description_service) VALUES 
('images/reparation.jpg','Réparation','Notre société vous offre des services complets de réparations automobiles. Notre équipe qualifiée assure l\'entretien préventif ainsi que les réparations mécaniques et électriques avec expertise. Avec des équipements de diagnostic de pointe et des pièces de qualité, nous garantissons un service fiable et efficace.');
 
INSERT INTO p_service ( image, type_service, description_service) VALUES 
('images/lavage.jpg','Lavage','Nous engageons ainsi a offrir à votre véhicule un nettoyage en profondeur, à l\'intérieur comme à l\'extérieur. Neuve équipe expérimentée et attentionnée veille a ce que votre voiture brille comme neuve à chaque visite.');
 
INSERT INTO p_service ( image, type_service, description_service) VALUES 
('images/maintenance.jpg','Maintenance','Nous vous proposons une gamme complète de services pour entretenir et améliorer votre véhicule, ainsi que pour installer des accessoires et des pièces de rechange. Notre équipe expérimentée est là pour vous guider dans le choix des options idéales pour personnaliser votre véhicule selon vos besoins et vos préférences. Que vous souhaitiez améliorer les performances, le confort ou l\'apparence de votre voiture, notre équipe qualifiée vous aidera à trouver les solutions adaptées.');
