.class Lcom/android/wm/shell/pip/phone/PipController$PipImpl;
.super Ljava/lang/Object;
.source "PipController.java"

# interfaces
.implements Lcom/android/wm/shell/pip/Pip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipImpl"
.end annotation


# instance fields
.field private mIPip:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public static synthetic $r8$lambda$-5zDqC7Ju6FP4BME1mtTIc5pbfI(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onDensityOrFontScaleChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$FWjxleeuaEVsugLOPIJS2Ms9w04(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onSystemUiStateChanged$5(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$HrGKbYL0fDHOzv9jmqZ6mmxkPu8(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setPipExclusionBoundsChangeListener$9(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIK2_B9VSUIQLN_1UsuYknEHdmc(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$showPictureInPictureMenu$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$QLAq71XCs03hGYtg8ovTks4zD4Q(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOvczKyoJ1B1yYfXXxWzy9XzX44(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$dump$11(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fEVI0yXMAbdmnVRp77lwNQnKCKw(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setPinnedStackAnimationType$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8p8d97MRcBHmbpTGLvXcH1AOVQ(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$registerSessionListenerForCurrentUser$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$mAWSefAZ5yO1Lz9dhf1YXo_nbIY(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$hidePipMenu$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oduhMJpnGZyFHgRbVvbh6ACP5n8(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onOverlayChanged$4()V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$dump$11(Ljava/io/PrintWriter;)V
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1200(Lcom/android/wm/shell/pip/phone/PipController;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$hidePipMenu$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1900(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onDensityOrFontScaleChanged$3()V
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1800(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$onOverlayChanged$4()V
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1700(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$onSystemUiStateChanged$5(ZI)V
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$1600(Lcom/android/wm/shell/pip/phone/PipController;ZI)V

    return-void
.end method

.method private synthetic lambda$registerSessionListenerForCurrentUser$6()V
    .locals 0

    .line 764
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1500(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationType$8(I)V
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1300(Lcom/android/wm/shell/pip/phone/PipController;I)V

    return-void
.end method

.method private synthetic lambda$setPipExclusionBoundsChangeListener$9(Ljava/util/function/Consumer;)V
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$200(Lcom/android/wm/shell/pip/phone/PipController;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setPipExclusionBoundsChangeCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showPictureInPictureMenu$10()V
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->showPictureInPictureMenu()V

    return-void
.end method


# virtual methods
.method public createExternalInterface()Lcom/android/wm/shell/pip/IPip;
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->mIPip:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->invalidate()V

    .line 715
    :cond_0
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->mIPip:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PipController"

    const-string p1, "Failed to dump PipController in 2s"

    .line 803
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemUiStateChanged(ZI)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSessionListenerForCurrentUser()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPinnedStackAnimationType(I)V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
