select  Name, PatternName, ColorName, SizeNo, Sum(Amount) as TotalAmt
from Product p join Pattern pa on p.PatternID = pa.PatternID join Color c on c.ColorID = p.ColorID
join Size s on s.SizeID = p.SizeID join [<SalesOrderLine>] sol on sol.ProdID = p.ProdID join SalesOrder so
on so.SOID = sol.SOID join PaymentIn pay on pay.PayInID = so.PayInID
where year(so.Date) = 2024
group by Name, PatternName, ColorName, SizeNo