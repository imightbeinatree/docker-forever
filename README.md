# Docker Forever

If your idea of forever is 10 minutes.  This Docker container runs a ruby script which sleeps for 10 minutes and then returns a string of a JSON object like this:

`{"value": "true"}`

## To Build This Image

from inside the repository root folder

    docker build -t cloudspace/forever ./

## To Run This Image

this will run this docker image as a one shot container, it will output the url with utm parameters removed and then exit and remove itself.

    docker run --rm cloudspace/forever