class LocalizeMultiDigitGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))

  def copy_initializer
    copy_file 'localized_digits.yml', 'config/locales/localized_digits.yml'
  end
end
