xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 2: Anul și regizorii filmelor:)

<h:ul> {
    for $film in doc("proiect.xml")//film
    return <h:li>{concat("Titlu: ", $film/titlu, ", An: ", $film/an, ", Regizor: ", $film/regizor)}</h:li>
}
</h:ul>