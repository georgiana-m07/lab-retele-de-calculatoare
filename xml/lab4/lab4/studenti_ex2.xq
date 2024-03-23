xquery version "1.0";
declare namespace h = "http://www.w3.org/1999/xhtml";

<h:ul>
{ for $student as element(student) in //student

  return <h:li> { $student} </h:li>
}
</h:ul>  
