# OutSystems Documentation Validation Rules

![Latest GitHub release](https://img.shields.io/github/v/release/OutSystems/docs-validation) ![Commits since latest release](https://img.shields.io/github/commits-since/OutSystems/docs-validation/latest?label=commits%20since%20release)

Contains a set of rules used to validate OutSystems documentation.

Each release (`OutSystems.zip` file) contains a set of rules defining the **OutSystems** style for [vale](https://github.com/errata-ai/vale).

## Creating a new release

1. Clone this repository by entering the following command in a command prompt:

        git clone https://github.com/OutSystems/docs-validation.git

1. [Install Node.js](https://nodejs.org/en/) version 10 or greater.

1. [Create a GitHub access token](https://github.com/settings/tokens/new) if you don't have one.

1. Define an environment variable named `GITHUB_TOKEN` with your GitHub access token as a value.

1. In a command prompt, change to the folder of the cloned repository, for example to the `docs-validation` folder.

1. If you're running Linux, edit the `.release-it.yml` file and change the `after:bump` hook line according to the file comment.

1. Run the following command in the command prompt:

        npx release-it

    `npx` is bundled with Node.js and allows you to run commands from NPM packages without having to install those packages locally. It also makes sure that you always run the command available in the latest package version.

1. Answer some questions asked by the `release-it` command according to the type of release you're doing (fix, minor release, major release).

## Publishing the draft release

The command creates a draft release in GitHub and you must publish it to make it public.

Do the following:

1. Open the [Releases](https://github.com/OutSystems/docs-validation/releases) page for the `docs-validation` repository in GitHub.

1. Review the automatically generated changelog, editing it if necessary.

1. Zip contents of `styles-vale/OutSystems` into `OutSystems.zip`. Attach `OutSystems.zip` as binary file to release.

1. Publish the release to make it public.

## Automated Style Validation

This repository provides a reusable GitHub Actions workflow for running style validation (e.g., `markdownlint`) across multiple repositories.  
Follow the steps below to enable and maintain validation checks in your target repositories.

---

### 1. Start Using Automated Validation in a New Repository

#### Step 1 — Register the Repository

Update the `.github/workflows/sync-automated-style-validation.yml` file in this repository and add the new repository name to the matrix.  
Example:

```yaml
matrix:
  repo:
    - OutSystems/training-internal
    - OutSystems/my-new-repo   # ← Add here
```

Commit and merge the changes to `main`.  
Once merged, the configuration files will automatically be synced into the target repository.

---

### Step 2 — Add the Workflow to the Target Repository

In the target repository, create (or update) a workflow to call the reusable style validation workflow.  
For example, add the following to `.github/workflows/pr-style-validation.yml`:

```yaml
name: PR Style Validation Checks

on:
  pull_request:

jobs:
  get-changed-md:
    name: Get changed .md files
    runs-on: ubuntu-latest
    outputs:
      changed-md: ${{ steps.changed.outputs.all_changed_files }}
    steps:
      - uses: actions/checkout@v4
      - name: Get changed markdown files
        id: changed
        uses: tj-actions/changed-files@v45
        with:
          files: |
            **/*.md
      - name: Debug changed files
        run: echo "Changed MD files ${{ steps.changed.outputs.all_changed_files }}"

  call-markdownlint:
    name: Run Markdownlint validation
    needs: get-changed-md
    if: ${{ needs.get-changed-md.outputs.changed-md != '' }}
    uses: OutSystems/tk-cicd/.github/workflows/style-guides-validation.yml@main
    with:
      paths-to-lint: ${{ needs.get-changed-md.outputs.changed-md }}
    secrets:
      github-token: ${{ secrets.GITHUB_TOKEN }}
```

👉 Place this workflow in the stage of your pipeline where it makes the most sense (e.g., alongside linting or testing jobs).

---

### 2. Updating the Validation Rules

To change the validation rules:

1. Update the `.markdownlint.json` file in this repository with the necessary changes.  
2. Open and merge a PR into `main`.  
3. Once merged, the updated rules will automatically propagate (mirrored) across all dependent repositories.

---

### Summary

- **Add new repos**: update the `matrix.repo` in `sync-automated-style-validation.yml` and add a workflow to the target repo.  
- **Update rules**: edit `.markdownlint.json` in this repo, merge to `main`, and changes will sync everywhere.  
