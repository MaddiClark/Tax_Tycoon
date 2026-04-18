#Strawberry class, for clicking purposes
class strawberry:
    def __init__(self):
        self.amount = 0
    
    def sell(self, bank):
        sellAmt = int(input()) #Add ui eventually
        if (self.amount > 0) & (sellAmt > 0):
            self.amount = self.amount - sellAmt
        else:
            pass #Add error here