require_relative '../lib/aesthetify'
require 'minitest/autorun'
require 'minitest/hell'

DATA1 = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
DATA2 = "The quick brown fox jumps over the lazy dog."

AESTHETIFY1 = " ！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［］＾＿｀ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ｛｜｝～"
AESTHETIFY2 = "ＴＨＥ ＱＵＩＣＫ ＢＲＯＷＮ ＦＯＸ ＪＵＭＰＳ ＯＶＥＲ ＴＨＥ ＬＡＺＹ ＤＯＧ．"

FULLWIDTH1 = " ！＂＃＄％＆＇（）＊＋，－．／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［］＾＿｀ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ｛｜｝～"
FULLWIDTH2 = "Ｔｈｅ ｑｕｉｃｋ ｂｒｏｗｎ ｆｏｘ ｊｕｍｐｓ ｏｖｅｒ ｔｈｅ ｌａｚｙ ｄｏｇ．"

class AesthetifyTest < Minitest::Test
  def test_aesthetify
    assert_equal AESTHETIFY1, DATA1.aesthetify
    assert_equal AESTHETIFY2, DATA2.aesthetify
  end

  def test_aesthetify_mutation
    testdata = String.new(DATA2)
    testdata.aesthetify!
    assert_equal AESTHETIFY2, testdata
  end

  def test_fullwidth
    assert_equal FULLWIDTH1, DATA1.fullwidth
    assert_equal FULLWIDTH2, DATA2.fullwidth
  end

  def test_fullwidth_mutation
    testdata = String.new(DATA2)
    testdata.fullwidth!
    assert_equal FULLWIDTH2, testdata
  end
end
