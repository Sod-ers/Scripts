
```table-of-contents
```
### Variables:
| Variable:                      | Description:     |
| ------------------------------ | ---------------- |
| XDG_RUNTIME_DIR=/run/user/1000 | Run as user.     |
| MAILTO=""                      | Disable mailing. |
### Jobs:
| Job:                                            | Description:                                               |
| ----------------------------------------------- | ---------------------------------------------------------- |
| @daily /usr/bin/trash-empty 1 > /dev/null 2>&1& | Deletes files that have been in trash for more than 1 day. |
