# auto_ls.zsh
A simple script to auto-ls when changing directories

By default, auto_ls will use `ls` unless a popular equivalent is found:
<ul>
  <li>eza</li>
  <li>colorls</li>
  <li>lsd</li>
</ul>

The environment variable `AUTOLS_CMD` can be exported manually
to override the defaults.

```zsh
export AUTOLS_CMD="ls -AG --color=always"
```
