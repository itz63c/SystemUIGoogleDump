.class public Lcom/android/wm/shell/pip/PipTaskOrganizer;
.super Ljava/lang/Object;
.source "PipTaskOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipTaskOrganizer$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PipTaskOrganizer"


# instance fields
.field private final mEnterExitAnimationDuration:I

.field private mInSwipePipToHomeTransition:Z

.field private mLeash:Landroid/view/SurfaceControl;

.field protected final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mNextRotation:I

.field private mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

.field private mOneShotAnimationType:I

.field private mPictureInPictureParams:Landroid/app/PictureInPictureParams;

.field private final mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

.field private final mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field private final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field private final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private final mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

.field private final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field private final mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field private mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private final mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field protected final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mToken:Landroid/window/WindowContainerToken;

.field private mWaitForFixedRotation:Z


# direct methods
.method public static synthetic $r8$lambda$2TcyVxHmVScqWwhD-SN0jKSvlq4(Lcom/android/wm/shell/pip/PipTaskOrganizer;ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$applyWindowingModeChangeOnExit$1(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3GHmolrv9cUiW05EdcZJoD13uAE(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$SONKpUfGTJPhFPFM-JmP9bqY46s(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$onTaskAppeared$2(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TcF8zfLVIyF2FoUzKiQvvPsafP0(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$enterPipWithAlphaAnimation$3(Landroid/graphics/Rect;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipMenuController;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 177
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    .line 215
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 216
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 217
    iput-object p4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 218
    iput-object p7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->config_pipResizeAnimationDuration:I

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    .line 221
    iput-object p6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 222
    iput-object p5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 223
    iput-object p10, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 224
    sget-object p1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator-$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 225
    iput-object p8, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 226
    iput-object p11, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 227
    iput-object p12, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 230
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    invoke-interface {p12, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {p9, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/app/PictureInPictureParams;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipBoundsState;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Lcom/android/wm/shell/pip/PipTaskOrganizer$State;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-object p1
.end method

.method private animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)V
    .locals 12

    move-object v0, p0

    move/from16 v11, p4

    .line 1038
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1042
    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v1, :cond_1

    .line 1043
    iget v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    const/4 v1, 0x6

    if-ne v11, v1, :cond_2

    .line 1046
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 1047
    :goto_1
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    .line 1048
    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    .line 1050
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 1051
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    move/from16 v1, p5

    int-to-long v1, v1

    .line 1052
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1039
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Abort animation, invalid leash"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 497
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 499
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 500
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 502
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    invoke-direct {v1, p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    return-void
.end method

.method private applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 700
    :goto_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    .line 699
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 701
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_1

    .line 703
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    :cond_1
    return v0
.end method

.method private applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getOutPipWindowingMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 358
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 359
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 872
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 873
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 874
    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-object v0
.end method

.method private finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePipImmediately()V

    return-void

    .line 916
    :cond_0
    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p4, v1, :cond_1

    .line 918
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void

    .line 922
    :cond_1
    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 923
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    const/4 p1, 0x7

    const/4 v0, 0x0

    if-eq p3, p1, :cond_3

    const/4 p1, 0x6

    if-eq p3, p1, :cond_3

    const/16 p1, 0x8

    if-ne p3, p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 931
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 932
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->isSeamlessResizeEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 936
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3}, Landroid/window/TaskOrganizer;->takeScreenshot(Landroid/window/WindowContainerToken;)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 937
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 938
    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 937
    invoke-virtual {p3, v0, v1, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->reparentAndShowSurfaceSnapshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 939
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    invoke-virtual {p3, p4, v0}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    goto :goto_3

    .line 975
    :cond_5
    invoke-virtual {p0, p4, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V

    .line 978
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$applyWindowingModeChangeOnExit$1(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 361
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSecondaryRoot()Landroid/window/WindowContainerToken;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p0, p1, p3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_0
    return-void
.end method

.method private synthetic lambda$enterPipWithAlphaAnimation$3(Landroid/graphics/Rect;J)V
    .locals 6

    .line 481
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v3, p1

    .line 482
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    const/4 v0, 0x2

    .line 483
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 484
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 485
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 489
    sget-object p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x4

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$2(Landroid/graphics/Rect;)V
    .locals 0

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    .line 427
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method private offsetPip(Landroid/graphics/Rect;III)V
    .locals 7

    .line 899
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    .line 900
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "mTaskInfo is not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 903
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 904
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    .line 905
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)V

    return-void
.end method

.method private prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 992
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 997
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    .line 1003
    :cond_1
    invoke-direct {p0, p4, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    .line 1009
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 1010
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p0, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private removePipImmediately()V
    .locals 3

    .line 389
    :try_start_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 391
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 393
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->removeRootTasksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 396
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Failed to remove PiP"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "F",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p3

    .line 760
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)V

    if-eqz p7, :cond_1

    .line 763
    invoke-interface {p7, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendOnPipTransitionCancelled(I)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionCancelled(I)V

    return-void
.end method

.method private sendOnPipTransitionFinished(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 526
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERED_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method private sendOnPipTransitionStarted(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 518
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 520
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionStarted(I)V

    return-void
.end method

.method private setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 298
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 299
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object p0

    .line 297
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;FLandroid/util/Size;)V

    return-void
.end method

.method private syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1068
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 1069
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    .line 1077
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1076
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 1022
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTaskInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1089
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLeash="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOneShotAnimationType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPictureInPictureParams="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 477
    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 479
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 480
    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitPip(I)V
    .locals 8

    .line 312
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    sget-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto :goto_2

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    sget-object v1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 320
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 322
    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 325
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v4}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 326
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v1, v7}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 327
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 330
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v5, v3}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 334
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v3, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 335
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v3, v4}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 336
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v4, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V

    invoke-virtual {v3, v0, v4}, Landroid/window/TaskOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    return-void

    .line 313
    :cond_3
    :goto_2
    sget-object p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to exitPip in current state mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finishResizeForMenu(Landroid/graphics/Rect;)V
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 984
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getCurrentOrAnimatingBounds()Landroid/graphics/Rect;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 238
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getOutPipWindowingMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDeferringEnterPipAnimation()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPip()Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p0

    return p0
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 2

    .line 600
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 603
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    :cond_0
    const/4 p1, 0x0

    .line 605
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    .line 594
    iput p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    const/4 p1, 0x1

    .line 595
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 626
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 631
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 632
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 633
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 675
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 676
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 677
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 682
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 683
    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 684
    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result p2

    if-nez p2, :cond_4

    .line 685
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 687
    :cond_4
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 688
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 634
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-nez p2, :cond_7

    .line 638
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    if-eqz v0, :cond_6

    .line 644
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p2

    .line 645
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 647
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 649
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    .line 650
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 655
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    .line 657
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 661
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 662
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    .line 663
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 666
    :cond_8
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 667
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 9

    const-string v0, "Requires RunningTaskInfo"

    .line 402
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 404
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 405
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 406
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 407
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 408
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V

    .line 411
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 412
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 416
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz p2, :cond_0

    .line 418
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-interface {p2, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 421
    :cond_0
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 422
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 424
    new-instance p2, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    .line 429
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    return-void

    .line 433
    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p2, :cond_2

    .line 436
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 437
    invoke-interface {p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 438
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 439
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 440
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    .line 444
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string p2, "Missing destination bounds"

    .line 445
    invoke-static {v3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 448
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_4

    .line 449
    iget p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    if-nez p1, :cond_3

    .line 450
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    :cond_3
    return-void

    .line 455
    :cond_4
    iget p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    if-nez p2, :cond_5

    .line 456
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p2, v0}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 457
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {p1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 459
    iget v7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    .line 462
    sget-object p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    .line 464
    iget p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    int-to-long p1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    .line 465
    iput v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    :goto_0
    return-void

    .line 467
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized animation type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const-string v1, "onTaskInfoChanged requires valid existing mToken"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    .line 571
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 572
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setOverrideMinSize(Landroid/util/Size;)V

    .line 573
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz p1, :cond_1

    .line 574
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 580
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    .line 579
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "Missing destination bounds"

    .line 581
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 582
    iget v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void

    .line 575
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored onTaskInfoChanged with PiP param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string v1, "Requires valid WindowContainerToken"

    .line 550
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 551
    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 552
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized token: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 556
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    const/4 v1, 0x0

    .line 557
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 558
    sget-object v2, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 559
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 560
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {v1}, Lcom/android/wm/shell/pip/PipMenuController;->detach()V

    .line 562
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz p0, :cond_2

    .line 563
    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2
    return-void
.end method

.method public registerOnDisplayIdChangeCallback(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    return-void
.end method

.method public removePip()V
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 378
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    const/4 v1, 0x5

    .line 379
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 380
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterExitAnimationDuration:I

    int-to-long v1, v1

    .line 381
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 383
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void

    .line 371
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to removePip in current state mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleAnimateResizePip(Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 723
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_0

    .line 724
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move v6, p3

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;IFLjava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "IF",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 737
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_0

    .line 738
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v6, p3

    move-object v7, p5

    .line 741
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$900(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    if-eqz p3, :cond_1

    .line 864
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public scheduleOffsetPip(Landroid/graphics/Rect;IILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$900(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_1

    .line 887
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleOffsetPip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 890
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->offsetPip(Landroid/graphics/Rect;III)V

    .line 891
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 892
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p4, :cond_2

    .line 894
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public scheduleResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_1

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 778
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 780
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 781
    invoke-static {v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 782
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {v1}, Lcom/android/wm/shell/pip/PipMenuController;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v1, p0, v0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->resizePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 785
    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    if-eqz p2, :cond_2

    .line 788
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 774
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Abort animation, invalid leash"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_2

    .line 813
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 819
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 820
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/PipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 821
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, p0, v0, p2}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 823
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    if-eqz p4, :cond_3

    .line 826
    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 814
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Attempted to user resize PIP to or from empty bounds, aborting."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 809
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Abort animation, invalid leash"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 798
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/util/function/Consumer;)V

    return-void
.end method

.method public setOneShotAnimationType(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    return-void
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    const/4 v0, 0x2

    .line 276
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    .line 277
    invoke-direct {p0, p1, p3, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 281
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    .line 290
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public supportSizeCompatUI()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1099
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
