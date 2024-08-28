# uptime_server

Questo è uno script di monitoraggio per assicurarci che i nostri server siano sempre operativi, lo script può essere schedulato da una sola macchina purchè raggiunga tutti gli altri server.
Lo scopo è quello di fare un solo ping su ogni macchina ogni minuto, quindi schedulato da crontab, se una macchina non risponde genera un file che ci viene inviato tramite mail e ci informa della macchina che non è operativa

ps. per la configurazione della mail è necessario avere un server mail
