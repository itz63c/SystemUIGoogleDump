.class public Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;
.super Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;
.source "NotificationRemoteInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SmartReplyHistoryExtender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    return-void
.end method


# virtual methods
.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    if-eqz p2, :cond_3

    .line 778
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 786
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRemoved()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x3

    const-string v0, "NotifRemoteInputManager"

    .line 790
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keeping notification around after sending smart reply "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 791
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 797
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p2, p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 798
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$400(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/SmartReplyController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_0
    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method
