declare function local:ratingBetween($p as xs:integer?,$d as xs:integer?)
{
  let $doc := doc('http://www.stylusstudio.com/examples/videos.xml')
  for $v in $doc//video
    where xs:integer($v/user_rating) >= $p and xs:integer($v/user_rating) <= $d
    order by $v/user_rating
    return $v
};

<videos>{local:ratingBetween(4,5)}</videos>