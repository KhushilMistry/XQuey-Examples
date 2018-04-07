declare variable $firstName as xs:string external;
<videos featuring="{$firstName}">
{
   let $doc := doc('http://www.stylusstudio.com/examples/videos.xml')
   for $v in $doc//video,
      $a in $doc//actors/actor
   where ends-with($a, $firstName)
      and $v/actorRef = $a/@id
   order by $v/year
   return
      <video year="{$v/year}">
         {$v/title}
      </video>
}
</videos>