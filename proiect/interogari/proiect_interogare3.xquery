xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 3: Distribuția filmului:)

<h:ul> {
    for $actor in doc("proiect.xml")//film[./titlu = "Spider-Man: No Way Home"]/distributie/actor
    return <h:li>{$actor}</h:li>
}
</h:ul>