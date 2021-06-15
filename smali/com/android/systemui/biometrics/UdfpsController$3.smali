.class Lcom/android/systemui/biometrics/UdfpsController$3;
.super Landroid/content/BroadcastReceiver;
.source "UdfpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UdfpsController"

    const-string p2, "ACTION_CLOSE_SYSTEM_DIALOGS received"

    .line 284
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->onUserCanceled()V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$3;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    .line 287
    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$600(Lcom/android/systemui/biometrics/UdfpsController;)V

    :cond_0
    return-void
.end method
