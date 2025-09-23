#!/bin/bash
set -ex

# For more information, read https://github.com/lokalise/lokalise-cli-2-go/blob/master/docs/lokalise2_file_download.md

curl -L "https://github.com/lokalise/lokalise-cli-2-go/releases/latest/download/lokalise2-darwin-amd64" -o /usr/local/bin/lokalise2
chmod +x /usr/local/bin/lokalise2

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
