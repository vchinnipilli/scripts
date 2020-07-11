#!/bin/bash
curl -k -X POST --data-urlencode \
  'payload={
  "channel": "#bamboo-builds",
  "username": "Bamboo Bot", 
  "text": "New Build Started",
  "icon_emoji": ":octocat:",
  "attachments": [
    {
      "color":"#CFA700",
      "title": "${bamboo.repository.name} build #${bamboo.buildNumber}",
      "title_link": "${bamboo.resultsUrl}",
      "text": "Build started for branch ${bamboo.repository.git.branch}"
    }
  ]
}' \
https://hooks.slack.com/services/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
