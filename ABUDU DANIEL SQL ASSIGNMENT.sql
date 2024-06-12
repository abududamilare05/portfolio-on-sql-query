(1) What are all the location for production.Location

Query: SELECT * FROM Production.Location;

(2) What is the loacation name for the location ID 5

Query: SELECT Name FROM Production.Location WHERE
       LocationID = 5;

 (3) list all workers and their supervisors
     Query: SELECT W.WorkerName, S.SupervisorName
          from Production.Location  L
		  INNER JOIN Workers W ON L.LocationID = W.LocationID
		  LEFT JOIN Workers S ON W.Supervisor = S.WorkerID

  (4) Is it possible to delete a location from the production database by its ID?
  Query: DELETE FROM Production.Location WHERE LOCATIONID = [LOCATIONID];

  (5) Can we find out which year each location was added  to our system if that data if that data exist in another column such
       as 'CREATEDATE'?

	Query:SELECT LOCATIONID, Name, YEAR(CreateDate)
	AS YearAdded FROM Production.Location;

   (6) can we update the cost rate for location ID 3 to be 15?
	 Query: UPDATE Production.Location SET CostRate = 15 Where LocationID = 3;


   (7)  Can we get a list of locations sorted by availability?
      Query: SELECT * FROM Production.Location ORDER BY Availability desc;

   (8) List all products and their corresponding Suppliers
      Query:SELECT P.ProductName, Suppliername
	        FROM Production.Location L 
			INNER JOIN Products P ON L.LocationID = P.LocationID;

   (10) Show all employees and their respective job titles
       Query: SELECT E.EmployeeName, J.JobTitle
	          FROM Production.Location L
			  INNER JOIN Employees E ON L.Location = E.LocationID
			  INNER JOIN JobTitles J ON E.JobTitle = J.JobTitleID;
    
	(11) Retrieve the average cost rate for each location
	     Query :SELECT L.LocationName, AVG(L.CostRate) AS  AvgCostRate
		        FROM Production.Location L
				Group BY L.LocationName;

	(12) List all products,their prices,producers,and department names
	     Query: SELECT P.ProductName, D.DepartmentName
		        FROM Production.Location L
				INNER JOIN Product P ON L.LocationID = P.LocationID ;

	(13) Are there any location without available capacity (Availability = 0)?
	    Query: SELECT LocationID, Name 
		       FROM Production.Location
			   WHERE Availabity = 0;
	(14) Show cars with high mileage than a specific car
	    Query : SELECT C1.CarName, C1.Mileage, C2.CarName AS SpecificCar
		        FROM Production.Location L
				INNER JOIN Cars C1 ON L.LOCATIONID = C1.LocationID
				INNER JOIN Cars C2 ON C1.Mileage> C2.Mileage;

    (15)list all calories under 160 calories along with their department names
	    Query: SELECT P.ProductName, D.DepartmentName
		       FROM Production.Location L
			   INNER JOIN Products P  ON L.LocationID =P.LocationID
			   WHERE P.Calories < 160;
	   




