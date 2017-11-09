#!/usr/bin/python
# -*- coding: utf-8 -*-

#http://www.cplusplus.com/reference/cstdio/printf/?kw=printf
a = 65; print type(a)
print "Mainīgā a vērtiba kā dec skaitlis: %d"%(a)
print "Mainīgā a vērtiba kā hex skaitlis: %x"%(a)
print "Mainīgā a vērtiba kā oct skaitlis: %o"%(a)
print "Mainīgā a vērtiba ir kā simbols: %c"%(a)

a = 'A'; print type(a) 
print "Mainīgā a vērtiba kā dec skaitlis: %d"%(ord(a))
print "Mainīgā a vērtiba kā hex skaitlis: %x"%(ord(a))
print "Mainīgā a vērtiba kā oct skaitlis: %o"%(ord(a))
print "Mainīgā a vērtiba ir kā simbols: %c"%(a)

a = '/n'
print type(a)
print "Mainīgā a vērtiba kā dec skaitlis: %d"%(ord(a))
print "Mainīgā a vērtiba kā hex skaitlis: %x"%(ord(a))
print "Mainīgā a vērtiba kā oct skaitlis: %o"%(ord(a))
print "Mainīgā a vērtiba ir kā simbols: %c"%(a)

a = 8.5
print type(a)
print "Mainīgā a vērtiba kā dec skaitlis: %d"%(a)
print "Mainīgā a vērtiba kā hex skaitlis: %x"%(a)
print "Mainīgā a vērtiba kā oct skaitlis: %o"%(a)
#print "Mainīgā a vērtiba ir kā simbols: %c"%(a)
print "Mainīga a vērtība ka reāls skaitlis: %10.3f"%(a)
