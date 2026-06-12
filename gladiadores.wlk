import grupos.*
class Gladiador{
    var vida = 100

    method vida() = vida

    method atacar(unGladiador) {
        unGladiador.perderVida(self.poderDeAtaque() - unGladiador.defensa())
    }

    method curar() {
        vida = 100
    }

    method perderVida(cantidad) {
        vida -= cantidad
    }

    method pelearCon(unGladiador) {
        self.atacar(unGladiador)
        unGladiador.atacar(unGladiador)
    }

    method poderDeAtaque()
    method defensa()
    method fuerza()
    method crearGrupoCon(unGladiador) 
}

class Mirmillon inherits Gladiador{
    var arma
    var armadura
    var fuerza

    override method fuerza() = fuerza
    method cambiarFuerza(nuevaFuerza) {
        fuerza = nuevaFuerza
    }

    method destreza() = 15 
    method cambiarArmadura(nuevaArmadura) {
        armadura = nuevaArmadura
    }

    method cambiarArma(nuevaArma) {
        arma = nuevaArma
    }

    override method defensa() = armadura.defensa(self) + self.destreza()

    override method poderDeAtaque() = fuerza + arma.valorDeAtaque()

    override method crearGrupoCon(unGladiador){
        return new Grupo(nombre = "Mirmillolandia", miembros = #{self, unGladiador})
    }
}

class Dimachaeru inherits Gladiador {
    var destreza

    const armas = []
    override method fuerza() = 10

    override method defensa() = destreza / 2

    override method poderDeAtaque() = self.fuerza() + armas.sum({arma => arma.valorDeAtaque()})

    override method crearGrupoCon(unGladiador){
        return new Grupo(
            miembros = #{unGladiador, self}, 
            nombre = "D-" + (self.poderDeAtaque() + unGladiador.poderDeAtaque()).toString()
        )
    }
}