.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionsDialogLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1970
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1971
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 1972
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 1977
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 1980
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 1981
    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1982
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2202(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)Z

    .line 1983
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "reason"

    .line 1973
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "globalactions"

    .line 1974
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1975
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    return-void
.end method