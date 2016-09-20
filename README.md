SDLang-D [![Build Status](https://travis-ci.org/Abscissa/SDLang-D.svg)](https://travis-ci.org/Abscissa/SDLang-D)
========

An [SDLang (Simple Declarative Language)](http://sdlang.org/) library for [D](http://dlang.org).

Officially supported compiler versions are shown in [.travis.yml](https://github.com/Abscissa/SDLang-D/blob/master/.travis.yml).

SDL is a data language like JSON, XML or YAML, except it's:
* Less verbose than JSON and XML.
* [Type](http://sdl.ikayzo.org/display/SDL/Language+Guide#LanguageGuide-literals)-aware [[mirror](http://semitwist.com/sdl-mirror/Language+Guide.html#LanguageGuide-literals)].
* Easier to learn and read than YAML.

This is what SDL looks like (some of these examples, and more, are from [the SDL site](http://sdl.ikayzo.org/display/SDL/Language+Guide) [[mirror](http://semitwist.com/sdl-mirror/Language+Guide.html)]):
```
// A couple basic values
first "Joe"
last "Coder"

// Supports values, named attributes, and various data types
numbers 12 53 2 635
names "Sally" "Frank N. Stein"
pets chihuahua="small" dalmation="hyper" mastiff="big"

mixed 34.7f "Tim" somedate=2010/08/14

// Supports child tags
folder "myFiles" color="yellow" protection=on {
    folder "my images" {
        file "myHouse.jpg" color=true date=2005/11/05
        file "myCar.jpg" color=false date=2002/01/05
    }
    folder "my documents" {
        document "resume.pdf"
    }
}
```

Tags are of this form:
```
[tag name] [values] [attributes] [children]
```

Attributes are simply values with names.

Tag and attribute names can optionally include a namespace prefix (ie, ```namespace:name```). All parts are optional, the only exception being that an anonymous (ie, no name) tag must have at least one value.

Also:
* Tags are separated by either newline or semicolon.
* Whitespace and indentation is not significant (other than newlines).
* The line-continuation operator is ```\``` (backslash). This can be used to split a tag across multiple lines.
* Line comments start with either ```#```, ```//``` or ```--```.
* Block comments start with ```/*``` and end with the first occurrence of ```*/``` (ie, they do *not* nest).
* Values always come before the attributes.
* All the data types and syntax details are [described here](http://sdl.ikayzo.org/display/SDL/Language+Guide) [[mirror](http://semitwist.com/sdl-mirror/Language+Guide.html)].
* Note that, unlike C-based languages, opening curly braces must be on the *same* line, not the next line. [Why?](https://github.com/Abscissa/SDLang-D/blob/master/FAQ.md).

Differences from original Java implementation
---------------------------------------------

* License is zlib/libpng, not LGPL. (No source from the Java or Ruby implementations was used or looked at. The libraries were *used* to test compatibility, but the actual source code was not viewed.)
* [API](http://semitwist.com/sdlang-d/sdlang.html) is completely redesigned for D.
* Anonymous tags are named ```""``` (empty string) not ```"content"```.
* Dates with unknown or invalid time zones use a special type indicating "unknown time zone" (```DateTimeFracUnknownZone```) instead of assuming GMT.

Documentation
-------------

* [How to use SDLang-D's DOM mode (Tutorial / API Overview)](https://github.com/Abscissa/SDLang-D/blob/master/HOWTO.md)
* [API Reference](http://semitwist.com/sdlang-d/sdlang.html)
* [Changelog](https://github.com/Abscissa/SDLang-D/blob/master/CHANGELOG.md)
* [Included tools and scripts](https://github.com/Abscissa/SDLang-D/blob/master/TOOLS.md)
* [License](https://github.com/Abscissa/SDLang-D/blob/master/LICENSE.txt) (zlib/libpng)
* [Official SDL Site](http://sdl.ikayzo.org/display/SDL/Home) [[mirror](http://semitwist.com/sdl-mirror/Home.html)]
