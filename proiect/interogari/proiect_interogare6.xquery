xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 6: Titlurile filmelor în ordine alfabetică inversă:)

<h:ul> {
    for $film in reverse(doc("proiect.xml")//film)
    return <h:li>{$film/titlu}</h:li>
}
</h:ul>