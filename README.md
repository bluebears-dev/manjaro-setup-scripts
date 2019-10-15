# Manjaro setup scripts


Script names have convention. It goes as this (`x` specifies the order):
* 0x - core scripts that have to be run first,
* 1x - installation scripts (AUR or simillar),
* 2x - configuration scripts (for example setup `oh-my-zsh` config)

Scripts `21-enable-dynamic-disk` is dependant on your partition setup, specifically if some of your partitions are dynamic.
