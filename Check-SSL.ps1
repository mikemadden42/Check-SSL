# This PowerShell script checks the SSL configuration for sites using the
# Heartbleed test at http://filippo.io/Heartbleed/.

# General information:
# http://heartbleed.com/
# https://www.schneier.com/blog/archives/2014/04/heartbleed.html

# Sites to check the SSL configuration of a given site:
# http://filippo.io/Heartbleed/
# https://www.ssllabs.com/ssltest/
# https://lastpass.com/heartbleed/

# Lists of popular websites, noting if they were affected:
# https://github.com/musalbas/heartbleed-masstest
# http://mashable.com/2014/04/09/heartbleed-bug-websites-affected/

$urls = Get-Content sites.txt
foreach ( $item in $urls ) {
    "http://filippo.io/Heartbleed/#$item"
    Start-Process -FilePath "http://filippo.io/Heartbleed/#$item"
}