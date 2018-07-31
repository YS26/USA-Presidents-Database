# USA History-Presidents-Database

A SQL database project consisting of the U.S presidents, their wives, white house pets, libraries and interesting facts.


Tables:
For mine database project, I created five tables in order to represent information about all the past presidents of the United States, their first ladies, along with their vice presidents, their white house pets and lastly their libraries.
My main table is the president’s table, my president’s table consists of 45 rows and 14 columns.  In my first column I have mine primary key which is the unique number that I chose to represent each individual president, numbered one through 45. My second column was the president birthdate, which lists the month day and year of when all the presidents where born. I also made a first and last name column along with the year in which their term started as well as the year in which their term ended. I also added their political party either Democratic, Republican, Independent or unaffiliated, and also added the year which the president died. In order to make a normalized relationship I added four more tables which consisted of all the other tables primary keys. Which included the first lady number, vice president number, president pet number, and the president library num. 

Here’s a screenshot of mine president with just the first eight presidents. 

My second table was the first lady’s table, which represented all the president’s first ladies that were in office for the longest time. Unfortunately, some died very early after their husbands won the election and didn’t have the opportunity to really be first lady so I didn’t include them in order to save space in my database as well. The first lady’s table consists of the first lady’s own primary key which is called first lady number, the first lady’s first name and last name, her place of birth, and also an interesting fact about her. Originally I wanted to add their key role in office, but when I started reading about the first ladies I really enjoyed it and wanted to add my favorite interesting facts about them.
Here’s a screenshot that shows the first eight first ladies. I couldn’t get all the rows and columns to show due to the size of all my tables, so unfortunately I can only show the first eight. 

	My third table was the vice presidents table; mine vice president consists of it’s own primary key, the vice president’s first and last name, place of birth, year in which they came into office and last year in office. In my database I have forty-five listed, there were more than 45 vice presidents as well but I chose to do forty-five due to the fact that it made it easier for me to work with. 
Here’s a screenshot of the first eight vice presidents and their information.


My fourth table was presidents white house pets table. This is my favorite table, due the fact that I think is unique and shows the fun side a president. When I was reading about Lincoln, he had a turkey as a pet, but chose to pardon it at the end. Which shows how much of a good person he was. President Trump in the other hand is the only president not to have a pet so far. My pet’s table consists of three columns, the pet’s primary key, the pet’s name and lastly the type of pet the president had. 
Here’s a screenshot of some of the presidential pets. The first being president George Washington’s pet, and John Adams the sixth president of the U.S.A who had an Alligator! 
 
	My last table was the president’s libraries table. This table consisted of the president’s who had libraries dedicated to them, I was surprised to see that not all the presidents of the U.S have their own libraries. The library table consists of the it’s own primary key called prespres_libID, the name of the library called prespres_libname, the state and city which the library is located and lastly the year which it opened. 
(Here’s a screen of how mine president’s library table) 
 
	



	Stored Procedures:

I made four stored procedures in my database, for updating, inserting and deleting information in my database tables. 											 My first stored procedure was an update procedure on the first lady’s table. Due to the fact that president Grover first actual first lady was his sister he couldn’t marry her, her name was Grover Cleveland. Once president Cleveland ended up getting married to Frances Cleveland she became the new first lady. So I made this update procedure in order to update the new first lady. My second stored procedure was a delete procedure, I made this in order to remove president Richard Nixon who was the 37th president of the U.S.A who got impeached and end up being replaced by his vice president Gerald Ford.  My third stored procedure was an insert procedure. Once I deleted president Richard Nixon after he got impeached I inserted his Vice President as the new president for the remaining period of Richard Nixon’s term. I gave the vice president two different primary keys due to the fact that he first replaced president Richard Nixon and also ended up winning another term as president of the United States during the following elections.  My last stored procedure was a delete procedure, which I made in order to delete a vice president who died in office his name was George Clinton and served under president James Madison. 



Diagram to show relationship:
For my diagram, I showed the relationships that the president’s fist lady, president pets, vice presidents and president library have with the president table. I connected the prespets, vicepresident, prespreslibrary and firstlady tables to the president table by using their primary keys in the president table. I also made this Diagram in SQL.


Conclusion:
Overall, this project has helped me learned more about databases and how they work. I had a great amount of fun doing research about all the presidents and their vice presidents, first ladies, as well as their pets and libraries. The stored procedures also taught me new things. 
