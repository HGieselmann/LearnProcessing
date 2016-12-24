# This is Sketch 161220_3_2_python
def setup():
    size(640, 360)
def draw():
    background(50,50,50)
    strokeWeight(5)
    stroke(255,255,255)
    fill(0)
    if mousePressed:
        rect(mouseX+(mouseY), 180, 20, 20)
    else:
        rect(mouseX, 180, 20, 20)