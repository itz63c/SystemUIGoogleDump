.class Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TvPipNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/tv/TvPipNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBroadcastReceiver"
.end annotation


# instance fields
.field final mIntentFilter:Landroid/content/IntentFilter;

.field mRegistered:Z

.field final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .locals 1

    .line 214
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 217
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;-><init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on(Broadcast)Receive(), action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TvPipNotification"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$300(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;->showPictureInPictureMenu()V

    goto :goto_0

    :cond_0
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$300(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;->closePip()V

    :cond_1
    :goto_0
    return-void
.end method

.method register()V
    .locals 4

    .line 224
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$200(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 227
    invoke-static {v3}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$100(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Landroid/os/Handler;

    move-result-object v3

    .line 226
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method

.method unregister()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->access$200(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method
