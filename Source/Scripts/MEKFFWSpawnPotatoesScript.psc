Scriptname MEKFFWSpawnPotatoesScript extends ObjectReference

Potion Property FoodPotato Auto

Event OnLoad()
    SpawnPotatoes(10, 200.0)
    RegisterForSingleUpdate(5.0)
EndEvent

Event OnUpdate()
    Disable()
    Delete()
endEvent

Event OnUnload()
EndEvent

Function SpawnPotatoes(int count, float zOffset)
    int index = 0
    While (index < count)
        ObjectReference curPotato = Self.PlaceAtMe(FoodPotato)
        curPotato.MoveTo(Self, 0, 0, zOffset)
        index += 1
    EndWhile
EndFunction