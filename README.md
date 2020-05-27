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

1. Publish the release to make it public.

