# Packages imports
import datetime
import logging
import os
import pandas as pd
from sqlalchemy import create_engine

# Fonction d'extraction

def extract(file_path):
    """
    Extrait les données d'un fichier CSV et renvoie un DataFrame pandas.

    Paramètres:
        file_path (str): Le chemin d'accès au fichier CSV.

    Renvoie:
        pandas.DataFrame: DataFrame contenant les données du fichier CSV.
"""
    try:

        # Reading CSVs files into DataFrame
        df=pd.read_csv(file_path, sep=",")        
        return df

    except Exception as e:
        return e
    

# Fonction de transformation des données

def transform(df):
    """
    Filtre le DataFrame en supprimant les observations avec des valeurs manquantes dans les colonnes 'passenger_count' et 'total_amount'.

    Paramètres:
        df (pandas.DataFrame): DataFrame d'entrée.

    Renvoie:
        pandas.DataFrame: DataFrame filtré.
"""
    try:

        # Dropping all rows with missing values
        filtered_df = df.dropna(axis = 0)

        # Correcting column name to lowercase
        filtered_df = filtered_df.rename(columns = str.lower)
        
        return filtered_df
    except Exception as e:
        return e
    
    
# Fonction de chargement 

def load(df, table_name, connection_string):
    """
    Charge les données d'un DataFrame dans une table PostgreSQL.

    Paramètres:
        df (pandas.DataFrame): DataFrame d'entrée.
        table_name (str): Nom de la table PostgreSQL dans laquelle charger les données.
        connection_string (str): Chaîne de connexion PostgreSQL.

    Renvoie:
        bool: True si le chargement des données a réussi, False sinon.
    """
    try:
        # Create database engine
        engine = create_engine(connection_string)

        # Load DataFrame into PostgreSQL table
        df.to_sql(table_name, engine, if_exists='append', index=False)

        # Close the connection
        engine.dispose()

        return True
    
    except Exception as e:
        return e
