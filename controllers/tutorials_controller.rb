require 'dotenv/load'
get '/tutorials/new' do
  erb :'tutorials/new'
end

get '/tutorials/video' do
  search = params['keyword']
  result = HTTParty.get("https://youtube.googleapis.com/youtube/v3/search?part=snippet&q=#{search}&type=video&key=#{ENV['GOOGLE_API_KEY']}")
  # Access the raw data using HTTParty's parsed_response
  all_videos = result.parsed_response['items']
  
  
  erb :'/tutorials/video', locals: {
    all_videos: all_videos
  }
end