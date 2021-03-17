.class Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockDownAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public static synthetic $r8$lambda$R2oQZ9qDcCSHaJPbKY3xJvxNTac(Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->lambda$onPress$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 1213
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v0, 0x10803d4

    const v1, 0x1040396

    .line 1214
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method private synthetic lambda$onPress$0()V
    .locals 0

    .line 1224
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 3

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GlobalActionsDialog"

    const-string v1, "Error while trying to lock device."

    .line 1226
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
