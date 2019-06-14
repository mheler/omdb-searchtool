# ombd-searchtool
A really simple script in Docker to query Rotten Tomato results from The Open Movie Database (OMDb)

# Build instructions
git clone http:
cd omdb-searchtool
docker build . -t omdb-searchtool

# Runtime instructions
docker run -e API_KEY="<YOUR OMDB API KEY>" -e MOVIE="<MOVIE TITLE>" omdb-searchtool

# Example
docker run -e API_KEY="abc1234" -e MOVIE="Salt" omdb-searchtool
