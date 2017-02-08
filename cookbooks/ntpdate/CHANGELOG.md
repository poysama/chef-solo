ntpdate CHANGELOG
=================


1.2.1
-----
- [golman] - foodcritic compliance made.

1.2.0
-----
- [golman] - *node[:ntpdate][:enable]* control directive added. By default is `true`.  

1.1.0
-----
- [golman] - NTP package leads to race condition on port. Will be removed by deafult, unless *node[:ntpdate][:ntp\_pkg\_remove]* directive is set to *false*

1.0.1
-----
- [golman] - Cronjob stdout to /dev/null

1.0.0
-----
- [golman] - Ready for the first release.

0.1.0
-----
- [golman] - Initial release of ntpdate

- - -
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
