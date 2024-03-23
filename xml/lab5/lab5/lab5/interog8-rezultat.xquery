xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
declare namespace medical="http://127.0.0.1/cabinetmedical";

(:Interogare care afișează lista pacienților de sex feminin, cu vârsta peste 30 de ani, care provin din mediul rural și au ca ultimă vaccinare epidemiologică vaccinul Antituberculozic:)

<h:ul> {
for $x in doc("pacienti.xml")/medical:cabinet/medical:categorii/medical:pacient
where $x/medical:varsta > 30 and $x/medical:sex = "F" and $x/medical:mediu = "Rural" and $x/medical:epidemiologie = "Antituberculozic"
order by $x/medical:varsta
return <h:li>{data($x/medical:nume)} {data($x/medical:prenume)} - {data($x/medical:varsta)} ANI - {data($x/medical:sex)} - {data($x/medical:mediu)} - {data($x/medical:epidemiologie)}</h:li> 
}
</h:ul>
