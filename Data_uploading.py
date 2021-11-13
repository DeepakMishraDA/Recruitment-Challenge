from sqlalchemy import create_engine
import pandas as pd

engine=create_engine("postgresql+psycopg2://postgres:new@1610@localhost:5432/jobs")
df = pd.read_csv('team.csv')

try:
    df.to_sql('team', engine, if_exists= 'replace', index= False)

except:
    print("Sorry, some error has occurred!")

finally:
    engine.dispose()