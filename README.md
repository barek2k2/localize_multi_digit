# Digit Localization Examples of this Gem in a short
I18n.locale = :bn <br />
Date.today.to_ld <br />
 => "২০১৩-১০-২৩"<br />
 "Hollo 56709 localizer 45!! digits".to_ld <br />
 => "Hollo ৫৬৭০৯ localizer ৪৫!! digits"<br />
 786.9807.to_ld
 => "৭৮৬.৯৮০৭" 
 
I18n.locale = :ar <br /> 
67890.to_ld <br /> 
=> ٦٧٨٩٠ <br />
Time.now.strftime("%d %B, %Y %H:%M").to_ld <br /> 
=> ٢٣ October, ٢٠١٣


To use this gem, Include it into your Gemfile:
<pre>
  <code>
   gem "localize_multi_digit", "~> 4.0.1"
  </code>
</pre>

OR
<pre>
  <code>
   gem "localize_multi_digit", "~> 4.0.1", :git => "git@github.com:barek2k2/localize_multi_digit.git"
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

The above command will create 1 initializer and 1 sample digit localization file like this
<pre>
  <code>
      create  config/initializers/localize_multi_digit.rb
      create  config/locales/localized_digits.yml
</code>
</pre>
You can add your localized digits as per localized_digits.yml file

Then Restrat your application and you are Done!

# How to use to_ld method for digit localizations
You can call to_ld method from any controller,view,helper,model
<pre>
  <code>
    I18n.locale = :ar
    123.to_ld
    "Hola234ciao760".to_ld
    450.78.to_ld
  </code>
</pre>

<pre>
  <code>
    I18n.locale = :bn
    123.to_ld
    "Hola234ciao760".to_ld
    450.78.to_ld
  </code>
</pre>







