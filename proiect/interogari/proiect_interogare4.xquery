xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 4: Descrierea filmului cu cel mai recent an de lansare:)

<h:ul> {
    let $an-max := max(doc("proiect.xml")//film/an)
    return <h:li>{doc("proiect.xml")//film[./an = $an-max]/descriere}</h:li>
}
</h:ul>