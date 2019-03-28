class nodejs::windows {

package {nodejs:
ensure => installed,
provider => chocolatey,
}

exec {'kill':
cwd => 'C:\WINDOWS\system32',
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe taskkill /IM node.exe /F',
}

file {'C:\node-js-sample':
source => 'puppet:///modules/nodejs/node-js-sample',
mode => '0755',
recurse => 'true',
}

exec {'npm install':
cwd => 'C:\node-js-sample',
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe npm install',
path => 'C:\Program Files\nodejs',
}
exec {'npm start':
cwd => 'C:\node-js-sample',
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe npm start',
path => 'C:\Program Files\nodejs',
}
}

