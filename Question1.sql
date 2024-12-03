Select s.statename, year(so.date) as Sales_Tear, sum(p.saleprice+sol.quantity) as Amount
From state s join customer c on s.stateid=c.stateid join salesorder so on c.scustid=so.custid join <salesorderline> sol on so.soid=sol.soid join product p on sol.prodid=p.prodid
Group by s.statename, year(so.date)
