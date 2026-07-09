# homebrew-snowflake-cli

Homebrew formula allowing for installation of Snowflake CLI using homebrew tap.

Note: To file an issue use [Snowflake CLI](https://github.com/snowflakedb/snowflake-cli/issues) repository.


## Development

To update the formula run:
```shell
bash update.sh
```

### Testing casks locally

Register the local repo as a tap and install a cask from it:
```shell
brew tap snowflakedb/snowflake-cli "$(pwd)"
brew install --cask snowflakedb/snowflake-cli/snowflake-cli
```

To test the legacy `snowcli` cask instead:
```shell
brew tap snowflakedb/snowflake-cli "$(pwd)"
brew install --cask snowflakedb/snowflake-cli/snowcli
```

To clean up afterwards:
```shell
brew uninstall --cask snowflake-cli  # or snowcli
brew untap snowflakedb/snowflake-cli
```
