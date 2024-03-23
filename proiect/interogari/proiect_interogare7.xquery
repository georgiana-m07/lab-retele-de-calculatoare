xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 7: Recenzii cu rating egal cu 5:)

<h:ul> {
    for $recenzie in doc("proiect.xml")//recenzie
    let $rating := xs:integer($recenzie/rating)
    where $rating = 5
    return <h:li>{concat("Autor: ", $recenzie/autor, ", Titlu: ", $recenzie/titlu)}</h:li>
}
</h:ul>