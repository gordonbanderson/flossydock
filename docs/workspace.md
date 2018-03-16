# WorkSpace

## Fixing PHP Files
### Check PHP Files
```bash
vendor/bin/phpcs --standard=PSR2 opencalais/src/
```

### Fix PHP Files
```bash
vendor/bin/phpcs --standard=PSR2 opencalais/src/
```




# @TODO
Add these bash functions

```
check_psr2() {
	vendor/bin/phpcs --standard=PSR2 $1
}

fix_psr2() {
	vendor/bin/phpcbf --standard=PSR2 $1
}
```
