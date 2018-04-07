for $x in doc("books.xml")/catalog/book
where $x/genre = "Fantasy"
return $x/title
