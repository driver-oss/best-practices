## Git

- Use a simple branching model with one master development branch, and
  create feature and backport branches as required.
  
  - The master branch should represent the latest development version.

  - Tag all released versions.

  - Backport branches may be spun off tags when they become necessary.

- Proposed changes require at least one sign-off to be accepted into
  master.
			    
- Large feature branches with multiple collaborators should be
  *merged* into master.
  
  Rationale: rewriting history in public branches can break other
  people's work and should not be done lightly.

- Private feature branches should be *rebased* onto master, prior to
  merging. *Squashing* is optional, but all intermediate commits
  should contain meaningful changes and must pass continuous
  integration tests.
  
  Rationale: private branches should be considered backups of work on
  local developer machines and hence should not be relied upon by
  others. Furthermore, a linear history is easier to reason about than
  a branched one.
