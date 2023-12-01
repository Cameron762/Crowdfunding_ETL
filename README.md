# Crowdfunding_ETL

Javier helped with this code, i 

# Iterate through the contact_info_df and convert each row to a dictionary.
import json
dict_values = []
for index,row in contact_info_df.iterrows():
    json_data = json.loads(row[0])
    json_list = [x for y,x in json_data.items()]
    dict_values.append(json_list)

# Print out the list of dictionaries
print(dict_values)
