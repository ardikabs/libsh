# ⚒️ dotsh

This repository is a collection of shell scripts designed to automate and simplify various tasks. Each script in this collection serves a unique purpose and is designed with efficiency and ease-of-use in mind.

## Installation

You can install the scripts by downloading them from [the release page](https://github.com/ardikabs/dotsh/releases), where they are available as a `scripts.zip` file.

Or you can download it with installer script like below:

```bash
# Normal
curl -s "https://raw.githubusercontent.com/ardikabs/dotsh/main/install.sh" | sudo bash

# With specified version
curl -s "https://raw.githubusercontent.com/ardikabs/dotsh/main/install.sh" | VERSION=latest sudo bash

# With custom script and shared directory
curl -s "https://raw.githubusercontent.com/ardikabs/dotsh/main/install.sh" | SCRIPT_DIR="/path/to/script/bin" SHARED_DIR="/path/to/shared/dir" sudo bash
```

## Script Status

| Name | Status | Documentation |
| ----------- | ------ | ------------- |
| `dpl` | Active | [Link](docs/dpl/README.md) |
| `tfx` | Active | [Link](docs/tfx/README.md) |

## Contributing

> WIP

## License

[MIT](./LICENSE)
