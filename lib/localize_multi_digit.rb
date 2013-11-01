# encoding: utf-8

module LocalizeMultiDigit
  def to_ld
    item = self
    digit_map = $ld.get_localized_digits["digits"]

    translated_item = ""
    begin
      locale = I18n.locale
    rescue Exception => error
      locale = :en
    end
    return self if !digit_map.keys.include?(locale.to_s)

    item.to_s.split("").each do |c|
      if c.to_i > 0 || c == '0'        
	translated_item += digit_map[locale.to_s][c]
      else
	translated_item += c
      end
    end
    return translated_item
  end
end


module LocalizedDigits
  require 'yaml'
  class Base
    def initialize
      @digits = YAML.load_file("config/locales/localized_digits.yml") rescue YAML.load_file(File.dirname(__FILE__) + '/generators/localized_digits.yml')
    end
    def get_localized_digits
      @digits
    end
  end
end

$ld = LocalizedDigits::Base.new()

[String, Fixnum, Float, Date, Time,NilClass].each do |item|
  item.send(:include, LocalizeMultiDigit)
end