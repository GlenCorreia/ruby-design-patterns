# Design Patterns in Ruby


 1. [Creational Patterns](./1_creational/)
      - [a. Singleton](./1_creational/a.singleton/)
      - [b. Factory](./1_creational/b.factory/)
      - [c. Abstract Factory](./1_creational/c.abstract_factory/)
      - [d. Builder](./1_creational/d.builder/)
      - [e. Prototype](./1_creational/e.prototype/)
  2. [Structural Patterns](./2_structural/)
      - [a. Decorator](./2_structural/a.decorator/)
      - [b. Adapter](./2_structural/b.adapter/)
      - [c. Composite](./2_structural/c.composite/)
      - [d. Proxy](./2_structural/d.proxy/)
      - [e. Bridge](./2_structural/e.bridge/)
      - [f. Facade](./2_structural/f.facade/)
      - [g. Flyweight](./2_structural/g.flyweight/)
  3. [Behavioural Patterns](./2_behavioral/)
      - [a. Observer](./2_behavioral/a.observer/)
      - [b. Strategy](./2_behavioral/b.strategy/)
      - [c. Command](./2_behavioral/c.command/)
      - [d. State](./2_behavioral/d.state/)
      - [e. Template](./2_behavioral/e.template/)
      - [f. Iterator](./2_behavioral/f.iterator/)
      - [g. Mediator](./2_behavioral/g.mediator/)
      - [h. Chain of Responsibility](./2_behavioral/h.chain_of_responsibility/)
      - [i. Memento](./2_behavioral/i.memento/)
      - [j. Visitor](./2_behavioral/j.visitor/)
      - [k. Interpreter](./2_behavioral/k.interpreter/)

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