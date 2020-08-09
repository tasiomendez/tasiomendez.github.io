# Personal Site

This personal site is 100% built on top of Open Source software, and is Open Source itself.
It can be accessed through [tasiomendez.github.io](https://tasiomendez.github.io)

The template used is based on Jekyll. On the folder `assets` we can find all the CSS and JS files
from the template.
These files are minimized in order to be included on web page.

Finally, a Dockerfile is included for development. Once the container is running we can access the
web page through `localhost:4000`.

```shell
docker build -t tasiomendez/github.io:latest .
docker run --name github.io -p 4000:4000 -v $(pwd):/usr/src/app tasiomendez/github.io:latest
```
