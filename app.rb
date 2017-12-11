require 'sinatra'

get '/' do
	send_file 'home.html'
end

get '/me' do
	send_file 'me.html'
end

get '/dinner' do
	#점심 추천 로직
	#1. 배열 만들어 메뉴 넣고
	#2. 랜덤으로 하나 뽑아 출력
	menu = ["참치회", "한우꽃등심", "양고기스테이크", "맥도날드"]
	@choice = menu.sample

	@url = {
		"참치회" => 'http://image.chosun.com/sitedata/image/201503/16/2015031602655_3.jpg',
		"한우꽃등심" => 'http://bshop.phinf.naver.net/20160726_80/jojunsa_1469504706406IhjIL_JPEG/%B0%A5%BA%F1%BB%EC.jpg',
		"양고기스테이크" => 'https://i.pinimg.com/originals/a6/ef/f2/a6eff292b6ec9e3a58e15bda15436d24.jpg',
		"맥도날드" => 'http://blogimg.hani.co.kr/editor/uploads/2016/04/01/rain_81536_42077_ed.jpg'
	}

	# "<p>#{choice}</p>
	# <img src=#{url[choice]}>
	# "

	erb :dinner
end