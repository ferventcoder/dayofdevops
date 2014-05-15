# == Class: virtualbox::repo::windows
#
# === Authors
#
# Rob Reynolds
#
class virtualbox::repo::windows(
  $baseurl,
  $version = '4.3.10',
  $build = '93012'
) {

    $vbox_filename = "VirtualBox-${version}-${build}-Win.exe"
    $vbox_source   = "${::ostempdir}\\${vbox_filename}"
    $download_command = "(New-Object Net.WebClient).DownloadFile('${baseurl}/${version}/${vbox_filename}', '${vbox_source}')"

    exec { 'virtualbox-download':
      command => "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -ExecutionPolicy Unrestricted -Command \"${download_command}\"",
      creates => $vbox_source,
      timeout => 0,
    } ->
    package {"Oracle VM VirtualBox 4.3.10":
      source => $vbox_source,
      install_options => ['-s','-l','-msiparams','REBOOT=ReallySuppress'],
      provider => windows,
    }
  }
