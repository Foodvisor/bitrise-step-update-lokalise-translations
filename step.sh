#!/bin/bash
set -ex

# For more information, read https://github.com/lokalise/lokalise-cli-2-go/blob/master/docs/lokalise2_file_download.md

version=$(lokalise2 --version)
echo "$version"

lokalise2 \
    file download \
    --token ${lokalise_token} \
    --project-id ${lokalise_project_id} \
    --format ${format} \
    --unzip-to ${file_path} \
    --filter-langs ${locale} \
    --original-filenames=${original_filenames} \
    --bundle-structure ${bundle_structure} \
    --exclude-tags=${excluded_tags} \
    --async \
