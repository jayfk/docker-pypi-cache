This is an **experimental** approach to create a simple local cache for PyPi packages.

To start the cache server

   docker run -d -v /data/pypi-cache:/data/nginx/cache -p 4000:4000 jayfk/docker-pypi-cache

Use the cache server during build time in your  `Dockerfile` by adding two environment variables.

For docker 1.9 and above:

   ENV PIP_INDEX_URL=http://172.17.0.1:4000/simple/
   ENV PIP_TRUSTED_HOST=172.17.0.1

For docker 1.8 and lower:
 
   ENV PIP_INDEX_URL=http://172.17.42.1:4000/simple/
   ENV PIP_TRUSTED_HOST=172.17.42.1
