# aesthetify

[![Gem Version](https://badge.fury.io/rb/aesthetify.svg)](https://badge.fury.io/rb/aesthetify)
[![Build Status](https://travis-ci.org/TheAssailant/aesthetify.svg?branch=master)](https://travis-ci.org/TheAssailant/aesthetify)

aesthetify makes it simple to take any string and transform it for the
ＡＥＳＴＨＥＴＩＣ. In addition, it also makes creating Ｆｕｌｌｗｉｄｔｈ text
just as simple.

aesthetify comes with regular methods and bang versions of those methods for
in-place string modification.

## Usage

```ruby
require "aesthetify"
```

Using String#aesthetify:
```ruby
text = "vaporwave"
text.aesthetify!
puts text
#=> ＶＡＰＯＲＷＡＶＥ
```

Using String#fullwidth:
```ruby
text = "long boy"
text.fullwidth!
puts text
#=> ｌｏｎｇ ｂｏｙ
```

Using concatenation:
```ruby
text = "This is the " + "sad boys ".aesthetify + "club"
puts text
#=> This is the ＳＡＤ ＢＯＹＳ club
```

## CLI usage

Simply call either the `aesthetify` or `fullwidth` commands and enter your text after.

```bash
$ aesthetify macintosh plus
ＭＡＣＩＮＴＯＳＨ ＰＬＵＳ
```

## Supported Ruby versions
aesthetify supports all of the currently supported versions of Ruby. As of
2018-12-19 these are:
- Ruby 2.3 - 2.3.8
- Ruby 2.4 - 2.4.5
- Ruby 2.5 - 2.5.3

## License
aesthetify is licensed under the [MIT License](https://opensource.org/licenses/MIT).
