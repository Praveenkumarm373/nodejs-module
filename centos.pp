class nodejs::centos {

package {epel-release:
ensure => present,
}
package {nodejs:
ensure => present,
}
package {npm:
ensure => present,
}

exec {'npm stop':
cwd => '/home/zippyops/node-js-sample/',
command => "pkill -9 node",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/opt/puppetlabs/bin','/root/bin'],
}

exec {'remove node-js-sample':
cwd => '/home/zippyops/',
command => "rm -rf node-js-sample",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/opt/puppetlabs/bin','/root/bin'],
}

file {'/home/zippyops/node-js-sample':
source => 'puppet:///modules/nodejs/node-js-sample',
mode  => '0744',
recurse => 'true',
}

exec {'npminstall':
cwd => '/home/zippyops/node-js-sample/',
command => "npm install",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/opt/puppetlabs/bin','/root/bin'],
}

exec {'npm start':
cwd => '/home/zippyops/node-js-sample/',
command => "npm start",
path=> ['/usr/local/sbin','/usr/local/bin','/usr/sbin','/usr/bin','/opt/puppetlabs/bin','/root/bin'],
}

}
