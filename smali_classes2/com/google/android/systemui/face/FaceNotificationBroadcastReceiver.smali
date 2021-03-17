.class public Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceNotificationBroadcastReceiver.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "FaceNotificationBCR"

    const-string p2, "Received broadcast with null action."

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const-string p2, "face_action_show_reenroll_dialog"

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/systemui/face/FaceNotificationDialogFactory;->createReenrollDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
