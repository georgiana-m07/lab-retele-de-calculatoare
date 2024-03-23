xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 5: Actorii care au jucat în cel puțin 3 filme:)

<h:ul> {
    for $actor in distinct-values(doc("proiect.xml")//actor)
    let $numar-filme := count(doc("proiect.xml")//film[distributie/actor = $actor])
    where $numar-filme >= 3
    return <h:li>{$actor}</h:li>
}
</h:ul>