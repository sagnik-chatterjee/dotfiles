#!/bin/bash

## script to setup a quick ubuntu setup  with my configs

## first update system 
sudo apt-get update
sudo apt-get upgrade

## install git
sudo apt-get install -y git

# install GCC 
sudo apt-get install -y build-essential

##install python3 and pip3

sudo apt-get install -y python3.8  
sudo apt-get install -y python3-pip
sudo apt-get install -y build-essential libssl-dev libffi-dev python3-dev

#install virtualenv
sudo apt install -y python3-venv

#install jupyternotebook
pip3 install notebook

## other misc python3 packages that need to be installed with pip3

# install Latex
sudo apt-get install -y texlive-full

#install java11
sudo apt-get install -y openjdk-11-jdk


#install emacs and configure
#todo




#install golang
if [[ -z "$GOPATH" ]];then
    echo "Golang is not installed , would you like to install it ?"
    PS3="Please select option :- "
    choices=("yes" "no")
    select choice in "${choices[@]}";do
	case $choice in
	    yes)
		echo "Installing Golang"
		wget https://dl.google.com/go/go1.16.2.linux-amd64.tar.gz
		echo "Remvoing previous Golang install etc."
		rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.2.linux-amd64.tar.gz
		echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile
		source ~/.bash_profile
		echo "Done !!! Installed Golang."
		echo $go version 
		sleep 1
		break
		;;    
	    no)
		echo "Aborting installation , bye !!!"
		exit 1
		;;
	 esac
    done 
fi

#install elixir 
echo "Install Elixir ?"
PS3="Please select an option :- "
choices=("yes" "no")
select choices in "${choices[@]}";do
    case $choice in
	yes)
	    wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
	    sudo apt-get update
	    sudo apt-get install -y esl-erlang
	    sudo apt-get install -y elixir
	    ;;
	no)
	    echo "Aborting Installation , bye !!"
	    exit 1 
	    ;;
    esac
done 

#install alacritty and configure
#todo

#install fonts and configure
#todo

#intall vscode and configure
#todo



echo -e "Done Installation !!"

ls -la

echo "Installed packages are: \n"
(zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
  egrep '^(Start-Date:|Commandline:)' |
  grep -v aptdaemon |
  egrep '^Commandline:'

