# Monkey Banana Problem Solver - Prolog Implementation

This repository contains the Prolog implementation for the classic artificial intelligence problem known as the "Monkey-Banana Problem". This problem involves a monkey in a room with a banana hanging from the ceiling. The monkey can walk around the room, push a chair around, climb on the chair, and grasp the banana. The goal is to find a sequence of actions that results in the monkey eating the banana.

## 📃 Project Structure

The project uses the Prolog language to represent and solve the problem. Here is a summary of the predicates used in the project:

1. **state(MonkeyPosition, ChairPosition, BananaStatus):** Defines the state of the monkey's world. The state consists of the monkey's position, the chair's position, and the status of the banana (held, on ceiling, or eaten).

2. **action(State, Action, NewState):** Represents an action that transitions from a state to a new state. The project includes rules for several actions: eat, grasp, climb, push, and go.

3. **plan(StartState, GoalState, Plan):** Generates a plan of actions to reach the goal state from the start state.

The goal of the problem can be specified by calling the `plan` predicate with the desired final state.

## ⚙️ How to Run

To run the program, you will need a Prolog interpreter. You can run the program using the following command:

```prolog
?- [monkey_banana].
```

After loading the program, you can generate a plan by querying the `plan` predicate. For example:

```prolog
?- plan(state(onFloor(corner2), corner3, onCeiling(middle)), state(MonkeyPos, ChairPos, eaten), Plan).
```

The above command will generate a sequence of actions that will lead the monkey to eat the banana starting from the specified initial state.

## ✉️ Contact

For any questions or clarifications regarding this project, please contact Giorgio Paoletti at [email].

## ⚖️ License

This project is licensed under the MIT License. See the `LICENSE` file for details.
