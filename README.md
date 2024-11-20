
## Intégration de données dans une base de données PostgreSQL en utilisant du script Python

<img width="800" alt="Image1" src="https://github.com/user-attachments/assets/8e63c6f4-87b9-4d01-bafb-7566474d2de0">

À travers ce projet, je montre mes compétences dans la construction d'une base de données et dans son requêtage en langage SQL afin d'en extraire des insights précieux.

# Contexte
Nous sommes dans le contexte du Retail, où l'objectif est d'analyser la performance de nos ventes. En tant que Data Analyst, mon supérieur m'a confié la tâche de construire une base de données SQL (Datawarehouse) à partir les quatres fichiers excel suivants:

- **customers** : contient des informations sur nos clients, telles que nom, prénom, email et date d’inscription.
- **products** : inclut des détails comme le prix, le nom du produit et sa catégorie.
- **orders** : contient des informations telles que le client qui a passé la commande, la date de la commande et son statut.
- **order_details** : donne des informations sur les produits commandés, la quantité et le prix unitaire.

Les questions que nous chercherons à résoudre incluent par exemple :

- Quel est le montant total et moyen des ventes entre 2022 et 2024 ?
- Quel est notre chiffre d'affaires (CA) par mois et par an depuis 2022 ?
- Quel est le CA par année, mois et par catégorie de produits ?
- Quels sont les 10 clients qui ont passés le plus de commandes ?
- Quels sont les clients qui ont passés plus de 20 commandes ?


J'utilise dans ce projet mes compétences en **Python** et **SQL** pour résoudre le problème posé.

# Méthodologie

**-** Construction des tables de la base de données **PostgreSQL** (Fichier nommé Tables.sql)

**-** Construction d'un **ETL** en utilisant **pandas** et **sqlalchemy** (Fichier nommé etl.py)

**-** Chargement des données dans le datawarehouse **PostgreSQL**

**-** Requêtage de ma base de données ainsi construite pour répondre aux problématiques business énoncées plus haut (Fichier nommé Reponses_Questions.sql).

# Outils

<img width="391" alt="Capture_Python2" src="https://github.com/user-attachments/assets/f1b54b4b-c6e1-4b91-8224-0129e160ed34">

<img width="559" alt="PostgreSQL" src="https://github.com/user-attachments/assets/c0f4d9b2-ebe7-472a-be81-c8add941b0ee">

<a href="#">#Python</a>
<a href="#">#SQL</a>
<a href="#">#PostgreSQL</a>




