# Required initial setup

echo select all consumers
. .\setup.ps1

# Accounts
sqlcmd -S $SERVER -d $DATABASE -U $USER -P  $PASS -W -Q "SELECT * FROM dbo.Consumers"