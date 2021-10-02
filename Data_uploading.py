from sqlalchemy import create_engine
import pandas as pd

engine=create_engine("postgresql+psycopg2://postgres:xxxxxxxx@localhost:5432/postgres")
df = pd.read_csv('path_to_.csv_file')

try:
    df.to_sql('table_name', engine, if_exists= 'replace', index= False)

except:
    print("Sorry, some error has occurred!")

finally:
    engine.dispose()