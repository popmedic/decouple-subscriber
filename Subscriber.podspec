Pod::Spec.new do |spec|
    spec.name         = 'Subscriber'
    spec.version      = '0.0.1'
    spec.homepage     = 'https://gitlab.spectrumxg.com/Scardina/swift_decoupling_by_protocol_framework'
    spec.authors      = { 'Mani Nomula' => 'c-manikanta.nomula@charter.com' }
    spec.summary      = 'Subscriber code.'
    spec.description  = "decouple the subscriber"
    spec.platform     = :ios, "11.0"
    spec.source       = { :git => 'https://github.com/popmedic/decouple-subscriber.git',
                          :tag => spec.version.to_s }
    spec.dependency   'Protocols'
end
