
## Projet Business Intelligence (Python+SQL+Power BI)


<img width="400" height="200" alt="CaptureETL" src="https://github.com/user-attachments/assets/cf47d253-57a2-4053-906a-af6a240bbf12"> 
<img width="400" height="200" alt="Capture 3" src="https://github.com/user-attachments/assets/414c86ac-ba6b-45aa-ac35-882723611ce0" />

J'utilise dans ce projet mes compétences en **Python**, **SQL** et **Power BI** pour mener de bout en bout un projet BI complet allant de l'intégration des données à la production d'un rapport BI permettant d'extraire des insights précieux.


# Contexte
Nous sommes dans le contexte du Retail, où l'objectif est d'analyser la performance de nos ventes. En tant que Data Analyst, mon supérieur m'a confié la tâche de répondre aux questions business suivantes: 

- Quel est le nombre de nos clients par an ? 
- Quel est le nombre de nos commandes par an ?
- Quel est notre chiffre d'affaires (CA) par mois et par an depuis 2022 ? 
- Quel est notre CA par année, mois et par catégorie de produits ?
- Quel sont les 10 clients qui ont passés le plus de commandes par année ? 
- Quel sont les clients qui ont passés plus de 20 commandes ? 

Je dois répondre à ces questions à partir des quatre fichiers excel:

- **customers** : contient des informations sur nos clients, telles que nom, prénom, email et date d’inscription.
- **products** : inclut des détails comme le prix, le nom du produit et sa catégorie.
- **orders** : contient des informations telles que le client qui a passé la commande, la date de la commande et son statut.
- **order_details** : donne des informations sur les produits commandés, la quantité et le prix unitaire.

Je construis dans un premier temps une base de données SQL (Datawarehouse) qui va me permettre, à travers des requêtes, de répondre aux questions posées.
Après avoir construit la base de données et construit les KPIs et les tables de données répondant aux questions ci-dessus en utilisant le langage SQL, je dois produire un rapport BI synthétisant les réponses afin d'aider à la prise de décision.

# Rendu

Après avoir construit une base de données PostgreSQL pour répondre aux besoins de l'entreprise, j'ai créé un rapport interactif Power BI. Ce rapport offre aux décideurs une vue d'ensemble des indicateurs clés de performance (KPIs) par année :

**-** Nombre de nouveaux clients
**-** Nombre de commandes
**-** Chiffre d'affaires
**-** Taux d'annulation des commandes
**-** Le rapport permet également d'analyser :

L'évolution mensuelle du chiffre d'affaires par année
Les 10 meilleurs clients en termes de chiffre d'affaires, avec la répartition de leurs dépenses (info-bulles)
Les catégories de produits les plus contributrices au chiffre d'affaires
En résumé, ce rapport Power BI fournit une analyse visuelle et interactive des données de l'entreprise, facilitant la prise de décisions stratégiques.


<img width="1000" alt="Capture 3" src="https://github.com/user-attachments/assets/414c86ac-ba6b-45aa-ac35-882723611ce0" />

<img width="1000" alt="Capture 3" src="https://github.com/user-attachments/assets/db804ba5-39fd-4534-8426-c31086e81401" />

# Méthodologie

**-** Construction des tables de ma base de données **PostgreSQL** (Fichier nommé Tables.sql)

**-** Construction d'un **ETL** en utilisant **pandas** et **sqlalchemy** pour Extraire, transformer les données de mes fichiers brutes excel et les Charger dans mon datawarehouse **PostgreSQL** (dossier nommé Scripts python)

**-** Requêtage de ma base de données ainsi construite pour répondre aux problématiques business énoncées plus haut (dossier nommé Requêtes SQL)

**-** Production d'un tableau de bord interactif sous **Power BI** pour synthétiser les réponses aux questions (Fichier nommé Rapport BI.pbix)



# Outils

<img width="200" alt="Capture_Python2" src="https://github.com/user-attachments/assets/f1b54b4b-c6e1-4b91-8224-0129e160ed34">

<img width="200" alt="PostgreSQL" src="https://github.com/user-attachments/assets/c0f4d9b2-ebe7-472a-be81-c8add941b0ee">

<img width="165" alt="Capture_PowerBI" src="https://github.com/user-attachments/assets/7a8ecf66-7f55-43ee-bb20-88abe9c99af8">


<a href="#">#Python</a>
<a href="#">#SQL</a>
<a href="#">#PostgreSQL</a>




