def display_gameboard(any_list):
#This function displays the game board at every round for the user to follow the game.
    start_slice = 0
    end_slice = 10
    
    for i in range(1,11):
        if i < 10:
            print("[",i,"]" "  ", any_list[start_slice:end_slice])
        else:
            print("[",i,"]" " ", any_list[start_slice:end_slice])

        start_slice += 10
        end_slice += 10
        
def display_gameboard_rows(any_list):
    
    start_slice = 0
    end_slice = 10
    
    for i in range(0,1):
         print("\n       ", any_list[start_slice:end_slice],"\n")
        

#We first define the game board.
board_rows = ["1", "2","3","4","5","6","7","8","9","10"]

board = {
    "A1": "O","A2": "O","A3": "O","A4": "O","A5": "O","A6": "O","A7": "O","A8": "O","A9": "O","A10": "O",
    "B1": "O","B2": "O","B3": "O","B4": "O","B5": "O","B6": "O","B7": "O","B8": "O","B9": "O","B10": "O",
    "C1": "O","C2": "O","C3": "O","C4": "O","C5": "O","C6": "O","C7": "O","C8": "O","C9": "O","C10": "O",
    "D1": "O","D2": "O","D3": "O","D4": "O","D5": "O","D6": "O","D7": "O","D8": "O","D9": "O","D10": "O",
    "E1": "O","E2": "O","E3": "O","E4": "O","E5": "O","E6": "O","E7": "O","E8": "O","E9": "O","E10": "O",
    "F1": "O","F2": "O","F3": "O","F4": "O","F5": "O","F6": "O","F7": "O","F8": "O","F9": "O","F10": "O",
    "G1": "O","G2": "O","G3": "O","G4": "O","G5": "O","G6": "O","G7": "O","G8": "O","G9": "O","G10": "O",
    "H1": "O","H2": "O","H3": "O","H4": "O","H5": "O","H6": "O","H7": "O","H8": "O","H9": "O","H10": "O",
    "I1": "O","I2": "O","I3": "O","I4": "O","I5": "O","I6": "O","I7": "O","I8": "O","I9": "O","I10": "O",
    "J1": "O","J2": "O","J3": "O","J4": "O","J5": "O","J6": "O","J7": "O","J8": "O","J9": "O","J10": "O",
}

#We add an empty board here so the user does not see where the boats are positioned. 
plain_board = {
    "A1": "O","A2": "O","A3": "O","A4": "O","A5": "O","A6": "O","A7": "O","A8": "O","A9": "O","A10": "O",
    "B1": "O","B2": "O","B3": "O","B4": "O","B5": "O","B6": "O","B7": "O","B8": "O","B9": "O","B10": "O",
    "C1": "O","C2": "O","C3": "O","C4": "O","C5": "O","C6": "O","C7": "O","C8": "O","C9": "O","C10": "O",
    "D1": "O","D2": "O","D3": "O","D4": "O","D5": "O","D6": "O","D7": "O","D8": "O","D9": "O","D10": "O",
    "E1": "O","E2": "O","E3": "O","E4": "O","E5": "O","E6": "O","E7": "O","E8": "O","E9": "O","E10": "O",
    "F1": "O","F2": "O","F3": "O","F4": "O","F5": "O","F6": "O","F7": "O","F8": "O","F9": "O","F10": "O",
    "G1": "O","G2": "O","G3": "O","G4": "O","G5": "O","G6": "O","G7": "O","G8": "O","G9": "O","G10": "O",
    "H1": "O","H2": "O","H3": "O","H4": "O","H5": "O","H6": "O","H7": "O","H8": "O","H9": "O","H10": "O",
    "I1": "O","I2": "O","I3": "O","I4": "O","I5": "O","I6": "O","I7": "O","I8": "O","I9": "O","I10": "O",
    "J1": "O","J2": "O","J3": "O","J4": "O","J5": "O","J6": "O","J7": "O","J8": "O","J9": "O","J10": "O",
}                                      


#The user defines the position of boat 1.
ship_position1 = input("Please select a position to place your first ship: ")
first_boat_placed = False                                #Boat 1 position has not been defined.

while first_boat_placed == False:                        #Until boat 1 has been placed
    if ship_position1 in board:                          #if the indicated position is exists on the game board
        if board[ship_position1] != 'X':                 #if the position is not already occupied by a boat 
            board[ship_position1] = 'X'                  #position = boat 1
            first_boat_placed = True                     #boat 1 is placed => end of boat placement loop.
        else:
            ship_position1 = input("Position seems to be occupied by another boat.\nPlease select a new position for your first ship: ")
    else: 
        ship_position1 = input("The position you provided is not in the game board and therefore invalid.\nPlease select a new valid position for your first ship: ")

# The user defines the position of boat 2.
ship_position2 = input("Please select a position to place your second ship: ")
second_boat_placed = False                               #Boat 2 position has not been defined.

