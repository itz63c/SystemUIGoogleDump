.class Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method public static synthetic $r8$lambda$TDrmQrDj2s0mM4sG8iFF9rpYVCU(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->lambda$onClickHandler$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getActionFromView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)Landroid/app/Notification$Action;
    .locals 3

    const p0, 0x10203ac

    .line 178
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "NotifRemoteInputManager"

    if-nez p2, :cond_1

    const-string p0, "Couldn\'t determine notification for click."

    .line 183
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 189
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    .line 190
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    array-length v1, v1

    if-lt v2, v1, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, p2, p0

    .line 197
    iget-object p2, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "actionIntent does not match"

    .line 198
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    const-string p0, "statusBarNotification.getNotification().actions is null or invalid"

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getNotificationForParent(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    .line 235
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 236
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0

    .line 238
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 9

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x102042a

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 250
    instance-of v1, v0, [Landroid/app/RemoteInput;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 251
    check-cast v0, [Landroid/app/RemoteInput;

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    const/4 v0, 0x0

    if-nez v5, :cond_2

    return v0

    .line 260
    :cond_2
    array-length v1, v5

    move-object v6, v2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v5, v2

    .line 261
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v6, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    return v0

    .line 270
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onClickHandler$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)Z
    .locals 2

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    .line 168
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/ActionClickLogger;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/statusbar/ActionClickLogger;->logStartingIntentWithDefaultHandler(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V

    .line 171
    invoke-static {p2, p4, p1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method private logActionClick(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V
    .locals 6

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getActionFromView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    .line 213
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 p2, -0x1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x1020198

    if-ne v0, v2, :cond_1

    if-eqz p3, :cond_1

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 218
    check-cast p3, Landroid/view/ViewGroup;

    .line 219
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, p2

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p1

    .line 222
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p2

    .line 223
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result p2

    .line 225
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 227
    invoke-static {p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p3

    .line 226
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p3

    const/4 v0, 0x1

    .line 229
    invoke-static {v1, p2, p1, v0, p3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v4

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$300(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/NotificationClickNotifier;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 9

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$000(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "NOTIFICATION_CLICK"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getNotificationForParent(Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/ActionClickLogger;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lcom/android/systemui/statusbar/ActionClickLogger;->logInitialClick(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/ActionClickLogger;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ActionClickLogger;->logRemoteInputWasHandled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const/4 p0, 0x1

    return p0

    .line 155
    :cond_0
    invoke-direct {p0, p1, v5, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->logActionClick(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V

    .line 161
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    invoke-direct {p0, p1, v5, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getActionFromView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v0

    :goto_0
    new-instance v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1-$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V

    .line 165
    invoke-interface {v7, p1, p2, v0, v8}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;ZLcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result p0

    return p0
.end method
