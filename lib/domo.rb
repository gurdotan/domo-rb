require "domo/version"

module Domo

  GENERIC_TOP_LEVEL_DOMAINS = %W{ aero asia biz com coop edu gov info int jobs mil mobi museum name net org pro tel travel xxx }
  GEO_TOP_LEVEL_DOMAINS     = %W{ ac ad ae af ag ai al am an ao aq ar as at au aw ax az ba bb bd be bf bg bh bi bj bm bn bo br bs bt bv bw by bz ca cc cd cf cg ch ci ck cl cm cn co cr cs cu cv cx cy cz de dj dk dm do dz ec ee eg er es et eu fi fj fk fm fo fr ga gb gd ge gf gg gh gi gl gm gn gp gq gr gs gt gu gw gy hk hm hn hr ht hu id ie il im in io iq ir is it je jm jo jp ke kg kh ki km kn kp kr kw ky kz la lb lc li lk lr ls lt lu lv ly ma mc md me mg mh mk ml mm mn mo mp mq mr ms mt mu mv mw mx my mz na nc ne nf ng ni nl no np nr nu nz om pa pe pf pg ph pk pl pm pn pr ps pt pw py qa re ro rs ru rw sa sb sc sd se sg sh si sj sk sl sm sn so sr st su sv sy sz tc td tf tg th tj tk tl tm tn to tp tr tt tv tw tz ua ug uk us uy uz va vc ve vg vi vn vu wf ws ye yt za zm zw }
  GEO_SPECIFIC_SECOND_LEVEL = %W{ co ac }  # Not used in REGEX since it's included in the geo (co = Colombia, ac = Ascension Island)

  REGEX = /^(#{GENERIC_TOP_LEVEL_DOMAINS.join("|")}|#{GEO_TOP_LEVEL_DOMAINS.join("|")})$/

  # Returns a canonicalized domain for a given domain string
  # Examples:
  #   "www.cnn.com"           => "cnn.com"
  #   "books.ebay.co.uk"      => "ebay.co.uk"
  #   "news.nytimes.com:3000" => "nytimes.com"
  def self.canonicalize(domain)
    parts = domain.split(":")[0].split(".").reverse

    check_further = true
    i = 0
    while check_further
      if parts[i] =~ REGEX
        i += 1
      else
        check_further = false
      end
    end

    return parts[0..i].reverse.join(".")
  end

  def self.canonize(domain)
    $stdout.puts "Domo#canonize deprecated.  Please use Domo#canonicalize instead."
    canonicalize(domain)
  end

  def strip_url(url)
    url[/:\/\/(.[^\/]+)/, 1]
  end


end

include Domo
