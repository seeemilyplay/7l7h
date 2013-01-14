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

There is a directory of code for each language. These have up to 3 subdirectories that are named as follows:

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

Probably already installed, but if not:

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

Install XCode from the App Store.  This includes the 'gcc' compiler we will be using.

__Java__

With Mac OS 10.6 and lower, Java should come pre-installed.

For Mac OS 10.7, you will need to update your OS X installation if it is less than 10.7.3, then follow the instructions at:
http://www.java.com/en/download/help/mac_install.xml
The file it talks about that you need to install is quite well hidden, and it can be found via the 'Downloads' link at the top of that page.

__Go__

Follow the very simple installation instructions at:
http://golang.org/doc/install#osx

__Ruby__

Comes as standard with Mac OS.

__Clojure__

Make sure you have Java installed, as described above.
Then follow the installation instructions to download the Clojure JAR file at:
http://clojure.org/getting_started

__Haskell__

Follow the installation instructions to install the Haskell Platform at:
http://www.haskell.org/platform/mac.html

__Erlang__

First download the most recent release from [here](http://www.erlang.org/download.html).
Now un-tar the download, and install with make by running the following:

    $ tar -xzf otp_src_R13B02-1.tar.gz
    $ cd otp_src_R13B02-1
    $ ./configure
    $ make
    $ sudo make install

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

To verify that everything is installed check that you can run the following.

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
