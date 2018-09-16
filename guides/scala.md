## Scala

- First and foremost, follow [the Principle of Least
  Power](http://www.lihaoyi.com/post/StrategicScalaStylePrincipleofLeastPower.html#philosophy-principle-of-least-power).
  
  In a nutshell:

  - Keep your code simple and at a level of abstraction dictated by
	the actual circumstances.
	
	
  - Don't design an API that will fit all future requirements. Start
	simple and refactor when the time comes. A good rule of thumb is
	to assume that you will completely rewrite your code at least once
	before finding a satisfactory solution.

  Rationale: the article justifies its points thoroughly. In general,
  Scala makes it easy to design advanced abstractions which can make
  it harder for an outsider to grasp a codebase. As a codebase grows,
  sometimes these abstractions become necessary, however they usually
  aren't in the beginning. Since Scala is a statically typed language,
  you should not fear refactoring when they do become necessary.
  
  *Scala's name comes from "scalable language". That refers to large,
  as well as small!*

- Avoid building libraries in such a way that they require wildcard
  imports to function.
  
  I.e. avoid building libraries that use this common pattern: `import
  foo.bar._`
  
  Rationale: a developer using a library doesn't want to know how it
  works, but wants to get his or her job done. Wildcard imports
  (especially if they bring into scope implicits) obfuscate the origin
  of types and methods to a reader who is not familiar with the
  library, and hence make it harder for the reader to edit.

- Choose dependencies on external libraries judiciously, and keep them
  to a minimum. Avoid depending on multiple libraries that offer
  similar functionality.

  Prefer reimplementing *small* features in your own code rather than
  relying on a library.

  For example, assume a web service has a REST API and also offers a
  Java library that wraps said API. In the case where only a couple of
  endpoints from the external REST service are required in some code,
  prefer calling the endpoints with an HTTP client directly, rather
  than relying on the entire library. This allows you to forego an
  additional layer of indirection and keeps you in control of which
  HTTP client to use.

- In public interfaces, expose only types from the Scala standard
  library. In particular, avoid exposing scalaz or cats types.

- Make use of comments liberally. Describe interesting parts of code,
  how to use it and why it's there. Don't comment *everything*.

- Organise code in a functionally cohesive manner. Use one parent
  package to namespace a library, and use nested packages according to
  functionality.
  
- Do not use runtime reflection.
  
  Rationale: runtime reflection circumvents type checking and strongly
  ties applications to the JVM.

- Use
  [scalafmt](https://scalameta.org/scalafmt/docs/introduction.html) to
  format code.
  
  Rationale: formatting is material for holy wars. If it is enforced
  by an automatic tool then there is no room for such discussions.

## Other Resources

[Simple Made
Easy](https://www.infoq.com/presentations/Simple-Made-Easy), by Rich
Hickey. A great talk about the differences between "Simple",
"Complex", "Easy" and "Hard", and how to write simple programs.
