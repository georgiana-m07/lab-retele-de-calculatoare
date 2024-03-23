xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
declare namespace medical="http://127.0.0.1/cabinetmedical";

(:Interogare care afișează numărul total de pacienți care provin din mediul urban și au efectuat vaccinul Antigripal:)

<h:ul> {
let $count := count(doc("pacienti.xml")/medical:cabinet/medical:categorii/medical:pacient[medical:mediu = "Urban" and medical:epidemiologie = "Antigripal"])
return <h:li>Numărul total de pacienți din mediul urban cu vaccinul Antigripal: {$count}</h:li>
}
</h:ul>