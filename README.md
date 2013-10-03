# Basic Pair Programming VM
This VM fits for the following use case: As developer, I want to quickly (in less than 5 minutes) have a fully working pair programming session, without polluting my dev machine nor compromise my network security.

## Installation
1. First install vagrant: `http://vagrantup.com`
2. you can choose another linux box on `http://www.vagrantbox.es`
3. add the `precise64` box:

        vagrant box add precise64 http://files.vagrantup.com/precise64.box

4. git clone this repo

        git clone git@github.com:romain/ppsession

5. In the folder, you get 3 files `README.md`, `Vagrantfile`, `get_cookbooks.rb`. Now run the `get_cookbooks.rb` script, then launch the VM

        ruby ./get_cookbooks.rb
        vagrantup

## Usage
Everything is installed and provisioned, it's time for your PP session

### Your side
Vagrant has configured a redirection from port 22222 on your dev machine (the _host_) to port 22 on the VM (the _guest_).

Login into your machine in either one of the following methods:

    vagrant ssh
    su - pair

or

    ssh pair@your-ip -p 22222

Then start your tmux session:

    tmux

### Your pair
Your pair can login simply:

    ssh pair@your-ip -p 22222

and attach his terminal to the existing session

    tmux attach

Et voilà 

## Resources

  - tmux cheat sheet: `http://www.dayid.org/os/notes/tm.html`
