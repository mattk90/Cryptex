Pod::Spec.new do |s|
  s.name         = "Cryptex"
  s.version      = "0.0.7"
  s.summary      = "Cryptocurrency Exchange API Clients in Swift."
  s.description  = <<-DESC
                   Multiple crypto currency exchange api clients in swift.
                   This version has been modified by Mathias Klenk.
                   DESC
  s.homepage     = "https://github.com/mattk90/Cryptex"
  s.license      = "MIT"
  s.author       = "Sathyakumar Rajaraman / Mathias Klenk"
  s.source       = { :git => "https://github.com/mattk90/Cryptex", :tag => "#{s.version}" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.requires_arc = true
  s.dependency "CryptoSwift"
  s.default_subspec = "All"
  s.subspec "All" do |ss|
    ss.dependency 'Cryptex/CoinMarketCap'
    ss.dependency 'Cryptex/Gemini'
    ss.dependency 'Cryptex/GDAX'
    ss.dependency 'Cryptex/Poloniex'
    ss.dependency 'Cryptex/Binance'
    ss.dependency 'Cryptex/Koinex'
    ss.dependency 'Cryptex/Cryptopia'
    ss.dependency 'Cryptex/BitGrail'
    ss.dependency 'Cryptex/CoinExchange'
    ss.dependency 'Cryptex/Bitfinex'
    ss.dependency 'Cryptex/Kraken'
  end
  s.subspec "Common" do |ss|
    ss.source_files  = "Common/**/*.swift"
  end
  s.subspec "CoinMarketCap" do |ss|
    ss.source_files  = "CoinMarketCap/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Gemini" do |ss|
    ss.source_files  = "Gemini/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "GDAX" do |ss|
    ss.source_files  = "GDAX/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Poloniex" do |ss|
    ss.source_files  = "Poloniex/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Binance" do |ss|
    ss.source_files  = "Binance/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Koinex" do |ss|
    ss.source_files  = "Koinex/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Cryptopia" do |ss|
    ss.source_files  = "Cryptopia/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "BitGrail" do |ss|
    ss.source_files  = "BitGrail/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "CoinExchange" do |ss|
    ss.source_files  = "CoinExchange/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Bitfinex" do |ss|
    ss.source_files  = "Bitfinex/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
  s.subspec "Kraken" do |ss|
    ss.source_files  = "Kraken/**/*.swift"
    ss.dependency 'Cryptex/Common'
  end
end
