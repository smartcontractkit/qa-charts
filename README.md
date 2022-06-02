# Chainlink Charts

This repository contains helm charts used by the chainlink organization mostly in QA.

# Chart Repository

You can add the published chart repository by pointing helm to the `gh-pages` branch with a personal access token (PAT) that has at least read-only access to the repository.

```sh
helm repo add chainlink-qa https://<PAT>@raw.githubusercontent.com/smartcontractkit/qa-charts/gh-pages/
# or
helm repo add chainlink https://raw.githubusercontent.com/smartcontractkit/charts/gh-pages/ --password <PAT> --username dummy # username isnt used, but needs to be a value for helm to accept the command
helm search repo chainlink
```

# Releasing Charts

The following cases will trigger a chart release once a PR is merged into the `main` branch.
Modified packages or new packages get added and pushed to the `gh-pages` branch.

- An existing chart is version bumped
- A new chart is added

Removed charts do not trigger a re-publish, the packages have to be removed and the index file regenerated in the `gh-pages` branch.
