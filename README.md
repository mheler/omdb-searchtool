# omdb-searchtool
A really simple bash script that runs in Docker to query Rotten Tomato results from The Open Movie Database (OMDb).

# Build instructions
git clone https://github.com/mheler/omdb-searchtool.git; docker build omdb-searchtool -t omdb-searchtool

# Runtime instructions
docker run -e API_KEY="OMDB API KEY" omdb-searchtool "Movie Name"

# Runtime example
docker run -e API_KEY="abc1234" omdb-searchtool "Men in Black"
