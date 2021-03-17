.class Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;
.super Ljava/lang/Object;
.source "OneHandedController.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHanded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneHandedImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public static synthetic $r8$lambda$JtJyvhl2f8bywCXbN75vnSsuvR4(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$stopOneHanded$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PCTi_FcxGbXnZjLc50i22vuzBp0(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$startOneHanded$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$WmMdxgkgasZChOiP-jwn4by2_JE(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$registerTransitionCallback$4(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1TC8OeDGZ_74h5NiQeakV1ci0c(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$registerGestureCallback$5(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zl22wq236Ib_3QHBagYUi8g30rg(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$setThreeButtonModeEnabled$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNwPQ4pGz_ra-gXURAUwXPsxlZc(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->lambda$stopOneHanded$2(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedController$1;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method

.method private synthetic lambda$registerGestureCallback$5(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$800(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    return-void
.end method

.method private synthetic lambda$registerTransitionCallback$4(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    return-void
.end method

.method private synthetic lambda$setThreeButtonModeEnabled$3(Z)V
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$900(Lcom/android/wm/shell/onehanded/OneHandedController;Z)V

    return-void
.end method

.method private synthetic lambda$startOneHanded$0()V
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    return-void
.end method

.method private synthetic lambda$stopOneHanded$1()V
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void
.end method

.method private synthetic lambda$stopOneHanded$2(I)V
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$400(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    return-void
.end method


# virtual methods
.method public isOneHandedEnabled()Z
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$500(Lcom/android/wm/shell/onehanded/OneHandedController;)Z

    move-result p0

    return p0
.end method

.method public isSwipeToNotificationEnabled()Z
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$600(Lcom/android/wm/shell/onehanded/OneHandedController;)Z

    move-result p0

    return p0
.end method

.method public registerGestureCallback(Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setThreeButtonModeEnabled(Z)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startOneHanded()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneHanded()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneHanded(I)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$700(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
