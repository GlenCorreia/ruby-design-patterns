# Relations Between Objects

## 1. Dependency

A dependency is the weakest relationship, indicating that one class uses another class. It's often temporary and occurs when a class uses an instance of another class, but does not maintain a long-term reference to it. Dependency is a "uses a" relationship. 

![dependency](./images_for_md/dependency.png)

Key characteristics:

- __Temporary__: The relationship exists only for a specific method or operation.
- __Loose coupling__: If the dependent class changes, it is less likely to break the using class, as the relationship isn't a permanent part of its state.
- __Passed as an argument__: Dependencies are often passed into a method as an argument, a practice known as dependency injection. 

## 2. Association

Association is a broader, more permanent relationship where one class holds a reference to an instance of another class. It represents a "has a" relationship, but the objects can exist independently. A class maintains a reference to another object through an instance variable.

![association](./images_for_md/association.png)

Key characteristics:

- __Long-term__: The relationship persists as long as both associated objects exist.
- __Independent lifecycle__: The associated objects can be created and destroyed independently of each other.
- __Bidirectional or unidirectional__: Association can be modeled with or without a reciprocal reference.