# Design Patterns in Ruby

1. [Creational Patterns](./1_creational/)
      a. [Singleton](./1_creational/a.singleton/)
      b. [Factory](./1_creational/b.factory/)
      c. [Abstract Factory](./1_creational/c.abstract_factory/)
      d. [Builder](./1_creational/d.builder/)
      e. [Prototype](./1_creational/e.prototype/)
2. Structural Patterns
      a. Decorator
      b. Adapter
      c. Composite
      d. Proxy
      e. Bridge
      f. Facade
      g. Flyweight
3. Behavioural Patterns
      a. Observer
      b. Strategy
      c. Command
      d. State
      e. Template
      f. Iterator
      g. Mediator
      h. Chain of Responsibility
      i. Memento
      j. Visitor
      k. Interpreter

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