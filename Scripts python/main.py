import etl

# Paramètre de connexion à la base de données postgreSQL
connection_string= "postgresql://postgres:Isma@localhost:5432/E-commerceDatabase"

# Chemin d'accès des fichiers plats Excel
path="C:\\Users\\Admin\\Desktop\\Etudes\\E-Learning et Publications LinkedIn\\projet_BI_Intégration Data PostgreSQL\\data"



def main():
        
    # Extract, transform and load customers database
    customers=etl.extract(path+"\\customers.csv")
    etl.transform(customers)
    etl.load(customers, "customers", connection_string)
    
    
    # Extract,transform and load orders database
    orders=etl.extract(path+"\\orders.csv")
    etl.transform(orders)
    etl.load(orders, "orders", connection_string)
    
    
    # Extract,transform and load orders_details database
    order_details=etl.extract(path+"\\order_details.csv")
    etl.transform(order_details)
    etl.load(order_details, "order_details", connection_string)
    
    # Extract,transform and load products database
    products =etl.extract(path+"\\products.csv")
    etl.transform(products)
    etl.load(products, "products", connection_string)
    
    
if __name__ == '__main__':
    main()