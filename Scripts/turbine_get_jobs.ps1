# Required initial setup
. .\setup.ps1
echo Select all jobs

# Accounts
sqlcmd -d $DATABASE -U $USER -P  $PASS -W -Q "SELECT * FROM dbo.Jobs"