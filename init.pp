class nodejs{
if $::osfamily == 'RedHat' {
include nodejs::centos
}
if $::osfamily == 'Debian' {
include nodejs::ubuntu
}
if $::osfamily == 'Windows' {
include nodejs::windows
}
}
