xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
declare namespace medical="http://127.0.0.1/cabinetmedical";
 
<h:ul> {
for $x in doc("pacienti.xml")/medical:cabinet/medical:categorii/medical:pacient
where $x/medical:varsta>=avg(/medical:cabinet/medical:categorii/medical:pacient/medical:varsta) and $x/medical:epidemiologie="Antihepatitia A/B" and $x/medical:sex="M"
order by $x/medical:varsta
return <h:li>{data($x/medical:varsta)} </h:li> 
}
</h:ul>


