% State of the monkey's world = state(MonkeyPosition, ChairPosition, BananaStatus)
% action( State, Action, NewState): Action in State produces NewState

% “Eat” an object.
action( 
    state(Pos1, Pos2, held),                            % If the monkey is holding the banana he can eat it
    eat,
    state(Pos1, Pos2, eaten)                            % After action: banana is eaten
).

% “Grasp” an object.
action(  
    state(onChair(Pos), Pos, onCeiling(Pos)),           % Monkey, chair and banana are in the same position
    grasp,      
    state(onChair(Pos), Pos, held)                      % After action: banana is helded
).

% “Climb” onto an object.
action(  
    state(onFloor(Pos), Pos, Status),                   % Monkey and chair both at Pos
    climb,      
    state(onChair(Pos), Pos, Status)                    % After action: monkey is on the chair
).

% “Push” an object from one place to another.
action(
    state(onFloor(Pos), Pos, Status),                   % Monkey and chair both at Pos
    push(Pos, NewPos),                                  % Push chair from Pos to NewPos
    state(onFloor(NewPos), NewPos, Status)              % Monkey and chair now at NewPos
).

% “Go” from one place to another
action( 
    state(onFloor(Pos1), Pos2, Status),
    go(Pos1, NewPos1),                                  % Go from Pos1 to NewPos1
    state(onFloor(NewPos1), Pos2, Status)
).

% plan(StartState, FinalState, Plan)

plan( State, State, []).                             % Start state and goal state are equal, nothing to do

plan( State1, GoalState, [ Action1 | RestOfPlan]) :-
    action( State1, Action1, State2),              % Make first action resulting in State2
    plan( State2, GoalState, RestOfPlan).              % Find rest of plan from State2

% Goal
% plan(state(onFloor(corner2), corner3, onCeiling(middle)), state(MonkeyPos, ChairPos, eaten), Plan).