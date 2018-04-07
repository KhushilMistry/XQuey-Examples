declare variable $videoGenre as xs:string external;
<videos>
{
  let $doc := doc('http://www.stylusstudio.com/examples/videos.xml')
  for $v in $doc//video
    where $v/genre = $videoGenre
    order by $v/year descending
    return $v
}
</videos>