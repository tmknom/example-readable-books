#!/bin/sh

CIRCLECI_API_URL="https://circleci.com/api/v1.1/project/github/\
${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/\
${CIRCLE_PREVIOUS_BUILD_NUM}/artifacts?circle-token=${CIRCLECI_TOKEN}"

PDF_URL=$(curl -s ${CIRCLECI_API_URL} | jq -r '.[] | .url')
PULL_REQUEST_ID=$(echo ${CIRCLE_PULL_REQUEST} | awk -F '/' '{ print $NF }')

GITHUB_API_URL="https://api.github.com/repos/\
${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}/issues/\
${PULL_REQUEST_ID}/comments?access_token=${REVIEWDOG_GITHUB_API_TOKEN}"

COMMENT="生成されたPDFを確認してください。\n${PDF_URL}"
curl -X POST -H 'Content-Type:application/json' \
-d "{\"body\":\"${COMMENT}\"}" ${GITHUB_API_URL}
