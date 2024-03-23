xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
declare namespace medical="http://127.0.0.1/cabinetmedical";
 
<h:ul> {
for $x in doc("pacienti.xml")/medical:cabinet/medical:categorii/medical:pacient
where $x/medical:varsta > 20 and $x/medical:sex = "F" and $x/medical:mediu = "Rural"
order by $x/medical:varsta
return <h:li>{data($x/medical:nume)} {data($x/medical:prenume)}-{data($x/medical:sex)} - {data($x/medical:varsta)} ANI-{data($x/medical:mediu)}</h:li> 
}
</h:ul>

