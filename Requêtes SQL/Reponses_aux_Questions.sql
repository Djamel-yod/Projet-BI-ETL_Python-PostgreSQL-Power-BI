--- Quel est le montant total et moyen des ventes entre 2022 et 2024 ?
 select 
 	sum(quantity*unit_price) as total, 
 	avg(quantity*unit_price) as moyenne from order_details;


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
	
	
	
SELECT
    EXTRACT(YEAR FROM order_date) AS Annee,
	SUM(quantity * unit_price) AS Chiffre_Affaire
FROM
    order_details
INNER JOIN orders ON order_details.order_id = orders.order_id
GROUP BY
    Annee
ORDER BY
    Chiffre_Affaire DESC;
	

--- Quel est le CA par an et par catégorie de produits ?

select 
	sum(quantity*unit_price) as Chiffre_Affaire, 
	category,
	extract(YEAR from orders.order_date) as Annee 
from 
	order_details 
inner join 
	orders on order_details.order_id=orders.order_id
inner join
	products on order_details.product_id=products.product_id	
group by Annee,category

order by 
	Chiffre_Affaire, Annee desc;
	

-- Réponses plus approfondies à la question précédente en utilisant un group by grouping sets, un group by rollup et un group by cube

select 
	sum(quantity*unit_price) as Chiffre_Affaire, 
	category,
	extract(YEAR from orders.order_date) as Annee 
from 
	order_details 
inner join 
	orders on order_details.order_id=orders.order_id
inner join
	products on order_details.product_id=products.product_id	
group by grouping sets(Annee,category)
order by 
	Chiffre_Affaire, Annee desc;
	
	


select 
	sum(quantity*unit_price) as Chiffre_Affaire, 
	category,
	extract(YEAR from orders.order_date) as Annee 
from 
	order_details 
inner join 
	orders on order_details.order_id=orders.order_id
inner join
	products on order_details.product_id=products.product_id	
group by rollup(Annee,category)
order by 
	Chiffre_Affaire, Annee desc;
	



select 
	sum(quantity*unit_price) as Chiffre_Affaire, 
	category,
	extract(YEAR from orders.order_date) as Annee 
from 
	order_details 
inner join 
	orders on order_details.order_id=orders.order_id
inner join
	products on order_details.product_id=products.product_id	
group by cube(Annee,category)
order by 
	Chiffre_Affaire, Annee desc;
	
	
	
--- En 2024, Quel pourcentage de nos clients passent une commande chaque mois ?


-- Ce script SQL génère un rapport d'activité client par mois. Il détermine si les clients étaient actifs en fonction de leurs commandes complétées.
-- La première expression de table commune (CTE), `customer_months`, crée une table des mois d'activité pour chaque client depuis leur mois d'adhésion.
-- Elle utilise un CROSS JOIN pour associer chaque client avec chaque mois possible depuis la date de leur adhésion jusqu'au mois le plus récent dans les commandes.
-- La deuxième CTE, `customer_activity`, détermine si chaque client était actif dans chaque mois d'activité.
-- La requête finale sélectionne le mois d'activité, compte le nombre total de clients et le nombre de clients actifs, puis calcule le taux d'activité

WITH 
	customer_months1 AS (
		SELECT
			customer_id,
			extract(month from join_date) AS join_month,
			activity_month
		FROM
			customers
		CROSS JOIN (
			SELECT DISTINCT extract(month from order_date) AS activity_month
			FROM orders
		)
		WHERE join_date >= '2022-12-31'
),



customer_months AS (
    SELECT
        customer_id,
        join_month,
        activity_month
    FROM
        customer_months1
    WHERE join_month >= activity_month
),	

customer_activity AS (
	SELECT 
		customer_months.customer_id,
		customer_months.join_month,
		customer_months.activity_month,
		CASE 
			WHEN orders.order_id IS NOT NULL THEN 1 
			ELSE 0
		END AS is_active
	FROM customer_months
	LEFT JOIN orders AS orders 
	ON customer_months.customer_id = orders.customer_id
	AND customer_months.activity_month = extract(month from orders.order_date)
	AND orders.status = 'Completed'
	ORDER BY customer_months.customer_id, customer_months.activity_month
	)
	
	SELECT
		activity_month,
		COUNT(DISTINCT(customer_id)) AS total_customers,
		SUM(is_active) AS active_customers,
		SUM(is_active) / COUNT(DISTINCT(customer_id)) AS activity_rate
	FROM customer_activity
	GROUP BY activity_month;



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



