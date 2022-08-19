# Antsichaut Github action

This action runs [antsichaut](https://github.com/rndmh3ro/antsichaut) in your pipeline.

## Inputs

## `since_version`

**Required** the version to fetch PRs since

## `to_version`

the version to fetch PRs to

## Example usage

```

- name: 'Get Previous tag'
  id: previoustag
  uses: "WyriHaximus/github-action-get-previous-tag@master"
  env:
    GITHUB_TOKEN: "${{ secrets.GITHUB_TOKEN }}"

- name: 'Run antsichaut'
  uses: rndmh3ro/antsichaut-action@v1
  with:
    GITHUB_TOKEN: "${{ secrets.GITHUB_TOKEN }}"
    since_version: "${{ steps.previoustag.outputs.tag }}"
