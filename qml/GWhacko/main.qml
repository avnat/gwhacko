import QtQuick 1.1

SimpleViewManager
{
    id: myViewManager
    width:640
    height:360

    Homescreen
    {
        id: homescreen
    }

    Gamepad{
        id: gamepad
    }

    Instructions{
        id: instructionscreen
    }

    Aboutscreen{
        id: aboutscreen
    }

}

