# Preliminary Plan
``` mermaid
classDiagram

class Character {
    -hp
    -atk
    -dfn
}

class BattleScene {
    -characters
    +get_characters_states()
}

BattleScene --> Character
```