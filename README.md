# ombd-searchtool
A really simple bash script in Docker to query Rotten Tomato results from The Open Movie Database (OMDb).

# Build instructions
git clone https://github.com/mheler/omdb-searchtool.git
docker build omdb-searchtool -t omdb-searchtool

# Runtime instructions
docker run -e API_KEY="OMDB API KEY" -e MOVIE="MOVIE TITLE" omdb-searchtool

# Runetime example
docker run -e API_KEY="abc1234" -e MOVIE="Salt" omdb-searchtool
