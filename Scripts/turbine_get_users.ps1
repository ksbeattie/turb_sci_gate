# Required initial setup

echo setup user accounts
. .\setup.ps1

# Accounts
sqlcmd  -S $SERVER -d $DATABASE -U $USER -P  $PASS -W -Q "SELECT * FROM dbo.Users"