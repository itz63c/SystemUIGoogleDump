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
.field final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public static synthetic $r8$lambda$-2OE3Z96H_HGB9Y0XvbkZd1WSOc(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$showPictureInPictureMenu$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$-5zDqC7Ju6FP4BME1mtTIc5pbfI(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onDensityOrFontScaleChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$-EJeB3_CJ_oKJiBav0jXvTQhe6A(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$stopSwipePipToHome$13(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4A5h6oJwyHELO0B_7M3VYzOHOVU(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;[Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$startSwipePipToHome$12([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$FWjxleeuaEVsugLOPIJS2Ms9w04(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onSystemUiStateChanged$5(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNY7v1anQpLXE-Xgbw2I_u2u154(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setShelfHeight$7(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLAq71XCs03hGYtg8ovTks4zD4Q(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RiRK-MMn_iIP_gbhn0wGOfUY5Ek(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setPinnedStackAnimationListener$8(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKWJ57qC9aUxyOZ2nsu0yd80RHg(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setPinnedStackAnimationType$9(I)V

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

.method public static synthetic $r8$lambda$ovUdJ6lnLR0iKYdiaD6Yh3zX68o(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$setPipExclusionBoundsChangeListener$10(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sf_cnYWrFMxh4SnHG8xl--QxHWY(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->lambda$dump$14(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$1;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$dump$14(Ljava/io/PrintWriter;)V
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1200(Lcom/android/wm/shell/pip/phone/PipController;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$hidePipMenu$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$2300(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onDensityOrFontScaleChanged$3()V
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$2200(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$onOverlayChanged$4()V
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$2100(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$onSystemUiStateChanged$5(ZI)V
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$2000(Lcom/android/wm/shell/pip/phone/PipController;ZI)V

    return-void
.end method

.method private synthetic lambda$registerSessionListenerForCurrentUser$6()V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$1900(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationListener$8(Ljava/util/function/Consumer;)V
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1700(Lcom/android/wm/shell/pip/phone/PipController;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationType$9(I)V
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1600(Lcom/android/wm/shell/pip/phone/PipController;I)V

    return-void
.end method

.method private synthetic lambda$setPipExclusionBoundsChangeListener$10(Ljava/util/function/Consumer;)V
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1500(Lcom/android/wm/shell/pip/phone/PipController;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setShelfHeight$7(ZI)V
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$1800(Lcom/android/wm/shell/pip/phone/PipController;ZI)V

    return-void
.end method

.method private synthetic lambda$showPictureInPictureMenu$11()V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->showPictureInPictureMenu()V

    return-void
.end method

.method private synthetic lambda$startSwipePipToHome$12([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V
    .locals 6

    .line 723
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->access$1400(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-void
.end method

.method private synthetic lambda$stopSwipePipToHome$13(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$1300(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PipController"

    const-string p1, "Failed to dump PipController in 2s"

    .line 746
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSystemUiStateChanged(ZI)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSessionListenerForCurrentUser()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPinnedStackAnimationListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPinnedStackAnimationType(I)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;I)V

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

    .line 704
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShelfHeight(ZI)V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .locals 11

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object v2, p0

    .line 722
    :try_start_0
    iget-object v1, v2, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v9, v1, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v10, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda13;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;[Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V

    invoke-interface {v9, v10}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "PipController"

    const-string v2, "Failed to start swipe pip to home"

    .line 727
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 729
    aget-object v0, v0, v1

    return-object v0
.end method

.method public stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
