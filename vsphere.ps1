Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

connect-viserver vc1.lab.local -user administrator@cloud.local -password Abc@12345

get-vmhost | export-csv c:\test.txt
