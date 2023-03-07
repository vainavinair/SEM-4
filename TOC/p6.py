# Design a program for creating a machine which accepts string having equal no. of 1’s and 0’s.

states = {
    "A": {
        "0": "B",
        "1": "B"
    },
    "B": {
        "0": "A",
        "1": "A"
    }
}

initial_state = "A"
final_state = {"A"}


def check_string(string:str):
    curr_state = initial_state
    count_0 = 0
    count_1 = 0

    for s in string:
        if s == "0":
            count_0 += 1
        if s == "1":
            count_1 += 1 
        curr_state = states[curr_state][s]
        
    if(curr_state in final_state and count_0 == count_1):
        return True
    return False




if __name__ == "__main__":
    X = check_string(input("Enter the string : "))
    print("Accepted" if X else "Not accepted")
