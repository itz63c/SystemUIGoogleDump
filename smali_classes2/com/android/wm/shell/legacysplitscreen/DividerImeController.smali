.class Lcom/android/wm/shell/legacysplitscreen/DividerImeController;
.super Ljava/lang/Object;
.source "DividerImeController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field private mAdjusted:Z

.field private mAdjustedWhileHidden:Z

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mHiddenTop:I

.field private mImeWasShown:Z

.field private mLastAdjustTop:I

.field private mLastPrimaryDim:F

.field private mLastSecondaryDim:F

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mPaused:Z

.field private mPausedTargetAdjusted:Z

.field private mSecondaryHasFocus:Z

.field private mShownTop:I

.field private final mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private mTargetAdjusted:Z

.field private mTargetPrimaryDim:F

.field private mTargetSecondaryDim:F

.field private mTargetShown:Z

.field private final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static synthetic $r8$lambda$0zoGRSniJriOBtdW3Mh-yX3lZ_A(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FPsLA1QfnMwsoU3OMou_1_JX_i0(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->lambda$pause$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kH8bS5ohAqD7CQ76DQaDBtSUdEY(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->lambda$resume$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/TaskOrganizer;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    .line 54
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    .line 61
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 68
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    .line 72
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    .line 74
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    .line 75
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 81
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjustedWhileHidden:Z

    .line 98
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 99
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 100
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 101
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    return-object p0
.end method

.method private getSecondaryHasFocus(I)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    return-object p0
.end method

.method private isDividerVisible()Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$pause$1()V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 386
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 389
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    .line 390
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    .line 391
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    .line 392
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$resume$2()V
    .locals 3

    .line 401
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 405
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    .line 406
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    .line 407
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    .line 408
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->finishAnimations()V

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    .line 414
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    return-void
.end method

.method private synthetic lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 341
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 342
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 343
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 344
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private onEnd(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 317
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    .line 318
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_0

    .line 319
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 320
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    .line 321
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    :cond_1
    return-void
.end method

.method private onProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 286
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    .line 287
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez v1, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v1

    .line 289
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    sub-float v2, v3, p1

    .line 290
    :goto_0
    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    int-to-float v5, v4

    mul-float/2addr v5, v2

    sub-float v2, v3, v2

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v7, v6

    mul-float/2addr v2, v7

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 291
    invoke-virtual {v1, v2, v6, v4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 292
    iget-object v2, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    sub-float/2addr v3, p1

    const/4 v1, 0x1

    .line 296
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v1, 0x0

    .line 298
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    mul-float/2addr v2, v3

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    mul-float/2addr p1, p0

    add-float/2addr v2, p1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    return-void
.end method

.method private startAsyncAnimation()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 329
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x113

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 331
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq v0, v1, :cond_2

    .line 332
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDimTargets()V
    .locals 5

    .line 135
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 136
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 137
    :goto_0
    iput v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    if-nez v1, :cond_1

    .line 138
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 139
    :goto_1
    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    return-void
.end method

.method private updateImeAdjustState()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState(Z)V

    return-void
.end method

.method private updateImeAdjustState(Z)V
    .locals 5

    .line 201
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    .line 204
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 205
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    .line 206
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz v1, :cond_1

    .line 207
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    invoke-virtual {v0, v1, v3, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 208
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 212
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 213
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 214
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 216
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 217
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v3, v4, v1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 221
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 222
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 223
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 224
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 226
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v1, v3, v0}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 232
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 233
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 235
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 236
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 237
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 247
    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez p1, :cond_4

    .line 248
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 250
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x113

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x154

    :goto_1
    invoke-virtual {p1, v0, v3, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setAdjustedForIme(ZJ)V

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setAdjustedForIme(Z)V

    return-void
.end method


# virtual methods
.method public onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 278
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p2

    .line 270
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 271
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 272
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .locals 2

    .line 146
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    .line 147
    iput p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    .line 148
    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    .line 149
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerVisible()Z

    move-result p6

    const/4 v0, 0x0

    if-nez p6, :cond_0

    return v0

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHidden()Z

    move-result p6

    const/4 v1, 0x1

    xor-int/2addr p6, v1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getSecondaryHasFocus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    if-eqz p6, :cond_1

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    if-nez p5, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p1

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 156
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isMinimized()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 157
    :goto_0
    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    if-gez p5, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    .line 158
    :goto_1
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 159
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    :goto_2
    if-eq p5, p2, :cond_6

    .line 160
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eq p2, p1, :cond_5

    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-ne p1, p3, :cond_5

    .line 164
    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 165
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p2, :cond_6

    .line 168
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    .line 171
    :cond_6
    :goto_3
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p2, :cond_9

    .line 172
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    if-nez p1, :cond_7

    .line 174
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0

    .line 176
    :cond_9
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    .line 177
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    .line 179
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_b

    if-eqz p4, :cond_b

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq p1, p2, :cond_b

    .line 184
    :cond_a
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    :cond_b
    if-eqz p6, :cond_c

    .line 189
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    goto :goto_4

    .line 191
    :cond_c
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjustedWhileHidden:Z

    .line 193
    :goto_4
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-nez p1, :cond_d

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    return v0
.end method

.method public pause(I)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjustedWhileHidden:Z

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 127
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    const/4 v1, 0x0

    .line 129
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 130
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 399
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 303
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 305
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 306
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    .line 309
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 310
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    :goto_0
    return-void
.end method

.method public updateAdjustForIme()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjustedWhileHidden:Z

    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState(Z)V

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjustedWhileHidden:Z

    return-void
.end method
