
# docker-compose-laravel
A pretty simplified docker-compose workflow that sets up a LEMP network of containers for local Laravel development


## Prerequisites
- Install wsl2 if on windows https://docs.microsoft.com/en-us/windows/wsl/wsl2-install
- In powershell `Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform`
- Install docker
```
sudo apt install build-essential
sudo apt install git
git config --global core.autocrlf input
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"<Paste>
sudo apt update
sudo apt install docker-ce
sudo service docker start
sudo docker run hello-world
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```

## Quick start guide
```
> wsl.exe
> make start
> make shell
> composer install
```

## Usage

`make start` - starts the server(s)

`make stop` - stops the server

`make shell` - brings up a shell where all tooling is avaliable
  - artisan
  - composer
  - laravel
  - phpunit

### Ports
Open up your browser of choice to [http://localhost](http://localhost) and you should see your Laravel app running as intended. 

Containers created and their ports are as follows:

- **nginx** - `:80`
- **mysql** - `:3306`
- **php** - `:9000`
- **phpmyadmin** - `:8080`
- **adminer** - `:8081`
