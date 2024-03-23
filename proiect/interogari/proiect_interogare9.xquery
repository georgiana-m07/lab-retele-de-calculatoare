xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";

(:Interogarea 9: Numărul total de filme din XML:)

count(doc("proiect.xml")//film)
