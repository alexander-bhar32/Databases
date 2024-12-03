select e.EmpFirstName as GuideFirstName, e.EmpLastName as GuideLastName, ft.Date as TripDate, ft.Destination as TripDestination, c.CFirstName, c.CLastName, ft.CustomerCount
from FishingTrip ft
join Employee e on ft.EmpID = e.EmpID
join SalesOrder so on ft.SOID = so.SOID
join Customer c on c.CustID = c.CustID
where ft.Date >= '2024-03-26'; --insert date