while second_boat_placed == False:                       #Until boat 2 has been placed
    if ship_position2 in board:                          #if the indicated position is exists on the game board
        if board[ship_position2] != 'X':                 #if the position is not already occupied by a boat 
            board[ship_position2] = 'X'                  #position = boat 2
            second_boat_placed = True                    #boat 2 is placed => end of boat placement loop.
        else:
            ship_position2 = input("Position seems to be occupied by another boat.\nPlease select a new position for your second ship: ")
    else: 
        ship_position2 = input("The position you provided is not in the game board and therefore invalid.\nPlease select a new valid position for your second ship: ")
        
        
#The user defines the position of boat 3.   
ship_position3 = input("Please select a position to place your third ship: ")
third_boat_placed = False                               #Boat 3 position has not been defined.
    
while third_boat_placed == False:                        #Until boat 3 has been placed
    if ship_position3 in board:                          #if the indicated position is exists on the game board
        if board[ship_position3] != 'X':                 #if the position is not already occupied by a boat
            board[ship_position3] = 'X'                  #position = boat 3
            third_boat_placed = True                     #boat 3 is placed => end of boat placement loop.
        else:
            ship_position3 = input("Position seems to be occupied by another boat.\nPlease select a new position for your third ship: ")
    else:   
        ship_position3 = input("The position you provided is not in the game board and therefore invalid.\nPlease select a new valid position for your third ship: ")

# The user defines the position of boat 4.
ship_position4 = input("Please enter a position to place your fourth ship: ")
fourth_boat_placed = False                              #Boat 4 position has not been defined.

while fourth_boat_placed == False:                       #Until boat 4 has been placed
    if ship_position4 in board:                          #if the indicated position is exists on the game board
        if board[ship_position4] != 'X':                 #if the position is not already occupied by a boat
            board[ship_position4] = 'X'                  #position = boat 4
            fourth_boat_placed = True                    #boat 4 is placed => end of boat placement loop.
        else:
            ship_position4 = input("Position seems to be occupied by another boat.\nPlease select a new position for your fourth ship: ")
    else:
        ship_position4 = input("The position you provided is not in the game board and therefore invalid.\nPlease select a new valid position for your fourth ship: ")
        
# The user defines the position of boat 5.
ship_position5 = input("Please enter a position to place your fifth ship: ")#input("Please enter a position to place your fifth ship: ")
fifth_boat_placed = False                                #Boat 5 position has not been defined.

while fifth_boat_placed == False:                        #Until boat 5 has been placed
    if ship_position5 in board:                          #if the indicated position is exists on the game board
        if board[ship_position5] != 'X':                 #if the position is not already occupied by a boat
            board[ship_position5] = 'X'                  #position = boat 5
            fifth_boat_placed = True                     #boat 5 is placed => end of boat placement loop.


turn_board_list = list(board.values())
plain_board_list = list(plain_board.values()) 


#print(board)                                                            #The board is printed before round 1 for visualization

#print(turn_board_list)                                                  #The list is printed

win_condition = False                                                     #A condition is created to start the game
shot_coordinates = False
chance_pool = 5

# for chance_pool !=
while win_condition == False:
#    if chance_pool != 0:
    
    #The winning condition loop is launched

    if "X" not in turn_board_list:                                        #The condition for which the game ends
        print("\nYou've WON the game!\nCONGRATULATIONS!")                 #No existing boats on game board = Game Over
        break

    else:
        new_turn_shot = (input("\nPick a position to fire at: "))      #If the game is not over : the user is asked attempt a new hit
        new_turn_shot = new_turn_shot.capitalize()
        if new_turn_shot in board:                                     #the key corresponding to the user's input is accessed 
            shot_coordinates = True
            if board[new_turn_shot] == "X":                            #If the value associated with the key = the presence of a boat 
                board.update({new_turn_shot:"H"})                      #the value is changed to "H" for "HIT"
                plain_board.update({new_turn_shot:"H"})                #"HIT" appears on the empty board for the user to see 
                print("\nIt's a HIT! :D ")
            elif board[new_turn_shot] == "O":                          #If the value associated with the key = an empty spot
                board.update({new_turn_shot:"M"})                      #the value is changed to "M" for "Miss"
                plain_board.update({new_turn_shot:"M"})                #"MISS" appears on the empty board for the user to see
                print("\nIt's a MISS! T_T")
            else:
                print("\nWATCH OUT! You've already tried this position !!!") #If the attempted hit is neither shows neither an empty spot or the presence of a boat, it means it has been attempted before

        else: 
            print("The position you provided is not in the game board and therefore invalid.\nPlease select a new valid position to fire at.")    



    turn_board_list = list(board.values())                          #A board update is printed after the round with the player's progress
    plain_board_list = list(plain_board.values())                   #An empty board is printed after the round

    display_gameboard_rows(board_rows)

    #display_gameboard(turn_board_list)
    display_gameboard(plain_board_list)             #The empty board is printed à partir from the display_gameboard function


