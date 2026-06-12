import grupos.*
object coliseo {
    method combatirPorGrupos(grupo1, grupo2) {
        grupo1.combatirCon(grupo2)
    }

    method combatirContraCampeon(unGrupo, unCampeon) {
        unGrupo.miembros().forEach({gladiador => gladiador.pelearCon(unCampeon)})
    }

    method curarGrupo(unGrupo) {
        unGrupo.miembros().forEach({gladiador => gladiador.curar()})
    }

    method curarGladiador(unGladiador) {
        unGladiador.curar()
    }
}