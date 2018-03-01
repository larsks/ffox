# Sandbox: A sandbox for Firefox

At $WORK we use [Bluejeans][] for conferencing, and I use [Firefox][]
as my web browser. For the most part it all works well, but screen
sharing under recent (Wayland-based) releases of [Fedora][] has been a bit
of a challenge: the only option is "share you entire screen", and with
a multiple-monitor setup that means the entire virtual screen, not
just a single monitor.

I decided to solve this using [Xephyr][], a virtual X server which
lets you run "X-in-Window".  This makes it possible to run Firefox
inside an isolated display so that "the entire screen", from the point
of view of Firefox and Bluejeans, encompasses pretty much just the
Firefox window.

[bluejeans]: https://www.bluejeans.com/
[xephyr]: https://www.freedesktop.org/wiki/Software/Xephyr/
[firefox]: https://www.mozilla.org/
[fedora]: https://fedoraproject.org/

## Installing

Just copy the `sfox` script somewhere in your `$PATH`.  If you're
lazy, you can install it into `/usr/local/bin`:

    make install

Or into `$HOME/bin`:

    make install bindir=$HOME/bin

## Using sandbox

To start a new isolated Firefox session, run `sfox <name>`, where
`<name>` is an arbitrary label for your virtual environment.  Sandfox
will create a new directory `$HOME/.sfox/home/<name>` that will be
used to store the Firefox configuration and other information
necessary for the Sandfox session.
