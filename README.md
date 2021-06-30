# addtimes

A small utility to sum up times inputed from stdin.

I'm using this for time tracking since the app I'm using
sends me a weekly email of the times for jobs done, and I
need a monthly summary. Since the first 10 seconds of searching
through my distro packages didn't give me any util that
is related to "add" and "time", I wrote this very simple
cli app. In case you need it, feel free to use it, modify
it or whatever else you want.

## Installation

This app is using [Stack](https://haskellstack.org/).

Stack can be installed on most operating systems, and no
external deps are needed for *addtimes*.

To install simply run

> $ stack install

and that will install *addtimes* to default location
(~/.local/bin on GNU/Linux, check local-bin-path in the
output of ``stack path``). If that location is not in
your $PATH, either copy the file elsewhere or add the
location to your $PATH.