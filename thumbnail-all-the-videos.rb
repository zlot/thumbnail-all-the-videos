require 'rubygems'
require 'streamio-ffmpeg'


# run bundle init: this will create your Gemfile with source pointing to https://rubygems.org
# run bundle install
# then $ git add Gemfile Gemfile.lock
# The second command adds the Gemfile and Gemfile.lock to your repository. This ensures that other developers on your app, as well as your deployment environment, will all use the same third-party code that you are using now. 

# set location of ffmpeg binary
FFMPEG.ffmpeg_binary = "./ffmpeg"


movie = FFMPEG::Movie.new("a.mp4")

puts movie.duration
puts movie.size
puts movie.width
puts movie.height
puts "movie is valid? #{movie.valid?}"

movie.screenshot("screenshot.jpg", {seek_time:3, resolution: "640x480"}, preserve_aspect_ratio: :width)

puts "output a movie screenshot!"



$FOUND_FILES = false;

Dir.glob('**/*.{mkv,mov,mp4,wmv}') do |video_file|
	 
	puts "processing #{video_file}"

	

	$FOUND_FILES = true
end

if(!$FOUND_FILES) 
	puts "Didn't find any movie files! Are you sure you're looking in the right directory?" 
end