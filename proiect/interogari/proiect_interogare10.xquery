xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 10: Numărul de recenzii cu ratingul de 4:)

<h:ul> {
    let $numar-recenzii := count(doc("proiect.xml")//recenzie[rating = 4])
    return <h:li>{concat("Număr recenzii rating 4: ", $numar-recenzii)}</h:li>
}
</h:ul>