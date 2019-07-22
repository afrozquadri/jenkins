if(-not (get-pssnapin VMware.vimautomation.core))

{
add-pssnapin VMware.vimautomation.core

}
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

connect-viserver 192.168.1.171 -user administrator@cloud.local -password Abc@12345

get-vmhost

get-vmhost | export-csv c:\test.txt
