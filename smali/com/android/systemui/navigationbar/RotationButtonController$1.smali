.class Lcom/android/systemui/navigationbar/RotationButtonController$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/RotationButtonController;


# direct methods
.method public static synthetic $r8$lambda$ZDqFx9AFCcqcToUU_dQv-zEl2Qo(Lcom/android/systemui/navigationbar/RotationButtonController$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController$1;->lambda$onRotationChanged$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRotationChanged$0(I)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->access$200(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->access$300(Lcom/android/systemui/navigationbar/RotationButtonController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationLockedAtAngle(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->access$400(Lcom/android/systemui/navigationbar/RotationButtonController;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->access$400(Lcom/android/systemui/navigationbar/RotationButtonController;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$1;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->access$100(Lcom/android/systemui/navigationbar/RotationButtonController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/RotationButtonController$1-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController$1-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
