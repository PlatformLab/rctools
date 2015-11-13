# rctools
This repo contains internal cluster management tools used in the Stanford RAMCloud development cluster.

## Installation
1. Run as root (probably)
2. Clone this repo to somewhere sane like ```/usr/local/rctools```.
3. Run the ```install.sh``` script in the top-level ```rctools``` directory providing the desired target bin directory:
   ```rctools/install.sh /usr/local/bin```

## Dependancies
- rcres requires the python ```lockfile``` package which can be installed using ```pip```