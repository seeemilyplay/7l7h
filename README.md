7 Languages in 7 Hours
======================

This contains code and examples to support the [7 Languages in 7 Hours] (http://generalassemb.ly/education/362/7-languages-in-7-hours/566) course at General Assembly.

Schedule
---------

Meeting at Betahaus on Saturday 19th January.

09:30 Settling In and [Intro](https://docs.google.com/presentation/d/1D4DCf-GlhgG8Be1hcC2Y2RsCS8U8pMpI1Jx-IRqE91g/edit)

10:00 C

11:00 Java

12:00 Go

13:00 Lunch

14:00 Ruby

15:00 Clojure

16:00 Haskell

17:00 Erlang

18:00 Done

Slide links will be posted soon.

Code Guide
----------

There is a directory of code for each language. These have up to 3 subdirectories, that are named as follows:

_example_

Contains example code. We'll be looking at these in detail together.

_task_

For each language you will be doing a task. This directory contains any stub code for the task.

_solution_

This is a possible solution to the set task. Don't look here until after you have tried the task for yourself.

Installation Instructions
-------------------------

Ubuntu
------

It's best to install Java separately, but if you'd like to install the rest at once rather than one at a time:

    $ sudo apt-get install build-essential golang ruby clojure ghc erlang

After installing please go to the bottom of the page and follow the verification instructions.

__C__

    $ sudo apt-get install build-essential

__Java__

You will need a Standard Edition JDK of version 1.6 or later.
Accept the license agreement and [download from Oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html),
or install the open JDK Debian package.

    $ sudo apt-get install openjdk

__Go__

    $ sudo apt-get install golang

__Ruby__

    $ sudo apt-get install ruby

__Clojure__

    $ sudo apt-get install clojure

__Haskell__

    $ sudo apt-get install ghc

__Erlang__

    $ sudo apt-get install erlang

Mac
------

After installing please go to the bottom of the page and follow the verification instructions.

__C__

__Java__

__Go__

__Ruby__

__Clojure__

__Haskell__

__Erlang__

Windows
-------

After installing please go to the bottom of the page and follow the verification instructions.


__C__

__Java__

__Go__

__Ruby__

__Clojure__

__Haskell__

__Erlang__


Verification
------------

To verify that everything is installed, check that you can run the following.

__C__

    $ gcc -v

__Java__

    $ javac -version
    $ java -version

__Go__

    $ go version

__Ruby__

    $ ruby -v

__Clojure__

    $ clojure -h

__Haskell__

    $ ghc --help


__Erlang__

    $ erl

This will enter an interactive mode.  Exit by typing:

    1> halt().
