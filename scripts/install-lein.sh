#!/bin/bash

curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o lein
sudo mv lein /usr/local/bin/
sudo chmod a+x /usr/local/bin/lein
lein
