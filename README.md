# kali-anonymous
# MOVED TO ![https://gitlab.com/keeganjk/](https://gitlab.com/keeganjk/) !
[![Donate](https://img.shields.io/badge/donate-%24-green.svg)](https://keeganjk.github.io/donate/)

~~~~
                      _   __      _ _           ___  
                     | | / /     | (_)         / _ \                                                   
                     | |/ /  __ _| |_  ______ / /_\ \_ __   ___  _ __  _   _ _ __ ___   ___  _   _ ___ 
                     |    \ / _` | | | ______ |  _  | '_ \ / _ \| '_ \| | | | '_ ` _ \ / _ \| | | / __|
                     | |\  \ (_| | | |        | | | | | | | (_) | | | | |_| | | | | | | (_) | |_| \__ \
                     \_| \_/\__,_|_|_|        \_| |_/_| |_|\___/|_| |_|\__, |_| |_| |_|\___/ \__,_|___/
                                                                     __/ |                          
                                                                    |___/   
~~~~

<br />

# The <code>anonymous</code> script from ParrotSec and BackBox, perfected to run on Kali Linux Rolling.

### Supported platforms:
> <h5>Kali Linux<sup>*</sup></h5>
> <hr />
> <h6><sup>*</sup>Other Debian-based Linux distros may work, but this was designed for Kali.</h6>

## What is it?
<code>anonymous</code> was a script included in both Parrot Security OS and BackBox Linux which would allow users to change [spoof] their MAC Address, change their hostname, and transparently route traffic through Tor (The Onion Router) to provide anonymity for the user. 

I have edited the code so it will work better with Kali Linux, a great penetration testing- and security- based Linux distro that does <i>not</i> come with <code>anonymous</code>.

## How to use it
Firstly, <code>clone</code> the repository and then <code>cd</code> into it:
~~~~
git clone https://keeganjk/kali-anonymous
cd kali-anonymous
~~~~

In order to install <code>kali-anonymous</code>, run this simple command below when in the <code>kali-anonymous</code> directory. This will automate the install process:
~~~~
chmod +x setup
sudo ./setup
~~~~

[![asciicast](https://asciinema.org/a/2o0tciwy7luwv8oe42d1ymw75.png)](https://asciinema.org/a/2o0tciwy7luwv8oe42d1ymw75)

This will run a script that installs Tor and the other necessary files for <code>anonymous</code> to work.

<hr>

<code>sudo anonymous</code> for basic info.

<code>sudo anonymous start</code> to start <code>anonymous</code>

<code>sudo anonymous stop</code> to stop <code>anonymous</code>

<code>sudo anonymous status</code> for <code>anonymous</code>'s status

<code>sudo anonymous update</code> to update <code>anonymous</code>

[![asciicast](https://asciinema.org/a/1j66olnqqrjc9qtj31014lp92.png)](https://asciinema.org/a/1j66olnqqrjc9qtj31014lp92.png)
