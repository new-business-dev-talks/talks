//: *Framework: UserNotifications*
/*:
****

 ##### Visão geral

 - Framework **UserNotifications**
 - Termo **Local Notifications** é uma variação do **UserNotifications**
 - Além de **Local Notifications** também tem **Remote Notifications**
 - Em notificações locais, o aplicativo cria o conteúdo e especifica uma das condições:
     - Horário: *UNTimeIntervalNotificationTrigger*
     - Local: *UNLocationNotificationTrigger*
     - Data: *UNCalendarNotificationTrigger*
 - As notificações devem enviar informações importantes aos usuários
 - São executadas independentemente se o aplicativo estiver em execução ou não
 - Podem exibir um alerta, tocar um som ou adicionar um badge no ícone do aplicativo
 - O framework faz todas as tentativas para entregar as notificações, mas a entrega não é garantida

 ### Devem ser utilizadas com responsabilidade

 Seguindo as recomendações da Apple:
 - Enviar notificações apenas quando forem relevantes
 - Não enviar spam
 - Não enviar notificações para aumentar o tráfego
 */

//: [Previous](@previous) | [Next](@next)
