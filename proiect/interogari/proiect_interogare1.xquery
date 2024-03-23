xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 1: Titlul filmului:)

<h:ul> {
    for $film in doc("proiect.xml")//film
    return <h:li>{$film/titlu}</h:li>
}
</h:ul>