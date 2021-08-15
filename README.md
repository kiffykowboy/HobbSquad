# HobbSquad

## Purpose
>> HobbSquad is a community of hobbyists who contribute hobbies to a central resource. All users are able to contribute, view and favorite all other hobbies.


## Data Needs
>> The primary data needs for this project are Users and Hobbies but within each table there needs to be the functionality to favorite things and link out to a users favorites.


## Tables

* users (One)
  * Columns - user_id (PK), email, first_name, last_name, favorite_hobbies (FK: hobby_id)

* hobbies (Many)
  * Columns - hobby_id (PK), added_by (FK: user_id), hobby_name, hobby_description, tutorial_link

* hobbyists_has_hobbies (Join Table) 
  * Columns - hobbyists_user_id, hobbies_hobby_id

## Setting up DB + Connecting to Workbench + Seeding with Data

>> Creating DB Instance
Take a look at the navigation menu (top-left) on the dashboard. You should see a lot of options.
Locate the heading that reads "STORAGE" and click the "SQL" option.
Click "CREATE INSTANCE" near the top of the page.
Select "MySQL" from the two options.
Fill out the form with the following information
Instance ID: "first-instance"
Root password: a password of your choice
All other defaults can be left alone
Click "Create" and wait for the instance to be set up. This can take a few minutes.
When the instance is ready there will be a green checkmark next to it. Click on the name "first-instance" to see an overview.
In this overview screen, look for a menu option called "DATABASES" and click it.
Create a database called "admin".
We're almost done . . . we just need to allow the database instance to be accessed from outside of this console. To do that we need to whitelist our IP address.

Navigate to the "CONNECTIONS" tab.
Look for the checkbox by "Public IP", we need to add a network.
Find your IP address here and enter it into the dialog box with a name.
Note that you will need to do this for each network you want to access the database from (home, work, ACA, Starbucks, wherever . . .)
Make sure to click the save button. We're ready to go! We have a database set up in Google Cloud that can be accessed from anywhere. Now we need to learn how to interact with it in the next step.

>> Connect MySQL Workbench to the Database on GCP
When opening MySQL Workbench, one of the first things you see is some text that says "MySQL Connections"
Click the little plus sign next to that text. A dialog box should pop up
Fill out the following information:
Connection Name: "first-instance"
Hostname: The IP address of your db in GCP
You can find this on the "OVERVIEW" tab
Password: Click "store in keychain" and enter the password you gave your instance when you set it up in the last step
Default Schema: We'll use the name of the database we created earlier, "admin"
Click "Test Connection". It should have been successful
Click "Ok" to save the connection The new connection should be listed under "MySQL Connections", double click it to connect to the database
We should have successfully created a database and connected to it. We've done a lot of setup so far but for our homework we'll add some data to our database and begin querying the data. Reference the following docs for additional information and walkthroughs of what we've covered so far.

>> Open 'initialize.sql' file in workbench by opening with the file icon and then running it with the lightning bolt. 

Test DB setup by running a 'select *' query and making sure the data shows up.

