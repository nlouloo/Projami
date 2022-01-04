 
 
<?php
// 
// File location : /pvol_files/files/config/parameters.php
// =======================================================================================
// Automatically generated parameter file  getenv("LANGUAGE")
// =======================================================================================
$paramDbType =        'mysql';  
$paramDbHost =        getenv("SCAPPDB_SERVICE_HOST");  
$paramDbPort =        getenv("SCAPPDB_SERVICE_PORT_MARIADB");  
$paramDbUser =        getenv("MYSQL_USER");        
$paramDbPassword =    getenv("MYSQL_PASSWORD");  
$paramDbName =        getenv("MYSQL_DATABASE");    
$paramDbDisplayName = 'Digital Supply';  
$paramDbPrefix =      '';
$SslKey =             '';
$SslCert = '';
$SslCa = '';
$paramLdap_allow_login = 'false';
$paramLdap_base_dn = 'dc=mydomain,dc=com';
$paramLdap_host = 'localhost';
$paramLdap_port = '389';
$paramLdap_version = '3';
$paramLdap_search_user = 'cn=Manager,dc=mydomain,dc=com';
$paramLdap_search_pass = 'secret';
$paramLdap_user_filter = 'uid=%USERNAME%';
$paramMailSmtpServer = 'localhost';
$paramMailSmtpPort = '25';
$paramMailSendmailPath = '';
$paramPasswordMinLength = '5';
$paramDefaultLocale = 'en';
$paramDefaultTimezone = 'Europe/Paris';
$currency = '€';
$currencyPosition = 'after';
$paramAttachmentDirectory = '/pvol_files/files/attach/';   
$documentRoot = '/pvol_files/files/documents/';  
$paramAttachmentMaxSize = '1485760';  
$AttachmentMaxSizeMail = '1024000';
$paramReportTempDirectory = '/pvol_files/files/report/';  
$paramMemoryLimitForPDF = '512';
$logFile = '/pvol_files/files/logs/projeqtor_${date}.log';  
$logLevel = '1';
?>
