declare function local:ratingBetween($p as xs:int?,$d as xs:int?)
as xs:decimal?
{
  let $doc := doc('http://www.stylusstudio.com/examples/videos.xml')
  for $v in $doc//video
    where xs:int($v/user_rating) >= $p and xs:int($v/user_rating) <= $d
    return $v
};

<videos>{local:ratingBetween(3,5)}</videos>