class nodejs::ubuntu {

package {nodejs:
ensure => present,
}
package {npm:
ensure => present,
}

exec {'npm stop':
cwd => '/home/zippyops/node-js-sample/',
command => "pkill -9 node",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/sbin','/bin','/usr/games','/usr/local/games','/snap/bin','/opt/puppetlabs/bin'],
}

exec {'remove node-js-sample':
cwd => '/home/zippyops/',
command => "rm -rf node-js-sample",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/sbin','/bin','/usr/games','/usr/local/games','/snap/bin','/opt/puppetlabs/bin'],
}

file {'/home/zippyops/node-js-sample':
source => 'puppet:///modules/nodejs/node-js-sample',
mode  => '0744',
recurse => 'true',
}

exec {'npminstall':
cwd => '/home/zippyops/node-js-sample/',
command => "npm install",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/sbin','/bin','/usr/games','/usr/local/games','/snap/bin','/opt/puppetlabs/bin'],
}

exec {'npm start':
cwd => '/home/zippyops/node-js-sample/',
command => "npm start",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/sbin','/bin','/usr/games','/usr/local/games','/snap/bin','/opt/puppetlabs/bin'],
}

}

