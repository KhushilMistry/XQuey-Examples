for $x in doc("books.xml")/catalog/book
where $x/price>30
order by $x/publish_date
return <book><title>{data($x/title)}</title><author>{data($x/author)}</author></book>
