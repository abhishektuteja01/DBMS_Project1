# Investory - A Stock Bookkeeping Application


## How to Run:
1. Describe the requirements of the problem with a simple document that lists the rules of the database in the problem domain language. Then from that list of rules and notes highlight the list of possible nouns and actions you identified.

Diagrams and Documents/Requirements.pdf


2. Analyze the problem and create a conceptual model in UML using a tool of your choice (e.g., LucidChart, Enterprise Architect, ArgoUML, Visual Paradigm, ERwin, TOAD) as discussed during class and provided in the references and resources below. Additional requirements and clarifications will be provided in the #general channel on Slack. The diagram must contain at least three classes, at least one to many relationship and one many to many. All relationships, except generalization, must have full multiplicity constraints and labeled as appropriate. Classes must have proper names, descriptions, and attributes with domain types. Try to avoid building a model with more than 10 entities.

Diagrams and Documents/UML_Diagram.JPG 


3. From the Conceptual Model, construct a logical data model expressed as an ERD using a language of your choice (other than UML) and a tool of your choice. The logical data model may not have any many-to-many relationships, so introduce association entities as needed.

Diagrams and Documents/ERD_Diagram.JPG  
Diagrams and Documents/Link_to_ERD.pdf


4. From the logical model, define a relational schema in at least BCNF. Using functional dependencies, show that the schema in in at least BCNF.

Diagrams and Documents/Relational Schema.pdf

Create a set of SQL data definition statements for the above model and realize that schema in SQLite3 by executing the script from the SQLite3, the console or Node. You can use DB Browser to generate these statements.

Diagrams and Documents/project1.db  
Diagrams and Documents/Data_Creation_SQL.sql


5. Populate the tables with test data.

Diagrams and Documents/Mock_Data.sql


6. Define and execute at least five queries that show your database. At least one query must contain a join of at least three tables, one must contain a subquery, one must be a group by with a having clause, and one must contain a complex search criterion (more than one expression with logical connectors).

Diagrams and Documents/Queries/Query1.sql - This query retrieves a list of transactions, including trader names and stock names.

Diagrams and Documents/Queries/Query2.sql - This query finds all traders whose initial account balance is greater than the average initial account balance of all traders

Diagrams and Documents/Queries/Query3.sql - This query counts the number of transactions for each trader and returns only those traders with more than 2 transactions.

Diagrams and Documents/Queries/Query4.sql - This query retrieves a list of traders along with their watchlist names, including those who may not have any watchlists (using a LEFT JOIN).

QDiagrams and Documents/Queries/Query5.sql - This query retrieves stocks that have a market share percentage greater than 5% and belong to a specific sector (e.g., 'Finance').

