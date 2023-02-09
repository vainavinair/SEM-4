dfa={
    "A":{
    "0":"A",
    "1":"B",
    },
    "B":{
    "0":"A",
    "1":"C",
    },
    "C":{
    "0":"A",
    "1":"D",
    },
    "D":{
    "0":"F",
    "1":"E",
    },
    "E":{
    "0":"A",
    "1":"E",
    },
    "F":{
    "0":"F",
    "1":"F",
    },
}

initial_state = "A"
final_states = ["D", "F"]

def three_consecutive_one(data):
    current_state = initial_state  # By defaul initial state

    for s in data:
        # Transition to next state
        current_state = dfa[current_state][s]

    if current_state in final_states:
        return True

    return False

user_input = input("Enter the string : ")

X = three_consecutive_one(user_input)
print("Accepted" if X else "Not accepted")
