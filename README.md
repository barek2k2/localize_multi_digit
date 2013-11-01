# Introduction

Sometimes you may need to translate digits from string/float/fixnum into your own local languages other than english 
for localization, in this case localize_multi_digit ruby gem offers you flexibale way to make it done into your Rails application :-)

#How to install

To use this gem, Include it into your Gemfile:
<pre>
  <code>
   gem "localize_multi_digit", "~> 4.0.4"
  </code>
</pre>

OR
<pre>
  <code>
   gem "localize_multi_digit", "~> 4.0.4", :git => "git@github.com:barek2k2/localize_multi_digit.git"
  </code>
</pre>

Then run:
<pre>
  <code>
   bundle install
  </code>
</pre>

Then run localize_multi_digit generator for configuration:
<pre>
  <code>
   rails g localize_multi_digit
  </code>
</pre>

The above command will create 1 sample digit localization yml file into your Rails app like this:
<pre>
  <code>
      create  config/locales/localized_digits.yml
</code>
</pre>

Then Restrat your application and you are Done!

# How to use
Localizing multiple digits from any string/fixnum/float is very easy from your any controller,view,helper,model. 

Tell I18n that your current language is Arabic and you can get your digits into arabic trsnalated like this:
<pre>
  <code>
    I18n.locale = :ar
    123.to_ld
    "Hola234ciao760".to_ld
    450.78.to_ld
  </code>
</pre>

Tell I18n that your current language is Bangla and you can get your digit into bangla trsnalated:
<pre>
  <code>
    I18n.locale = :bn
    123.to_ld
    "Hola234ciao760".to_ld
    450.78.to_ld
  </code>
</pre>

#Customization
Right now the gem includes only Bangla,Arabic,Hindi languages configuration stuff by default but its ofcourse possible to add 
to get the multiple digits into your own language translated. For example, your language name is wow, then add 
your maped digits 0..9 into the localized_digits.yml yml file like this:

<pre>
  <code>
digits:
  en:
    '0': '0'
    '1': '1'
    '2': '2'
    '3': '3'
    '4': '4'
    '5': '5'
    '6': '6'
    '7': '7'
    '8': '8'
    '9': '9'

  bn:
    '0': '০'
    '1': '১'
    '2': '২'
    '3': '৩'
    '4': '৪'
    '5': '৫'
    '6': '৬'
    '7': '৭'
    '8': '৮'
    '9': '৯'

  ar:
    '0': '٠'
    '1': '١'
    '2': '٢'
    '3': '٣'
    '4': '٤'
    '5': '٥'
    '6': '٦'
    '7': '٧'
    '8': '٨'
    '9': '٩'

  wow:
    '0': '!'
    '1': '@'
    '2': '+'
    '3': '$'
    '4': '%'
    '5': '^'
    '6': '&'
    '7': '*'
    '8': '('
    '9': ')'
    </code>
</pre>

Then restart the server!

Now tell I18n that your current langauge name is wow like this:
<pre>
  <code>
    I18n.locale = :wow
    123.to_ld
  </code>
</pre>

You should see "@+$" as output because @ stans for 1, + stands for 2 and $ stands for 3 and you are done :-D
