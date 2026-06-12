class Grupo{
    const nombre
    var cantidadPeleas = 0
    const miembros = #{}

    method agregarUnGladiador(unGladiador) {
        miembros.add(unGladiador)
    } 

    method quitarUnGladiador(unGladiador) {
        miembros.remove(unGladiador)
    } 

    method combatirCon(otroGrupo) {
        self.campeon().pelearCon(otroGrupo.camepeon())
        self.campeon().pelearCon(otroGrupo.camepeon())
        self.campeon().pelearCon(otroGrupo.camepeon())
        cantidadPeleas += 1
    }

    method puedenCombatir() = miembros.filter({gladiador => gladiador.vida() > 0})
    method campeon() = self.puedenCombatir().max({gladiador => gladiador.poderDeAtaque()})
}