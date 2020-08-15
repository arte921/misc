from django.http import HttpResponse
from django.template import loader
import json

import random
import sys
import os

class Board():
    def __init__(self):
        self.boxes = [" "]*10 #make empty spaces for the board

    def drawBoard(self):
        print (" %s | %s | %s"%(self.boxes[0],self.boxes[1],self.boxes[2])) # %s so it can be replaced with X or O
        print("-----------")
        print (" %s | %s | %s"%(self.boxes[3],self.boxes[4],self.boxes[5]))
        print("-----------")
        print (" %s | %s | %s"%(self.boxes[6],self.boxes[7],self.boxes[8]))


    def full_board(self): #checking if the board is full
        b = True
        for i in range(1,9):
            if self.boxes[i] == " ":
                b = False
                break
        return b

class Game():
    def isWinner(self, le):
        self.le = le
        pass

    def user_move(self):
        pass

class Tictactoe(Game):
    def __init__(self, board):
        self.board = board

    def comp_move(self, compl): #AI
        if self.board.boxes[4]==" ": #fill middle box
            return 4
        else:
            if not self.board.full_board():
                i = random.randint(0,8) #fill a random box
                if self.board.boxes[i]==" ":
                    return i
                else:
                   return self.comp_move(compl)

    def is_winner(self,player):
        self.player = player
        for winlist in [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]:
            result = True
            for position in winlist:
                if self.board.boxes[position] != player:
                    result = False
            if result == True:
                return True

# Create your views here.
def index(request):
    template = loader.get_template('board.html')
    context = {}
    return HttpResponse(template.render(context, request))

def board(request):
    template = loader.get_template('board.html')
    context = {"n" : range(0, 10),
               "board" : ["X","X", "0", "0","X","0", "0", "X","0"]}
    return HttpResponse(template.render(context, request))

def computerResponse(request):  
    board = Board()
    ttt = Tictactoe(board)

    if not board.full_board():
            return HttpResponse(json.dumps({'comp_move': ttt.comp_move('O')}))