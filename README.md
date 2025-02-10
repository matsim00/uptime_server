# Script di Monitoraggio

Questo script è progettato per monitorare lo stato di operatività dei nostri server. Può essere eseguito su una sola macchina, purché questa abbia accesso a tutti gli altri server da monitorare. Lo script esegue un ping su ogni macchina ogni minuto (quando schedulato tramite `crontab`).

In caso di mancata risposta da parte di una macchina, viene generato un file di log e inviato via email, informandoci del server che non è operativo.

## Requisiti

- **il Server** dove viene schedulato lo script deve poter raggiungere tutti gli altri server
- **Server di posta**: per la configurazione dell'invio delle email, è necessario avere un server di posta configurato correttamente.

## Note aggiuntive

- Lo script è pensato per essere eseguito periodicamente tramite `crontab` su una macchina centrale.
