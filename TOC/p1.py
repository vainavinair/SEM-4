dfa={
    "A":{
    "0":"A",
    "1":"B"
    },
    "B":{
    "0":"C",
    "1":"B"
    },
    "C":{
    "0":"C",
    "1":"D"
    },
    "D":{
    "0":"C",
    "1":"B",
    },

}

initalState="A"
finalSate="D"

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

