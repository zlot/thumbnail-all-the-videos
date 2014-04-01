#Thumbnail ALL the videos!

Forked from (Stillmaker, by jlarusso)[https://github.com/jlarusso/Stillmaker]

Uses [ffmpeg](http://www.ffmpeg.org/) and [streamio-ffmpeg](https://github.com/streamio/streamio-ffmpeg) to take a bunch of screenshots of a video file.

### Intention
A GUI that allows the selection of a folder, in which this program will recursively check the directory and all its subdirectories for files with common movie-file extensions.

For each that it finds, a single thumbnail will be generated with the name `#{videoname_thumb.jpg}`. 

This is to make life a bit easier at [The Monkey's Cobbler](http://www.themonkeyscobbler.com.au)


### Setup
None at the moment. Still in development. Using Bundle, a Gemfile, and an included ffmpeg binary.

### How to use
1. `ruby thumbnail-all-the-videos.rb`
2. ???
3. profit

### Thanks
To jlarusso for getting the ball rolling with his [Stillmaker](https://github.com/jlarusso/Stillmaker) project :)