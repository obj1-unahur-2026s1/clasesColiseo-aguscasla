class ArmaConFilo{
    const longitud
    const filo

    method valorDeAtaque() = filo * longitud
}

class ArmaContundente {
    const peso

    method valorDeAtaque() = peso 
}

object casco {
    method defensa(luchador) = 10
}

object escudo {
    method defensa(luchador) = 5 + 0.1 / luchador.destreza()
}