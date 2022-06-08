Add-Content -path C:/Users/dev/.ssh/config -value @"

Host ${hostname}
    HostName ${hostname}
    User ${user}
    IdentityFile ${identityfile}
"@