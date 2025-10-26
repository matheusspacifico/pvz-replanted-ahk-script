global originalX := 1920
global originalY := 1080
global targetWindow := "ahk_exe Replanted.exe"
global speedUpX   := 1740
global speedUpY   := 986
global card1_X   := 211
global card_Y    := 86
global card_Step := 108

~Z::ClickInGame(speedUpX, speedUpY, 100, 50)

~1::ClickInGame(card1_X, card_Y)
~2::ClickInGame(card1_X + (card_Step * 1), card_Y)
~3::ClickInGame(card1_X + (card_Step * 2), card_Y)
~4::ClickInGame(card1_X + (card_Step * 3), card_Y)
~Q::ClickInGame(card1_X + (card_Step * 4), card_Y)
~W::ClickInGame(card1_X + (card_Step * 5), card_Y)
~E::ClickInGame(card1_X + (card_Step * 6), card_Y)
~R::ClickInGame(card1_X + (card_Step * 7), card_Y)
~A::ClickInGame(card1_X + (card_Step * 8), card_Y)
~S::ClickInGame(card1_X + (card_Step * 9), card_Y)

ClickInGame(targetX, targetY, pressDelay := 30, postDelay := 0) {
    global targetWindow
    if WinActive(targetWindow) {
        MouseGetPos(&OrigMouseX, &OrigMouseY)
        WinGetPos(&winX, &winY, &winWidth, &winHeight, targetWindow)
        
        clickX := calculateX(targetX, winWidth, winHeight)
        clickY := calculateY(targetY, winWidth, winHeight)
        
        screenClickX := winX + clickX
        screenClickY := winY + clickY
        
        MouseMove(screenClickX, screenClickY, 0)
        Click("Down")
        Sleep(pressDelay)
        Click("Up")
        Sleep(postDelay)
        
        MouseMove(OrigMouseX, OrigMouseY, 0)
    }
}

calculateX(screenX, windowW, windowH) {
    global originalX, originalY
    scaleFactor := Min(windowW / originalX, windowH / originalY)
    offsetX := (windowW - (originalX * scaleFactor)) / 2
    return (screenX * scaleFactor) + offsetX
}

calculateY(screenY, windowW, windowH) {
    global originalX, originalY
    scaleFactor := Min(windowW / originalX, windowH / originalY)
    offsetY := (windowH - (originalY * scaleFactor)) / 2
    return (screenY * scaleFactor) + offsetY
}