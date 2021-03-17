.class Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    const-string p1, "PeopleSpaceWidgetMgr"

    const-string p2, "onNotificationChannelModified"

    .line 219
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isConversation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgets()V

    :cond_0
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    const-string p2, "PeopleSpaceWidgetMgr"

    const-string v0, "onNotificationPosted"

    .line 180
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    sget-object p2, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->POSTED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetWithNotificationChanged(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationRemoved with reason "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PeopleSpaceWidgetMgr"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    sget-object p2, Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;->REMOVED:Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetWithNotificationChanged(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/people/PeopleSpaceUtils$NotificationAction;)V

    return-void
.end method

.method public onNotificationsInitialized()V
    .locals 2

    const-string v0, "PeopleSpaceWidgetMgr"

    const-string v1, "onNotificationsInitialized"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgets()V

    return-void
.end method
