#! /usr/bin/ruby
#
require "socket"
require "date"

ZODIAC_SIGNS = %w[
  aries taurus gemini cancer leo virgo
  libra scorpio sagittarius capricorn aquarius pisces
]

def horoscope(sign)
  today = Date.today.to_s
  shuffled = ZODIAC_SIGNS.shuffle(random: Random.new(today.hash))
  rank = shuffled.index(sign.downcase) + 1

  "【#{sign}の今日の順位】\n第#{rank}位です！\n"
end


s0 = TCPServer.open(80)

loop do
  sock = s0.accept
  Thread.new do
    request_line = sock.gets
    method = request_line.split.first
    sign = nil

    while line=sock.gets
      print line
      sock.puts line
      break if line == "\r\n"
      if line.start_with?("Sign:")
        sign = line.sub("Sign:", "").strip
      end
    end

    if method == "HOROSCOPE"
        # Signがないまたは無効な星座
        if sign.nil? || !ZODIAC_SIGNS.include?(sign.downcase)
          sock.print <<~RESP
            HTTP/1.1 400 Bad Request
            Content-Length: 0

          RESP
        else
          body = horoscope(sign)
          sock.print <<~RESP
            HTTP/1.1 200 OK
            Content-Type: text/plain
            Content-Length: #{body.bytesize}

            #{body}
          RESP
        end
      end
    sock.close
  end
end

s0.close