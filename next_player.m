function current_player = next_player(current_player,direction,number_of_players)
% a function that return the number of the next player turn. using the
% number of players, direction of play, and current player
% input:
%       current_player = a number containg the identity of the current player(1-4)
%       direction = 1 or -1. 1 is clockwise, -1 is counter clockwise.
%       number of players-  the number of active players(2-4)
% output:
%        current_player= the identity of the player after the input player

current_player= current_player + direction;
if current_player==0
    current_player=number_of_players;
elseif current_player==number_of_players+1
    current_player=1;
end
