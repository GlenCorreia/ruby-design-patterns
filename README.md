# Design Patterns in Ruby

 - Creational Patterns
      - Singleton
      - Factory
      - Abstract Factory
      - Builder
      - Prototype
  - Structural Patterns
      - Decorator
      - Adapter
      - Composite
      - Proxy
      - Bridge
      - Facade
      - Flyweight
  - Behavioural Patterns
      - Observer
      - Strategy
      - Command
      - State
      - Template
      - Iterator
      - Mediator
      - Chain of Responsibility
      - Memento
      - Visitor
      - Interpreter

---

## Descriptions

### 1. Creational Patterns

These focus on object creation and initialization.

| Pattern | Purpose |
|---|---|
| Singleton | Ensures a class has only one instance (e.g., config manager). One instance globally accessible. |
| Factory | Creates objects without specifying the exact class. Delegates instantiation to subclasses. |
| Abstract Factory | Produces families of related objects without specifying concrete classes. |
| Builder | Constructs complex objects step-by-step. |
| Prototype | Clones existing objects instead of creating new ones. |

### 2. Structural Patterns

These deal with object composition and relationships.

| Pattern | Purpose |
|---|---|
| Decorator | Adds responsibilities/behavior to objects dynamically. |
| Adapter | Converts one interface to another (great for legacy integration). |
| Composite | Treats individual objects and compositions (composite objects) uniformly. |
| Proxy | Controls access to another object (e.g., lazy loading, logging). |
| Bridge | Decouples abstraction from implementation. |
| Facade | Simplifies complex subsystems with a unified interface. |
| Flyweight | Shares common state between many objects to save memory. |

### 3. Behavioral Patterns

These focus on communication between objects.

| Pattern | Purpose |
|---|---|
| Observer | Notifies dependent objects of state changes (ideal for event systems). |
| Strategy | Selects an algorithm at runtime. |
| Command | Encapsulates requests as objects. |
| State | Allows an object to alter its behavior when its internal state changes. |
| Template | Defines the skeleton of an algorithm, deferring steps to subclasses. |
| Iterator | Sequential access to elements. |
| Mediator | Centralizes communication between objects. |
| Chain of Responsibility | Passes request along a chain until handled. |
| Memento | Captures and restores object state. |
| Visitor | Adds operations to objects without modifying them. |
| Interpreter | Implements a grammar interpreter. |