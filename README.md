

# Website setup

The website served at [https://social-science-data-editors.github.io/](https://social-science-data-editors.github.io/) is built by quarto on github actions. Contributing and developing locally is encouraged via issues and pull requests. Here is an outline of how to run the site locally in order to test out changes before making any suggestions.

## Quarto

We use [quarto](https://quarto.org) as a website builder. You need to install this for your system [here](https://quarto.org/docs/get-started/). You can then develop the website in a series of tools (RStudio, VSCode, etc).

## Editing and Rendering Content

By default quarto will render any file ending in `.qmd` (quarto markdown). This just another markdown dialect, and you can find a simple example of how to get started [here](https://quarto.org/docs/get-started/authoring/vscode.html). The content of the website is in the [docs](/docs) directory. To see the result of your edits, you can execute on the command line

```
quarto render my_file.qmd
```

which would create some output (depending on the frontmatter you set in your `.qmd` file - by default, an `.html` file). Alternatively, and quite conveniently, IDEs like RStudio or VScode will allow you to *render and watch* a quarto project, so your changes will be reflected immediately in the built-in browser (or in your default browser at `localhost`). The [VSCode Quarto Extension](https://quarto.org/docs/tools/vscode.html#notebook-editor) is needed for this to work in VScode.

## Committing Changes and Filing a Pull Request

Here is a cookbook recipe:

0. Create an issue with your concern by clicking [here](https://github.com/social-science-data-editors/guidance/issues/new/choose) and discuss with the maintainers about your proposal [Optional]
1. Create your fork on github.com by clicking [here](https://github.com/social-science-data-editors/guidance/fork)
2. Clone your fork to your computer
3. Create a new local branch, ideally with a name that relates to your issue
4. Make your edits to the source of the website
5. Build the website locally to check your edits had the desired effect
6. Make a commit: notice that we specified git to ignore the built site in `_site` - do not override this setting please.
7. Push to your fork and create the pull request against this repository.
8. Thanks for your contribution!

