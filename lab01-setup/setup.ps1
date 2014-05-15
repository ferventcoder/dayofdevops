$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (! ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))) {
  Write-Host -ForegroundColor Red "You must run this script as an administrator."
  Exit 1
}

$PuppetInstalled = $false
try {
  $ErrorActionPreference = "Stop";
  Get-Command puppet | Out-Null
  $PuppetInstalled = $true
  $PuppetVersion=&puppet "--version"
  Write-Host "Puppet $PuppetVersion is installed. This process does not ensure the exact version or at least version specified, but only that puppet is installed."
} catch {
  Write-Host "Puppet is not installed, continuing..."
}

if (!($PuppetInstalled)) {
  # install puppet
  #http://docs.puppetlabs.com/windows/installing.html#automated-installation
  $install_args = "/qn /norestart /i `"https://downloads.puppetlabs.com/windows/puppet-3.5.1.msi`" PUPPET_AGENT_STARTUP_MODE=Manual"
  Start-Process -FilePath msiexec.exe -ArgumentList $install_args -Wait -PassThru
}
# Update path
$env:PATH+=";${env:SystemDrive}\Program Files (x86)\Puppet Labs\Puppet\bin;${env:SystemDrive}\Program Files\Puppet Labs\Puppet\bin;"

# now run the scripts for setup
puppet apply manifests\setup.pp --modulepath .\modules
