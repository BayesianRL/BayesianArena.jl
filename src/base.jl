"""
    AbstractGame

A supertype for all game definitions. Concrete game structs should 
sub-type this and contain the necessary parameters to define the game rules.
"""
abstract type AbstractGame end

"""
    AbstractGameState

A supertype for all game state definitions. Concrete state structs should
sub-type this and contain all information needed to represent a specific
moment in a game (e.g., player positions, scores, board layout).
"""
abstract type AbstractGameState end


"""
    AbstractAction

A supertype for all action definitions.
"""
abstract type AbstractAction end


"""
    init(game::AbstractGame)::AbstractGameState

Initializes a game by setting up the starting state.

This function should be implemented by concrete game types to return the 
specific starting state (a concrete subtype of AbstractGameState) for that game.
"""
function init(game::AbstractGame)::AbstractGameState
    # This is a generic fallback, concrete types must implement it.
    error("init not implemented for game type $(typeof(game))")
end


"""
    step(game::AbstractGame, state::AbstractGameState, action::AbstractAction)::Tuple{Real, AbstractGameState}

Takes a single step in the game given an action.

# Returns
A tuple containing:
1. The reward received for the step (a subtype of Real).
2. The new state of the game (a concrete subtype of AbstractGameState).
"""
function step(game::AbstractGame, state::AbstractGameState, action::AbstractAction)::Tuple{Real, AbstractGameState}
    # This is a generic fallback, concrete types must implement it.
    error("step not implemented for game type $(typeof(game)) and state type $(typeof(state)) and action $(typeof(action))")
end