
```table-of-contents
```
### Variables:
| Description:                      | Variable:                                |
| --------------------------------- | ---------------------------------------- |
| Run as user.                      | XDG_RUNTIME_DIR=/run/user/1000           |
| Disable mailing.                  | MAILTO=""                                |
| Gives system access to directory. | PATH=/bin:/usr/bin:/home/soders/example/ |
### Jobs:
| Description:                                               | Job:                                            |
| ---------------------------------------------------------- | ----------------------------------------------- |
| Deletes files that have been in trash for more than 1 day. | @daily /usr/bin/trash-empty 1 > /dev/null 2>&1& |
