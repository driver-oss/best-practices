## Shell Script

- Run the [ShellCheck](https://github.com/koalaman/shellcheck) linter
  on all scripts.

- Follow Google's [Shell Style
  Guide](https://google.github.io/styleguide/shell.xml); most notably,
  the below points.

- Use only Bourne Again SHell (Bash).

  It's acceptable to use features available only in Bash 4 and
  later. As of this writing, that version was released almost 10 years
  ago, and developers on any platforms which do not ship the latest
  version out-of-the box are expected to upgrade.

- Prefer no file name extension for executables, and ".sh" extensions
  for libraries (scripts that are meant to be "sourced" in other
  scripts).

  Rationale: an OS can run any executable file, regardless of its
  content, and as such, it isn't helpful to know that an executable is
  in fact a shell script. However, it is essential to know that an
  included library is indeed a shell script.

- Use long names for command-line options rather than short
  ones. E.g. use `ls --all` instead of `ls -a`.

  Rationale: long names trade off clarity at the expense of
  brevity. They make it easier for an unfamiliar reader to grasp the
  meaning of an argument, but require the author to write more
  characters. Hence they are recommended in all places that are read
  more often than written.

- Use lower_snake_case for all local environment variables, and
  UPPER_SNAKE_CASE for exported variables.
  
- Prefer parsing command line options rather than relying on
  environment variables for configuration.

- Print status messages to stderr, not stdout.

  Rationale: stdout is often parsed by other utilities (for example in
  a pipeline) and should hence only contain a program's output, if
  any.

- Don't make any assumptions about the working directory from which a
  script is invoked. Specifically, don't require that the script be
  invoked within the same directory it is located.
    
  Rationale: scripts should be treated like any other executable and
  should support indirection via symlinks. Requiring a specific
  working directory for a program to function is a needless
  restriction.
  
  Note that this guide specifically applies to the *working directory*
  of the caller. The script itself may make assumptions about *its
  location* and the location of resources. The following snippet is an
  example mechanism to determine the directory of a script.
  ```bash
  # Base directory that this script is located at.
  dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
  ```
