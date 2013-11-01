# encoding: utf-8

require 'test/unit'
require "i18n"
require File.expand_path(File.dirname(__FILE__) + '/../lib/localize_multi_digit.rb')

class LocalizeMultiDigitTest < Test::Unit::TestCase

  def test_should_work_for_empty_and_nil_value
    I18n.locale = :en
    assert_equal '', ''.to_ld
    assert_equal '', nil.to_ld
  end

  def test_should_work_for_default_english_digits
    I18n.locale = :en
    assert_equal "123", "123".to_ld
    assert_equal "hola89cia00", "hola89cia00".to_ld
  end

  def test_should_return_original_text_if_there_is_no_digit_even
    I18n.locale = :en
    assert_equal "Hello digit localizer!", "Hello digit localizer!".to_ld

    I18n.locale = :bn
    assert_equal "Hello digit localizer!", "Hello digit localizer!".to_ld

    I18n.locale = :ar
    assert_equal "Hello digit localizer!", "Hello digit localizer!".to_ld
  end

  def test_should_work_for_arabic_digits
    I18n.locale = :ar
    assert_equal "Hello ١٢٣ World ٠٧٨", "Hello 123 World 078".to_ld
  end

  def test_should_pass_for_numeric_float_value_on_non_english_language
    I18n.locale = :bn
    assert_equal "৪৫০", 450.to_ld

    assert_equal "৪৫০.০৮৭", 450.087.to_ld
  end

  def test_should_return_original_object_for_non_defined_language
    I18n.locale = :err # err locale is not defined on localized_digits.yml file
    assert_equal 123, 123.to_ld
    assert_equal nil, nil.to_ld
    assert_equal "Hello digit localizer!", "Hello digit localizer!".to_ld
  end

end