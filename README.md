# aesthetify

[![Gem Version](https://badge.fury.io/rb/aesthetify.svg)](https://badge.fury.io/rb/aesthetify)

aesthetify makes it simple to take any string and transform it for the
ＡＥＳＴＨＥＴＩＣ. In addition, it also makes creating Ｆｕｌｌｗｉｄｔｈ text
just as simple.

aesthetify comes with regular methods and bang versions of those methods for
in-place string modification.

## Examples

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

## License
aesthetify is released under the [MIT License](https://opensource.org/licenses/MIT).
