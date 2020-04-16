# Reference cycle

- Um ou mais objetos estão referindo entre si.

# ARC

- Automatic Reference Counting (ou Contagem Automática de Referência)
- Gerenciador de memória do Swift
- Herdado do ObjC
- Apenas para Classes por serem Reference Types
- Não previne Memory Leak

# Funcionamento do ARC

- init()
- deinit()

# Tipos de referência

- Strong
- Weak
- Unowned

# Strong

- Referência padrão
- Protege o objeto de ser desalocado
- Incrementado por instância
- Mais difícil de ser removido
- Seguro em estrutura linear

# Weak

- Não protege o objeto de ser desalocado
- Instância não é incrementada
- Opcionais não constantes
- Comuns em propriedades de Delegate e Subviews/Controls

# Unowned

- Semelhante ao weak
- Não é opcional
- Também comum em closures
- Melhor desempenho

# Exemplos

### Exemplo de Strong

```swift
class Device {
    var name: String

    init(name: String) {
        self.name = name
        print("Device named \(name) allocated")
    }

    deinit {
        print("Device named \(name) deallocated")
    }
}

do {
    let iphone = Device(name: "iPhone")
}
```

```swift
Device named iPhone allocated
Device named iPhone deallocated
```
### Exemplo de Strong com child

```swift
class Device {
    var name: String
    var owner: Owner?

    init(name: String) {
        self.name = name
        print("Device named \(name) allocated")
    }
    deinit {
        print("Device named \(name) deallocated")
    }
}

class Owner {
    var name: String
    var device: Device?

    init(name: String) {
        self.name = name
        print("Owner \(name) allocated")
    }

    deinit {
        print("Owner \(name) deallocated")
    }
}

do {
    let iphone = Device(name: "iPhone")
    let felipe = Owner(name: "Felipe")
    iphone.owner = felipe
    felipe.device = iphone
}
````

```swift
Device named iPhone allocated
Owner Felipe allocated
```

### Exemplo de weak

```swift
class Device {
    var name: String
    weak var owner: Owner?

    init(name: String) {
        self.name = name
        print("Device named \(name) allocated")
    }
    deinit {
        print("Device named \(name) deallocated")
    }
}

class Owner {
    var name: String
    weak var device: Device?

    init(name: String) {
        self.name = name
        print("Owner \(name) allocated")
    }

    deinit {
        print("Owner \(name) deallocated")
    }
}

do {
    let iphone = Device(name: "iPhone")
    let felipe = Owner(name: "Felipe")
    iphone.owner = felipe
    felipe.device = iphone
}
```

```swift
Device named iPhone allocated
Owner Felipe allocated
Owner Felipe deallocated
Device named iPhone deallocated
```

#### Exemplo de unowned

```swift
class Device {
    var name: String
    unowned var owner: Owner

    init(model: String, owner: Owner) {
        self.name = model
        self.owner = owner
        print("Device named \(name) allocated")
    }

    deinit {
        print("Device named \(name) deallocated")
    }
}

class Owner {
    var name: String
    var device: Device?

    init(name: String) {
        self.name = name
        print("Owner \(name) allocated")
    }

    deinit {
        print("Owner \(name) deallocated")
    }
}

var felipe: Owner?

felipe = Owner(name: "Felipe")
felipe!.device = Device(model: "iPhone", owner: felipe!)

felipe = nil
```

```swift
Owner Felipe allocated
Device named iPhone allocated
Owner Felipe deallocated
Device named iPhone deallocated
```