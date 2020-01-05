import random

suits = ("♥", "♦", "♠", "♣")
ranks = ('2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A')
values = {'2':2, '3':3, '4':4, '5':5, '6':6, '7':7, '8':8, '9':9, '10':10, 'J':10,
         'Q':10, 'K':10, 'A':11}

playing = True

class Card():
    def __init__(self, suit, rank):
        self.suit = suit
        self.rank = rank

    def __str__(self):
        return self.rank + self.suit

class Deck():
    def __init__(self):
        self.deck = []

        for suit in suits:
            for rank in ranks:

                self.deck.append(Card(suit,rank))

    def __str__(self):
        deck_comp = ''
        for card in self.deck:
            deck_comp += '\n ' + card.__str__()
        return 'Deck contains: ' + deck_comp

    def shuffle(self):
        random.shuffle(self.deck)

    def deal(self):
        single_card = self.deck.pop()
        return single_card

class Hand():
    def __init__(self):
        self.cards = []
        self.value = 0
        self.aces = 0

    def __str__(self):
        deck_comp = ''
        for card in self.cards:
            deck_comp += '\n ' + card.__str__()
        return "Players hand contains: " + deck_comp

    def add_card(self, card):
        self.cards.append(card)
        self.value += values[card.rank]
        if card.rank == 'A':
            self.aces += 1

    def adjust_for_ace(self):
        while self.cards > 21 and self.aces:
            self.value -= 10
            self.aces -= 1

class Chips:

        def __init__(self, total = 100):
            self.total = total
            self.bet = 0

        def win_bet(self):
            self.total += self.bet

        def lose_bet(self):
            self.total -= self.bet

def take_bet(chips):
    while True:
        try:
            chips.bet = int(input("How many chips to bet?: "))
        except ValueError:
            print("Error, bet must be an integer.")
            # continue
        else:
            if chips.bet > chips.total:
                print(f"Insufficent funds. {chips.total} chips remain.")
                # continue
            elif chips.bet <= 0:
                print("Error, positive bet required.")
            else:
                break

def hit(deck, hand):
    hand.add_card(deck.deal())
    hand.adjust_for_ace()

def hit_or_stand(deck, hand):
    global playing

    while True:
        x = input("Hit or stand? (Enter h or s): ")

        if x[0].lower() == 'h':
            hit(deck,hand)

        elif x[0].lower() == 's':
            print("Player stands. Dealer will now play.")
            playing = False

        else:
            print("Input error.")
            continue
        break

def show_some(player, dealer):
    print("\nDealer's Hand: <card hidden> ",dealer.cards[1])
    print("\nPlayer's Hand:", *player.cards, sep=' ')
    print("\nPlayer's score: ", player.value)

def show_all(player, dealer):
    print("\nDealer's Hand:", *dealer.cards, sep=' ')
    print("\nDealer's score: ", dealer.value)
    print("\nPlayer's Hand:", *player.cards, sep=' ')
    print("\nPlayer's score: ", player.value)

def player_busts(player, dealer, chips):
    print("Player busts!")
    chips.lose_bet()

def player_wins(player, dealer, chips):
    print("Player wins")
    chips.win_bet()

def dealer_busts(player, dealer, chips):
    print("Dealer busts!")
    chips.win_bet()

def dealer_wins(player, dealer, chips):
    print("Dealer wins")
    chips.lose_bet()

def push(player, dealer):
    print("Dealer and Player tie! It's a push.")


while True:
    print("Welcome to Blackjack! Get as close to 21 as you can without going over!\n\
    Dealer hits until she reaches 17. Aces count as 1 or 11.")

    # initialize game with
    deck = Deck()
    deck.shuffle()

    player_hand = Hand()
    player_hand.add_card(deck.deal())
    player_hand.add_card(deck.deal())

    dealer_hand = Hand()
    dealer_hand.add_card(deck.deal())
    dealer_hand.add_card(deck.deal())

    player_chips = Chips()

    take_bet(player_chips)

    show_some(player_hand, dealer_hand)

    while playing:
        hit_or_stand(deck, player_hand)

        show_some(player_hand, dealer_hand)

        if player_hand.value > 21:
            player_busts(player_hand, dealer_hand, player_chips)
            break



