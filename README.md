# drone-base64
[![Build Status](https://cloud.drone.io/api/badges/viant/drone-base64/status.svg)](https://cloud.drone.io/viant/drone-base64)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/viant/drone-base64/blob/master/LICENSE)

Drone plugin to convert a base64 encoded string into a file. Originally written to get a Google `json` credentials file injected but could be used for other purposes.

## Usage

* `base64` base64 encoded string of a file

* `destination_file` Full file path for the destination file

## Example

```yaml
kind: pipeline
name: default

steps:

- name: create_key
  image: viant/drone-base64:latest
  settings:
    base64:
      from_secret: google_key
    destination_file: /gcloud.json
```
