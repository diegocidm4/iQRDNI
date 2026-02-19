Pod::Spec.new do |spec|

  spec.name         = "iQRDNI"
  spec.version      = "1.0.1"
  spec.summary      = "Librería basada en Swift para la lectura del código QR generado por la app MiDNI"

  spec.description  = <<-DESC
  Librería basada en Swift para la lectura y validación de los distintos tipos de códigos QR generados por la app MiDNI. DNI EDAD, DNI SIMPLE y DNI COMPLETO.
                   DESC

  spec.homepage     = "https://github.com/diegocidm4/iQRDNI"
  spec.license      = { :type => "Comercial", :file => "LICENSE" }
  spec.author       = { "Diego Cid Merino" => "diegocidm4@hotmail.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "5.0"

 spec.dependency "CryptoSwift", '1.6.0'
 
  spec.source        = { :git => "https://github.com/diegocidm4/iQRDNI.git", :tag => "#{spec.version}" }
  spec.default_subspec     = 'Core'

  spec.subspec 'Core' do |core|
    core.preserve_paths      = 'Sources/iQRDNI.xcframework'
    core.vendored_frameworks = 'Sources/iQRDNI.xcframework'
    core.ios.deployment_target = '12.0'
  end

  spec.pod_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '12.0'
  }

  spec.user_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '12.0'
  }
  
end
