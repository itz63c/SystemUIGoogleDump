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
.field private final mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mEnterAnimationDuration:I

.field private final mExitAnimationDuration:I

.field private mHasFadeOut:Z

.field private mInSwipePipToHomeTransition:Z

.field private mLastOneShotAlphaAnimationTime:J

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

.field private final mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

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

.field private final mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field protected final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mToken:Landroid/window/WindowContainerToken;

.field private mWaitForFixedRotation:Z


# direct methods
.method public static synthetic $r8$lambda$-SxEqHRz6jqbcNJ850mNUKXJ1tg(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$onEndOfSwipePipToHomeTransition$4(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1jadn7jNA9Q3TOtJ1Erx_oRwFU4(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$finishResize$8(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3GHmolrv9cUiW05EdcZJoD13uAE(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6-yp2MdVO18U4WTtS_D-lZRYfqs(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$applyEnterPipSyncTransaction$5(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Li7WwEKTS9sSR9sWBB6M-zbl4U(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$onFixedRotationFinished$6(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TcF8zfLVIyF2FoUzKiQvvPsafP0(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$enterPipWithAlphaAnimation$3(Landroid/graphics/Rect;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1EKVG4M9sRB0ABpMRORc6UfM9Y(Lcom/android/wm/shell/pip/PipTaskOrganizer;ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$applyWindowingModeChangeOnExit$2(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hWveODDOkvXq2aMJgZVC8gdpq7U(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$finishResize$7(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$moKiH6gZM3wzBoBP9Fv-WO7wnSw(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->lambda$exitPip$1(Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
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

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 203
    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 223
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    .line 273
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    .line 274
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 275
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 276
    iput-object p4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 277
    iput-object p5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 278
    iput-object p8, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->config_pipEnterAnimationDuration:I

    .line 280
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->config_pipExitAnimationDuration:I

    .line 282
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    .line 283
    iput-object p7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 284
    iput-object p6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 285
    iput-object p11, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 286
    sget-object p1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 287
    iput-object p9, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 288
    iput-object p12, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 289
    iput-object p13, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 292
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    invoke-interface {p13, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {p10, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Landroid/window/WindowContainerToken;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/pip/PipTaskOrganizer;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipMenuController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/pip/PipTaskOrganizer;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-object p0
.end method

.method private animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "IIF)",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "*>;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v11, p4

    .line 1228
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1232
    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v1, :cond_1

    .line 1233
    iget v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    iget v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    invoke-static {v1, v2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v12, v1

    move-object v6, p2

    move-object/from16 v1, p3

    if-eqz v12, :cond_2

    .line 1236
    invoke-direct {p0, v12, v11, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->computeRotatedBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :cond_2
    move-object v7, v1

    const/4 v1, 0x6

    if-ne v11, v1, :cond_3

    .line 1240
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, p1

    .line 1241
    :goto_1
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    move-object v5, p1

    move-object v6, p2

    move/from16 v8, p4

    move/from16 v9, p6

    move v10, v12

    .line 1242
    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    .line 1244
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 1245
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 1246
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    move/from16 v3, p5

    int-to-long v3, v3

    .line 1247
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1248
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v12, :cond_4

    const/4 v2, 0x2

    if-ne v11, v2, :cond_4

    .line 1254
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    :cond_4
    return-object v1

    .line 1229
    :cond_5
    :goto_2
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Abort animation, invalid leash"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 619
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 620
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 621
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    if-eqz p3, :cond_0

    .line 623
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 625
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    if-eqz p2, :cond_1

    .line 627
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_1
    return-void
.end method

.method private applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 890
    :goto_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    .line 889
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 891
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_1

    .line 893
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    :cond_1
    return v0
.end method

.method private applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->getOutPipWindowingMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 429
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 430
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private clearWaitForFixedRotation()V
    .locals 1

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    const/4 v0, 0x0

    .line 776
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private computeRotatedBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1263
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    .line 1264
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1265
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1267
    iget p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    invoke-static {p3, p1, p2, p0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1269
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1270
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1272
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p4
.end method

.method private createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 1064
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 1065
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 1066
    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-object v0
.end method

.method private fadeExistingPip(Z)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-eqz p1, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    .line 765
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 766
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    const/4 v1, 0x1

    .line 767
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 768
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 769
    iget v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    :goto_2
    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    xor-int/2addr p1, v1

    .line 771
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    return-void
.end method

.method private finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePipImmediately()V

    return-void

    .line 1108
    :cond_0
    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p4, v1, :cond_1

    .line 1110
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void

    .line 1114
    :cond_1
    new-instance p4, Landroid/window/WindowContainerTransaction;

    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1115
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

    .line 1123
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz p1, :cond_4

    .line 1125
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->isSeamlessResizeEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 1129
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p3}, Landroid/window/TaskOrganizer;->takeScreenshot(Landroid/window/WindowContainerToken;)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 1130
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 1131
    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 1130
    invoke-virtual {p3, v0, v1, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->reparentAndShowSurfaceSnapshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1132
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p3, p4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 1133
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p4, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    invoke-virtual {p3, p4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_3

    .line 1163
    :cond_5
    invoke-virtual {p0, p4, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V

    .line 1166
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static synthetic lambda$applyEnterPipSyncTransaction$5(Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 627
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$applyWindowingModeChangeOnExit$2(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 432
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

    .line 587
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v3, p1

    .line 588
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    const/4 v0, 0x2

    .line 589
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 590
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 591
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 592
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 596
    sget-object p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void
.end method

.method private synthetic lambda$exitPip$1(Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 408
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 410
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 411
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p4, p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$finishResize$7(Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1145
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 1146
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 1147
    invoke-interface {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 1148
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1149
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$finishResize$8(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1135
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v1

    .line 1136
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1137
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1138
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v1, v3, v3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1139
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 1142
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1143
    iget p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1144
    new-instance p3, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1151
    new-instance p3, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1160
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x4

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    return-void
.end method

.method private synthetic lambda$onEndOfSwipePipToHomeTransition$4(Landroid/graphics/Rect;)V
    .locals 0

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method private synthetic lambda$onFixedRotationFinished$6(Landroid/graphics/Rect;)V
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    return-void
.end method

.method private offsetPip(Landroid/graphics/Rect;III)V
    .locals 7

    .line 1091
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    .line 1092
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "mTaskInfo is not set"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1095
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1096
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    .line 1097
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    return-void
.end method

.method private onEndOfSwipePipToHomeTransition()V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 604
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 606
    new-instance v2, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    return-void
.end method

.method private onTaskAppearedWithFixedRotation()V
    .locals 8

    .line 543
    iget v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 544
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Defer entering PiP alpha animation, fixed rotation is ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 547
    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 549
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 550
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 551
    iput v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 555
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v0, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 557
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v5, 0x2

    .line 558
    iget v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 560
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void
.end method

.method private prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1183
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 1188
    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 1192
    invoke-direct {p0, p4, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyWindowingModeChangeOnExit(Landroid/window/WindowContainerTransaction;I)V

    .line 1198
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p2, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 1199
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p4, p0, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method private removePipImmediately()V
    .locals 3

    .line 463
    :try_start_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 465
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 467
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

    .line 470
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v1, "Failed to remove PiP"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
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
            ">;)",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "*>;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p3

    .line 950
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p0

    if-eqz p7, :cond_1

    .line 954
    invoke-interface {p7, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method private sendOnPipTransitionCancelled(I)V
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionCancelled(I)V

    return-void
.end method

.method private sendOnPipTransitionStarted(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 634
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionStarted(I)V

    return-void
.end method

.method private setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 363
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 364
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object p0

    .line 362
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;FLandroid/util/Size;)V

    return-void
.end method

.method private syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1290
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 1291
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1298
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    .line 1299
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1298
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public applyFinishBoundsResize(Landroid/window/WindowContainerTransaction;I)V
    .locals 0

    .line 1211
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
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

    .line 1311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
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

    .line 1311
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
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

    .line 1314
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

    .line 1315
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

    .line 1316
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

    .line 581
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 582
    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 584
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 585
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTRY_SCHEDULED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 586
    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public exitPip(I)V
    .locals 9

    .line 377
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    sget-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto :goto_2

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    sget-object v2, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 385
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 386
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 387
    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->syncWithSplitScreenBounds(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 390
    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v5}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 391
    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v2, v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 392
    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 395
    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 399
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v4, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 400
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v4, v5}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 403
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 404
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 405
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void

    .line 378
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

    .line 1171
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 1175
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getCurrentOrAnimatingBounds()Landroid/graphics/Rect;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 300
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p0

    .line 304
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

.method public isEntryScheduled()Z
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTRY_SCHEDULED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInPip()Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p0

    return p0
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 781
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    return-void
.end method

.method public onDisplayRotationSkipped()V
    .locals 3

    .line 568
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isEntryScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 572
    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    :cond_0
    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 2

    .line 736
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-nez p1, :cond_0

    return-void

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-ne p1, v0, :cond_2

    .line 740
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    if-eqz p1, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onEndOfSwipePipToHomeTransition()V

    goto :goto_0

    .line 744
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    goto :goto_0

    .line 747
    :cond_2
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERED_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 748
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeExistingPip(Z)V

    goto :goto_0

    .line 749
    :cond_3
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_4

    .line 750
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 751
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object p1

    .line 752
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 753
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 754
    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    .line 759
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->clearWaitForFixedRotation()V

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    .line 725
    iput p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    const/4 p1, 0x1

    .line 726
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 728
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 730
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeExistingPip(Z)V

    :cond_0
    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 802
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 807
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->getCurrentAnimator()Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 808
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 809
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 854
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 855
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 856
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 857
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 862
    :cond_2
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 863
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 864
    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result p2

    if-nez p2, :cond_5

    .line 865
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p2, :cond_4

    .line 869
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 870
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 871
    iget p5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    invoke-static {p4, p2, p5, p0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 872
    invoke-virtual {v0, p4}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 874
    :cond_4
    invoke-virtual {v0, p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 877
    :cond_5
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 878
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 810
    :cond_6
    :goto_1
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    move p2, p4

    :goto_2
    if-eqz p2, :cond_8

    .line 811
    iget-boolean p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p3, :cond_8

    iget-boolean p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    if-eqz p3, :cond_8

    .line 813
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_a

    .line 818
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_9

    .line 824
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p4

    .line 825
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 826
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 827
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 829
    invoke-direct {p0, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionCancelled(I)V

    .line 830
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    .line 835
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    .line 837
    invoke-direct {p0, p1, p4, p2, p5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_b

    .line 841
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 842
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    .line 843
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 846
    :cond_b
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    .line 847
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 10

    const-string v0, "Requires RunningTaskInfo"

    .line 476
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 477
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 478
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 479
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 480
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 481
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 482
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V

    .line 485
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 486
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 490
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz p2, :cond_0

    .line 492
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-interface {p2, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 495
    :cond_0
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    if-eqz p2, :cond_2

    .line 496
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-nez p1, :cond_1

    .line 497
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onEndOfSwipePipToHomeTransition()V

    goto :goto_0

    .line 499
    :cond_1
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Defer onTaskAppeared-SwipePipToHome until end of fixed rotation."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 504
    :cond_2
    iget p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLastOneShotAlphaAnimationTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p2, v2, v4

    if-lez p2, :cond_3

    .line 507
    sget-object p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string v2, "Alpha animation is expired. Use bounds animation."

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iput v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    .line 510
    :cond_3
    iget-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p2, :cond_4

    .line 511
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onTaskAppearedWithFixedRotation()V

    return-void

    .line 515
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v4

    const-string p2, "Missing destination bounds"

    .line 516
    invoke-static {v4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 519
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_6

    .line 520
    iget p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    if-nez p1, :cond_5

    .line 521
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    :cond_5
    return-void

    .line 526
    :cond_6
    iget p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    if-nez p2, :cond_7

    .line 527
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p2, v0}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 528
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {p1, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 530
    iget v8, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 533
    sget-object p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    goto :goto_1

    :cond_7
    if-ne p2, v1, :cond_8

    .line 535
    iget p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    int-to-long p1, p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    .line 536
    iput v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    :goto_1
    return-void

    .line 538
    :cond_8
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

    .line 693
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    const-string v1, "onTaskInfoChanged requires valid existing mToken"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 694
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    sget-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERED_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-eq v0, v1, :cond_0

    .line 695
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Defer onTaskInfoChange in current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    .line 702
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 703
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    move-result-object v1

    .line 702
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setOverrideMinSize(Landroid/util/Size;)V

    .line 704
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz p1, :cond_2

    .line 705
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyPictureInPictureParams(Landroid/app/PictureInPictureParams;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 711
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    .line 710
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "Missing destination bounds"

    .line 712
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    iget v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    return-void

    .line 706
    :cond_2
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
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    sget-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 671
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string v2, "Requires valid WindowContainerToken"

    .line 672
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v3}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 674
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

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->clearWaitForFixedRotation()V

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    const/4 v2, 0x0

    .line 679
    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 680
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 682
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 683
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 684
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {v1}, Lcom/android/wm/shell/pip/PipMenuController;->detach()V

    .line 686
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    if-eqz p0, :cond_2

    .line 687
    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2
    return-void
.end method

.method public registerOnDisplayIdChangeCallback(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    return-void
.end method

.method public removePip()V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 449
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    const/4 v1, 0x5

    .line 451
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 452
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    .line 453
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    .line 454
    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 457
    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void

    .line 442
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

    .line 913
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_0

    .line 914
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 917
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

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

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

    .line 903
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

    .line 927
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_0

    .line 928
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

    .line 931
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    return-void
.end method

.method public scheduleFinishResizePip(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 1027
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

    .line 1049
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$800(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1053
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    if-eqz p3, :cond_1

    .line 1056
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

    .line 1035
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

    .line 1075
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$800(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1078
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_1

    .line 1079
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "skip scheduleOffsetPip, entering pip deferred"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1082
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->offsetPip(Landroid/graphics/Rect;III)V

    .line 1083
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1084
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p4, :cond_2

    .line 1086
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

    .line 965
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_1

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 970
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 972
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 973
    invoke-static {v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->access$700(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 974
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {v1}, Lcom/android/wm/shell/pip/PipMenuController;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v1, p0, v0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->resizePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 977
    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    if-eqz p2, :cond_2

    .line 980
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 966
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

    .line 1000
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1005
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1012
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/PipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1013
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, p0, v0, p2}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1015
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    if-eqz p4, :cond_3

    .line 1018
    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 1006
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->TAG:Ljava/lang/String;

    const-string p1, "Attempted to user resize PIP to or from empty bounds, aborting."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1001
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

    .line 990
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/util/function/Consumer;)V

    return-void
.end method

.method sendOnPipTransitionFinished(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 643
    sget-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERED_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mState:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    if-ne p1, v0, :cond_1

    .line 647
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_1

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 p1, 0x0

    .line 649
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_1
    return-void
.end method

.method public setOneShotAnimationType(I)V
    .locals 2

    .line 331
    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOneShotAnimationType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLastOneShotAlphaAnimationTime:J

    :cond_0
    return-void
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    const/4 v0, 0x2

    .line 344
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionStarted(I)V

    .line 345
    invoke-direct {p0, p1, p3, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/app/PictureInPictureParams;Landroid/content/pm/ActivityInfo;)V

    .line 346
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    .line 355
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mInSwipePipToHomeTransition:Z

    if-eqz p1, :cond_0

    .line 356
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

    .line 1321
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
