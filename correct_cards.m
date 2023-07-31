function all_possible = correct_cards(card_on_top, special)
% this function gets a  card, and return all the possible card options
% that can be put over this card. also accounts for 2 distinct cases in the
% game. if there's a plus two or a taki in play. 
% input:
%       card_on_top- the card that will be checked to see which cards can
%       be played after.
%       special- a string containing the spaciel cases druing the game
% output:
%       all_possible- a list of all cards that can be played 

% handels no special input
if nargin < 2
    special = "null";
end

% handels a case of +2 in play
if mod(card_on_top,100)==2 && special=="two"
    all_possible=((1:4)*100+2);
    return
end
% addes all options of colour based on card_on top colour
all_possible= ((fix(card_on_top/100)*100+1):(13+fix(card_on_top/100)*100));
all_possible=double(all_possible);
% handels case of taki in play, can't add different colors and change colour cases
if special=="taki"
    return
else
    % addes the cases of different colours with same number and 1,2
    all_possible=[all_possible,1,2,((1:4)*100+double(mod(card_on_top,100)))];
end
