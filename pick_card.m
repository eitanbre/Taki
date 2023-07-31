function [choosen,deck]= pick_card(deck)
% this function chooses a random number out of a list, and returns it with
% and the list without the choosen number. if the list is empty it refills
% it by using the function new_deck()
% input:
%       deck- a list full of cards(numbers) 
% output:
%       choosen- a random number inside deck
%       deck- the same input deck, without choosen(1 copy)

choosen=deck(randi([1 length(deck)]));
deck(find(deck==choosen,1))=[];
if isempty(deck)
    deck=new_deck;
end




