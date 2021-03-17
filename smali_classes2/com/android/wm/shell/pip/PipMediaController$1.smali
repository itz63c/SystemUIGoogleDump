.class Lcom/android/wm/shell/pip/PipMediaController$1;
.super Landroid/content/BroadcastReceiver;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/PipMediaController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/pip/PipMediaController;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.wm.shell.pip.PLAY"

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 93
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    :cond_0
    const-string p2, "com.android.wm.shell.pip.PAUSE"

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0

    :cond_1
    const-string p2, "com.android.wm.shell.pip.NEXT"

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto :goto_0

    :cond_2
    const-string p2, "com.android.wm.shell.pip.PREV"

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipMediaController;->access$000(Lcom/android/wm/shell/pip/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_3
    :goto_0
    return-void
.end method
