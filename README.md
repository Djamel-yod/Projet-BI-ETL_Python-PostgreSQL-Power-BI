
## Intégration de données dans une base de données PostgreSQL en utilisant du script Python et rendu avec Power BI.


<img width="800" alt="Image1" src="https://github.com/user-attachments/assets/062cc65b-9c50-4431-8c86-33026b5987e8">

J'utilise dans ce projet mes compétences en **Python**, **SQL** et **Power BI** pour mener de bout en bout un projet BI complet allant de l'intégration des données à la production d'un rapport BI permettant d'extraire des insights précieux.


# Contexte
Nous sommes dans le contexte du Retail, où l'objectif est d'analyser la performance de nos ventes. En tant que Data Analyst, mon supérieur m'a confié la tâche de construire une base de données SQL (Datawarehouse) à partir des quatres fichiers excel suivants:

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

Après avoir construit la base de données et construit les tables répondant aux questions ci-dessus, je dois produire un rapport BI répondant à la troisième question.

# Rendu

Après la construction de ma base de données sous PostgreSQL, je requête cette dernière pour répondre aux problématiques business énoncées plus haut, et je produit un rapport BI interactif sous **Power BI** afin de permettre aux décideurs d'avoir une vue synthétique de la réponse de la troisième question. Ce rapport, dont l'image est ci-dessous, permet à l'utilisateur de savoir quelle est l'évolution mensuelle du chiffre d'affaires pour chaque année et par catégorie de produit. Elle permet également de répondre aux mêmes questions pour toutes les années comprises (2022 à 2024).

<img width="800" alt="Rapport" src="https://github.com/user-attachments/assets/7c90a9c3-c8ea-4d5b-ba0c-ecb64d11f0bf">


# Méthodologie

**-** Construction des tables de la base de données **PostgreSQL** (Fichier nommé Tables.sql)

**-** Construction d'un **ETL** en utilisant **pandas** et **sqlalchemy** (Fichier nommé etl.py)

**-** Chargement des données dans le datawarehouse **PostgreSQL**

**-** Requêtage de ma base de données ainsi construite pour répondre aux problématiques business énoncées plus haut (Fichier nommé Reponses_Questions.sql)

**-** Production d'un tableau de bord interactif sous **Power BI** pour répondre à la 3e question (Fichier nommé Rapport BI.pbix)



# Outils

<img width="200" alt="Capture_Python2" src="https://github.com/user-attachments/assets/f1b54b4b-c6e1-4b91-8224-0129e160ed34">

<img width="200" alt="PostgreSQL" src="https://github.com/user-attachments/assets/c0f4d9b2-ebe7-472a-be81-c8add941b0ee">

<img width="165" alt="Capture_PowerBI" src="https://github.com/user-attachments/assets/7a8ecf66-7f55-43ee-bb20-88abe9c99af8">


<a href="#">#Python</a>
<a href="#">#SQL</a>
<a href="#">#PostgreSQL</a>




