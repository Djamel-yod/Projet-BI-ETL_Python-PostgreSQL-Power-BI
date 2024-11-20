--- Quel est le montant total et moyen des ventes entre 2022 et 2024 ?
 SELECT 
 	SUM(quantity*unit_price) AS total, 
 	AVG(quantity*unit_price) AS moyenne 
FROM order_details;


--- Quel est notre chiffre d'affaires (CA) par mois et par an ?

SELECT
    EXTRACT(YEAR FROM order_date) AS Annee,
    EXTRACT(MONTH FROM order_date) AS Mois,
	SUM(quantity * unit_price) AS Chiffre_Affaire
FROM
    order_details
INNER JOIN orders ON order_details.order_id = orders.order_id
GROUP BY
    Annee, Mois
ORDER BY
    Chiffre_Affaire DESC;
	
	

--- Quel est le CA par an et par catégorie de produits ?

SELECT 
	SUM(quantity*unit_price) AS Chiffre_Affaire, 
	category,
	EXTRACT(YEAR FROM orders.order_date) AS Annee 
FROM 
	order_details 
INNER JOIN 
	orders ON order_details.order_id=orders.order_id
INNER JOIN
	products ON order_details.product_id=products.product_id	
GROUP BY Annee,category
ORDER BY 
	Chiffre_Affaire, Annee DESC;
	

-- Réponses plus approfondies à la question précédente en utilisant un group by grouping sets, un group by rollup et un group by cube

-- GROUPING SETS
SELECT 
	SUM(quantity*unit_price) AS Chiffre_Affaire, 
	category,
	EXTRACT(YEAR FROM orders.order_date) AS Annee 
FROM 
	order_details 
INNER JOIN 
	orders ON order_details.order_id=orders.order_id
INNER JOIN
	products ON order_details.product_id=products.product_id	
GROUP BY GROUPING SETS(Annee,category)
ORDER BY 
	Chiffre_Affaire, Annee DESC;
	
	
-- GROUP BY ROLLUP
SELECT 
	SUM(quantity*unit_price) AS Chiffre_Affaire, 
	category,
	EXTRACT(YEAR FROM orders.order_date) AS Annee 
FROM 
	order_details 
INNER JOIN 
	orders ON order_details.order_id=orders.order_id
INNER JOIN
	products ON order_details.product_id=products.product_id	
GROUP BY ROLLUP(Annee,category)
ORDER BY 
	Chiffre_Affaire, Annee DESC;
	


-- GROUP BY CUBE
SELECT 
	SUM(quantity*unit_price) AS Chiffre_Affaire, 
	category,
	EXTRACT(YEAR FROM orders.order_date) AS Annee 
FROM 
	order_details 
INNER JOIN 
	orders ON order_details.order_id=orders.order_id
INNER JOIN
	products ON order_details.product_id=products.product_id	
GROUP BY CUBE(Annee,category)
ORDER BY 
	Chiffre_Affaire, Annee DESC;
	
	

--- Quels sont les 10 clients qui passent le plus de commandes ?


SELECT
    customers.first_name,
    customers.last_name,
    COUNT(orders.customer_id) AS nbr_commandes
FROM
    customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY
    customers.first_name,
    customers.last_name
ORDER BY
    nbr_commandes desc
LIMIT 10;


--- Quels sont les clients qui ont passés plus de 20 commandes ?

WITH Commandes AS(
	SELECT 
		customer_id, COUNT(customer_id) as nbre_commande
	FROM 
		orders
	GROUP BY 
		customer_id
	HAVING 
		COUNT(customer_id) > 20
	
	)
	
SELECT
	Commandes.customer_id, first_name, last_name, email, nbre_commande
FROM 
	Commandes 
INNER JOIN 
	customers ON customers.customer_id=Commandes.customer_id
	


	


