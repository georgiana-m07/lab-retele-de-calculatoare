xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
declare namespace medical="http://127.0.0.1/cabinetmedical";
 
<h:ul> {
for $x in doc("pacienti.xml")/medical:cabinet/medical:categorii/medical:pacient
where $x/medical:mediu = "Urban" and $x/medical:sex="F" and $x/medical:epidemiologie="Antigripal"
order by $x/medical:mediu
return <h:li>{data($x/medical:nume)}  {data($x/medical:prenume)} - {data($x/medical:varsta)}-  {data($x/medical:sex)}-{data($x/medical:mediu)}- {data($x/medical:epidemiologie)}</h:li> 
}
</h:ul>
