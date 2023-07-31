function deck=new_deck()
% a function that creats a new deck of cards.the deck contains 2 cards of each number in
% each colour(red-100, green-200, blue-300, yellow-400), four change
% colour cards(1), and 2 super taki (2).
deck=[];
for i=1:4
    deck=[deck (i*100)+(1:13)];
end
deck=[deck deck];
deck=[deck, 1,1,1,1,2,2];
