# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Salesperson.all.count} salespeople"

# 2. insert 1-2 rows in salespeople table.

new_sp1 = Salesperson.new
new_sp1["first_name"] = "Vibhu"
new_sp1["last_name"] = "Vanjari"
new_sp1["email"] = "vibhuvanjari@gmail.com"
new_sp1["phone"] = "217-974-5467"
new_sp1.save

new_sp2 = Salesperson.new
new_sp2["first_name"] = "Anni"
new_sp2["last_name"] = "Favela"
new_sp2["phone"] = "773-892-8740"
new_sp2.save

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

puts "Salespeople: #{Salesperson.all.count}"

# 4. modify/update column data for a row in the salespeople table.

vibhu = Salesperson.find_by({"first_name" => "Vibhu"})
vibhu["email"] = "vibhutriangle@gmail.com"
vibhu.save

anni = Salesperson.find_by({"first_name" => "Anni"})
anni["email"] = "anni.favela114@gmail.com"
anni.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

puts vibhu["first_name"] + " " + vibhu["last_name"]
puts anni["first_name"] + " " + anni["last_name"]


salespeople = Salesperson.all
for salesperson in salespeople
    first_name = salesperson["first_name"]
    last_name = salesperson["last_name"]
    name = "#{first_name} #{last_name}"
    puts name
end