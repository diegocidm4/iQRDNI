# iQRDNI

  Librería basada en Swift para la lectura y validación de los distintos tipos de códigos QR generados por la app MiDNI. DNI EDAD, DNI SIMPLE y DNI COMPLETO.
---

[Requisitos](#requisitos) | [Funcionalidades](#funcionalidades) | [Instalación](#instalacion) | [Autor](#autor) | [Licencia](#licencia)

## Requisitos
Esta librería está disponible para en ios 14 o posterior.
Esta librería permite la validación y el parseo de un código QR generado desde la app MiDNI.

Esta librería tiene las siguientes dependencias:
- CryptoSwift (https://github.com/krzyzanowskim/CryptoSwift.git)

## Funcionalidades
Esta librería ofrece las siguientes funcionalidades:

#### Configuración de la librería para indicar tanto la licencia que permite el uso de la librería, como la ruta de los certificados oficiales de la policía con los que validar la firma del QR.
```Swift
        public static func configure(apiKey: String, certConfig: [String: String]? = nil) -> EstadoLicencia
        
```


#### Validación y parseo del código QR leído desde la cámara    
```Swift
        public static func validaMiDNIQR(qrRawData: Data) -> MiDNIData?
```


## Instalación

### Swift Package Manager

iQRDNI.swift es compatible con Swift Package Manager v4 (Swift 4 and above). Simplemente añádela a las dependencias en tu `Package.swift`.

```Swift
dependencies: [
    .package(url: "https://github.com/diegocidm4/iQRDNI.git", from: "1.0.0")
]
```

### CocoaPods

iDNIe.swift se distribuye a través de [CocoaPods](http://cocoapods.org). Simplemente añade esta línea en tu fichero Podfile:

```ruby
use_frameworks!
pod 'iQRDNI'
```

Después de esto, ejecuta el siguiente comando:

```bash
pod install
```


Después de cualquiera de las dos opcines anteriores, podrás importarla en tus ficheros `.swift`.

```Swift
import iQRDNI
```

## Autor

iDNIe ha sido creada y mantenida por [Diego Cid]

Puede seguirme en Twitter en [@diegocidm4](http://twitter.com/diegocidm4).

## Licencia
La librería se distribuye con una licencia anual asociada a un app bundle.
