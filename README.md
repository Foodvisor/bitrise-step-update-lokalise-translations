# Update lokalise translations

This step downloads the latest translations from the Lokalise project and move them to the right path in project.

## How to use this Step

Can be run directly with the [bitrise CLI](https://github.com/bitrise-io/bitrise),
just `git clone` this repository, `cd` into it's folder in your Terminal/Command Line
and call `bitrise run test`.

*Check the `bitrise.yml` file for required inputs which have to be
added to your `.bitrise.secrets.yml` file!*

Step by step:

1. Open up your Terminal / Command Line
2. `git clone` the repository
3. `cd` into the directory of the step (the one you just `git clone`d)
5. Create a `.bitrise.secrets.yml` file in the same directory of `bitrise.yml`
   (the `.bitrise.secrets.yml` is a git ignored file, you can store your secrets in it)
6. Check the `bitrise.yml` file for any secret you should set in `.bitrise.secrets.yml`
7. Once you have all the required secret parameters in your `.bitrise.secrets.yml` you can just run this step with the [bitrise CLI](https://github.com/bitrise-io/bitrise): `bitrise run test`

Your `.bitrise.secrets.yml` file should look like this:

```
envs:
- LOKALISE_TOKEN: Your lokalise secret token.
- LOKALISE_PROJECT_ID: Your lokalise secret project id.
- DEST_LOKALISE_FILES: The path to where you want to unzip the downloaded files.
- LOKALISE_FORMAT: The format of the downloaded files.
- LOKALISE_LANGS: The languages to download from (ex: "en,de..."). Fetches all available languages if left blank.
- LOKALISE_ORIGINAL_FILENAMES: Enable to use original filenames/formats. If set to false all keys will be export to a single file per language.
- LOKALISE_BUNDLE_STRUCTURE: Bundle structure, used when original-filenames set to false. Allowed placeholders are %LANG_ISO%, %LANG_NAME%, %FORMAT% and %PROJECT_NAME%).
- LOKALISE_EXCLUDED_TAGS: Specify to exclude keys with these tags.
```
