## site.pp ##

File { backup => false }


node default {
if $::osfamily == 'Windows' {
include chocolatey
}
include nodejs


#notify {"this is puppetmaster $servername":}
#}

#node winchefnode.zippyops.com {
#pspackageprovider {'Nuget':
 # ensure   => 'present',
  #version  => '2.8.5.208',
  #provider => 'windowspowershell',
#}

#psrepository { 'my-internal-repo':
 # ensure              => present,
  #source_location     => 'http://myrepo.corp.com/api/nuget/powershell',
  #installation_policy => 'trusted',
  #provider            => 'windowspowershell',
#}
#package { 'nameOfInternallyDevelopedModule':
 # ensure   => '1.0.5',
 # source   => 'my-internal-repo',
 # provider => 'windowspowershell',
#}
#package { 'Pester':
 # ensure   => '4.0.3',
 # source   => 'PSGallery',
 # provider => 'powershellcore',
#}

#notify {"this is puppetmaster $servername":}
#include local_security_policy
#exec {'c:\\cUserRight.psm1':
    # if you want this to only run under certain conditions, use the 'unless' or onlyif'
#    path     => 'C:\Program Files (x86)\WindowsPowerShell\Modules\cUserRightsAssignment\1.0.2\DSCResources\cUserRight',
#    command  => './cUserRight.psm1',
#    logoutput => true,
#    refreshonly => true,
#    provider => powershell
#  }
#local_security_policy { 'Access this computer from the network':
#  ensure         => 'present',
#  policy_setting => 'SeNetworkLogonRight',
#  policy_type    => 'Privilege Rights',
#  policy_value   => '*S-1-1-0,*S-1-5-32-544,*S-1-5-32-545,*S-1-5-32-551,*S-1-5-32-583',
#}



#}

} 
