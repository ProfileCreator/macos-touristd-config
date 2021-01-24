# macos-touristd-config
![Run](https://github.com/wegotoeleven/macos-touristd-config/workflows/Run/badge.svg)

## Purpose

This repository is configured to download Apple's TouristD `config.json` file, to be used within a [ProfileManifest](https://github.com/ProfileCreator/ProfileManifests). Rather than running the job manually, it uses Github Actions to do this both:
- On a schedule, of midnight every night, and
- Using a manual [`workflow_dispatch` action](https://github.com/wegotoeleven/macos-touristd-config/actions?query=workflow%3ARun)

## Workflow

1. The action runs, either automatically, or via `workflow_dispatch`
2. This repository is cloned to a hosted Github runner
3. The `DownloadTouristDConfig.sh` script is run, pulling down the latest `config.json` from Apple and overwriting the `config.json` file in this repository
4. The action the checks for repository changes
5. If any changes are detected, all changes are commited to a new branch, or an existing pull request branch if one exists
6. A pull request is created to merge the new branch into the base (the branch checked out in the workflow)
7. Once the PR has been reviewed and merged by an repository admin, a manual issue/PR should be created in [ProfileManifests](https://github.com/ProfileCreator/ProfileManifests) to have any new config options added