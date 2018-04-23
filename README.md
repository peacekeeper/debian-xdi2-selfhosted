<a href="http://projectdanube.org/" target="_blank"><img src="http://projectdanube.github.com/xdi2/images/projectdanube_logo.png" align="right"></a>
<img src="http://projectdanube.github.com/xdi2/images/logo64.png"><br>

This is a configuration profile of the [XDI2](http://github.com/projectdanube/xdi2) server for
self-hosting a single XDI graph. The configuration should be considered a template and may be
adjusted according to one's needs.

### Information

* [Configuration](https://github.com/projectdanube/xdi2-selfhosted/wiki/Configuration)
* [Registration and Discovery](https://github.com/projectdanube/xdi2-selfhosted/wiki/Registration-and-Discovery)

### How to build

First, you need to build the main [XDI2](http://github.com/projectdanube/xdi2) project.

After that, just run

    mvn clean install jetty:run

Then use an XDI client to send XDI messages to

    http://localhost:9300/graph

Or access the server's status page at

	http://localhost:9300/ (disabled in applicationContext.xml by default)

### Community

Google Group: http://groups.google.com/group/xdi2

IRC: irc://irc.freenode.net:6667/xdi
