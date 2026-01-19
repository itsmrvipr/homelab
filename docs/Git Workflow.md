# Git Workflow

Branching and commits in this repository *loosely* follow the [Conventional Branch](https://conventional-branch.github.io/#summary) and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary) standards.  

This adapted convention is intentionally minimal and may evolve over time as the repository grows.

## Creating a Branch

### Branch Naming Standards
`main` must always remain in a deployable state; all work branches are created from it.

Branch names must use the format `<type>/<scope>`.  
Branch names should clearly communicate the purpose of work.

#### Acceptable branch type standards:
- `feature/` (or `feat/`): For introduction of new code/functionality
    - Valid examples: `feature/nixos-config`, `feat/homepage`
    - "`add-`" in scope is implied and redundant (e.g., `feature/add-sso`, `feat/add-reverse-proxy`)
    - "`new-`" in scope can be used to note replacement or major revision of an existing feature (e.g., `feature/new-sso-provider`, `feat/new-siem`)

- `bugfix/` (or `fix/`): For reported bug fixes tied to an existing issue or report
    - Valid examples: `bugfix/issue-11-authentik-login`, `fix/issue-27-homepage-api`
    - "`fix-`" in scope is implied and redundant (e.g., `bugfix/issue-9-fix-root-flake`, `fix/fix-issue-42-docker-compose`)

- `hotfix/`: For urgent or unreported fixes
    - Valid examples: `hotfix/security-patch`, `hotfix/update-nixpkgs`

- `misc/`: For general, non-invasive changes
    - Valid examples: `misc/image-upload`, `misc/cosmic-config`

- `docs/`: For documentation creation and updates
    - Valid examples: `docs/git-workflow`, `docs/grammar-changes`

#### Acceptable scope standards:
- Clearly define the `<scope>` of changes in as few words as possible

- Use only lowercase letters (`a-z`), numbers (`0-9`), and hyphens (`-`)

- Use hyphens (`-`) to separate words  
    - Avoid spaces and underscores

- Dots may be used when versioning is in scope
    - Valid examples: `hotfix/update-nixos-pkgs-25.11`, `docs/git-workflow-1.0.0-beta`

- Avoid special characters  

- Avoid consecutive and leading hyphens or dots
    - Invalid examples: `hotfix/-traefik--update`, `misc/move-.config-directory`

## Committing Changes

### Commit Message Standards
Commit messages must use the format `<type>(<scope>): <summary>`

#### Acceptable commit standards:
- Commit `type` and `scope` must match the branch `type` and `scope` for related changes.

- Summary should be a brief description of changes
    - Valid examples: `misc(image-upload): added background1 to images/`, `bugfix(issue-12-proxmox-api): created new api key for service account`

## Merging Commits

### Merge Request Standards

Merge request titles must follow the format `<type>(<scope>): <summary>`

#### Acceptable merge request standards:
- Merge request titles should read as if they were a single, final commit

- Summary should describe the net effect of the merge
    - Valid example: `docs(git-workflow): define branching, commit, and MR standards`

## Workflow in Action 

### Real-life Example

The following example outlines this workflow being followed when creating this document:

1. Create new branch from `main`
2. Name branch > `docs/git-workflow`
3. Define branching rules > Save
4. Commit changes with message: `docs(git-workflow): branching rules`
5. Add commit standards > Save
6. Commit changes with message: `docs(git-workflow): added commit standards`
7. Add merge request standards > Save
8. Commit changes with message: `docs(git-workflow): added MR standards`
9. Create merge request > `docs/git-workflow` into `main`
10. Title: `docs(git-workflow): define git workflow standards` > Submit
11. Squash and merge (preferred) > Confirm
12. Delete branch
13. Create new branch from `main`
14. Name branch > `docs/git-workflow-update`
15. Add workflow in action > Save
16. Commit changes with message: `docs(git-workflow-update): added workflow example`
17. Create merge request > `docs/git-workflow-update` into `main`
18. Title: `docs(git-workflow-update): show workflow example` > Submit
19. Squash and merge (preferred) > Confirm
20. Delete branch