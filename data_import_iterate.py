import pandas as pd
import psycopg2
import subprocess
import os

# Connect to PostgreSQL
conn = psycopg2.connect(
    dbname="Toronto Bike Share",
    user="user_name",
    password="password",
    host="host_name",
    port="port_number"
)
cursor = conn.cursor()

# Read the spreadsheet
csv_file_path = 'Toronto_Bikeshare_Ridership_FileNameList.csv'
df = pd.read_csv(csv_file_path,index_col = 0, header = None)

# password for psql to import into database
os.environ['PGPASSWORD'] = 'password'

# Iterate through file paths
for file_path, _ in df.iterrows():
    # Construct the \copy command
    copy_command = f"\\copy bikeshare FROM '{file_path}' WITH (FORMAT CSV, DELIMITER ',', HEADER true);"

    psql_filepath = "C:\\Program Files\\PostgreSQL\\16\\bin\\psql.exe"

    # Execute the \copy command using subprocess
    subprocess.run([psql_filepath, "-d", "Toronto Bike Share", "-U", "postgres", "-c", copy_command])
  
    # Print file path to document which files ran correctly and document which files have errors
    print(file_path)

# Commit changes and close connection
conn.commit()
cursor.close()
conn.close()
