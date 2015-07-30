#file_io.gem

A very cleverly named ruby gem that provides an interface for quickly uploading files to https://file.io

[RubyGems][gems]

##Usage
Upload a file
```language-ruby
require 'file_io'

file = FileIO.new('stannis.txt')
file.upload
```

Upload a file with an expiration date
```language-ruby
require 'file_io'

file = FileIO.new('stannis.txt')
file.expire("1w")
```


Easy!

[gems]:https://rubygems.org/gems/file_io
