class nodejs::windows {

package {nodejs:
ensure => installed,
provider => chocolatey,
}
exec {'kill':
cwd => 'C:\Windows\System32\node-js-sample',
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe taskkill /F/IM node.exe',
path => '/usr/local/bin/:/bin',
}
exec {'remove':
cwd => 'C:\Windows\System32',
command => 'rm node-js-sample',
path => '/usr/local/bin/:/bin',
}

file {'C:\Windows\System32\node-js-sample':
source => 'puppet:///modules/nodejs/node-js-sample',
recurse => 'true',
}

exec {'npm install':
cwd => 'C:\Windows\System32\node-js-sample',
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe npm install',
path => '/usr/local/bin/:/bin',
}
exec {'npm start':
cwd => 'C:\Windows\System32\node-js-sample',
command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe npm start',
path => '/usr/local/bin/:/bin',
}
}
