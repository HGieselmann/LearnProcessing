def setup():
    size(1280,720)
    background(50)
    invertX = mouseY
    invertY = mouseX
    
def draw():
    rect(mouseX, mouseY, 1,1)
    rect(mouseY,mouseX,1,1)
    rect(width-mouseY,height-mouseX,1,1)
    rect(width-mouseX, height-mouseY, 1,1)

    #rect(height/(mouseX+1), width/(mouseY+1), 20, 20)
    
    #rect(width/mouseX,height/mouseY,20,20)