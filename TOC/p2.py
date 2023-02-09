dfa={
    "A":{
    "0":"B",
    "1":"A"
    },
    "B":{
    "0":"B",
    "1":"A"
    },

}

initalState="A"
finalSate="B"

def checkString(data):
    currentState=initalState
    for s in data:
        currentState=dfa[currentState][s]
    if currentState==finalSate: 
        return True
    return False

data = input("Enter a string: ")
x= checkString(data)
print("Accepted" if x else "Not accepted")

