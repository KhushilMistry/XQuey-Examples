let $doc := doc('http://www.stylusstudio.com/examples/videos.xml')
for $v in $doc//video
return $v 