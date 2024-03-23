xquery version "1.0";
declare namespace h = "http://www.w3.org/1999/xhtml";

<h:ul>
{ for $student as element(student) in //student
  let $nota := $student/nota[@materie = "Tehnologii"]
  let $denumire as xs:string := string ($student/@stud)
  where $nota >8 
  order by $denumire descending, $denumire descending
  return <h:li> { $denumire, $nota } </h:li>
}
</h:ul>  


<h:ul>
{
  for $student as element(student) in //student
  let $nota := $student/nota[@materie = "Marketing"]
  let $denumire as xs:string := string($student/@stud)
  where $nota < 9
  return <h:li>{$denumire, $nota}</h:li>
}
</h:ul>


<h:ul>
{
  for $student as element(student) in //student
  let $denumire as xs:string := string($student/@stud)
  let $medie := avg($student/nota)
  return <h:li>{$denumire, $medie}</h:li>
}
</h:ul>


<h:ul>
{
  for $student as element(student) in //student
  let $denumire as xs:string := string($student/@stud)
  where every $nota in $student/nota satisfies $nota >= 9
  return <h:li>{$denumire}</h:li>
}
</h:ul>


<h:ul>
{
  for $student as element(student) in //student
  let $denumire as xs:string := string($student/@stud)
  let $numarMaterii := count($student/nota[. >= 9])
  return <h:li>{$denumire, $numarMaterii}</h:li>
}
</h:ul>