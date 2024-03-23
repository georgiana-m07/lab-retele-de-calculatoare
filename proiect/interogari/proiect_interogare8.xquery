xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 8: Numele regizorilor și anul filmelor pe care le-au regizat:)

<h:ul> {
    for $film in doc("proiect.xml")//film
    return <h:li>{concat("Regizor: ", $film/regizor, ", An: ", $film/an)}</h:li>
}
</h:ul>