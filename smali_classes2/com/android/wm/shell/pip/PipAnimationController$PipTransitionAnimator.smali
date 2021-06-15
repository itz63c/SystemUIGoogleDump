.class public abstract Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
.super Landroid/animation/ValueAnimator;
.source "PipAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PipTransitionAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "Landroid/animation/Animator$AnimatorListener;"
    }
.end annotation


# instance fields
.field private final mAnimationType:I

.field private mBaseValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mCurrentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDestinationBounds:Landroid/graphics/Rect;

.field private mEndValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mLeash:Landroid/view/SurfaceControl;

.field private mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

.field private mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

.field protected mStartValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mStartingAngle:F

.field private mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field private final mTaskInfo:Landroid/app/TaskInfo;

.field private mTransitionDirection:I


# direct methods
.method private constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/TaskInfo;",
            "Landroid/view/SurfaceControl;",
            "I",
            "Landroid/graphics/Rect;",
            "TT;TT;TT;F)V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 255
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    .line 256
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 257
    iput p3, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    .line 258
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 259
    iput-object p5, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    .line 260
    iput-object p6, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 261
    iput-object p7, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 262
    iput p8, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartingAngle:F

    .line 263
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    sget-object p1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    const/4 p1, 0x0

    .line 266
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;FLcom/android/wm/shell/pip/PipAnimationController$1;)V
    .locals 0

    .line 232
    invoke-direct/range {p0 .. p8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;F)V

    return-void
.end method

.method static ofAlpha(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/TaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Rect;",
            "FF)",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v9, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$1;

    .line 427
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$1;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;F)V

    return-object v9
.end method

.method static ofBounds(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/TaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "IFI)",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v15, p4

    move-object/from16 v12, p5

    move/from16 v14, p8

    .line 463
    invoke-static/range {p6 .. p6}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 469
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 471
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    move-object v11, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v14, v1, :cond_2

    const/4 v1, 0x3

    if-ne v14, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v2

    move-object/from16 v16, v10

    move-object v9, v11

    goto :goto_3

    .line 478
    :cond_2
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 479
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 482
    invoke-static {v3, v11, v14}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    if-eqz v13, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    move-object v4, v11

    :goto_2
    move-object/from16 v16, v1

    move-object v10, v3

    move-object v9, v4

    :goto_3
    if-nez v12, :cond_4

    move-object/from16 v19, v2

    goto :goto_4

    .line 494
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v12, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v19, v1

    .line 499
    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v20, v1

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 502
    new-instance v22, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;

    move-object/from16 v1, v22

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Rect;

    move-object v6, v2

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    move-object v7, v0

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    move-object v8, v0

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object v0, v9

    move/from16 v9, p7

    move-object/from16 v17, v11

    move/from16 v11, p7

    move-object/from16 v12, p5

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, p4

    move/from16 v17, p8

    move-object/from16 v18, v0

    move/from16 v21, p6

    invoke-direct/range {v1 .. v21}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;FLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v22
.end method


# virtual methods
.method abstract applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
.end method

.method public getAnimationType()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 307
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    return p0
.end method

.method getBaseValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 347
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    return-object p0
.end method

.method getDestinationBounds()Landroid/graphics/Rect;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 352
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    return-object p0
.end method

.method getStartValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 343
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    return-object p0
.end method

.method getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-object p0
.end method

.method public getTransitionDirection()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 331
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    return p0
.end method

.method handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;->handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method inScaleTransition()Z
    .locals 2

    .line 375
    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p0

    .line 377
    invoke-static {p0}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 2

    .line 396
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 397
    invoke-interface {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 398
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationCancel(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    :cond_0
    const/4 p1, 0x0

    .line 300
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 286
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    .line 289
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    :cond_0
    const/4 p1, 0x0

    .line 292
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 272
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 273
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationStart(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 281
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 280
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    return-void
.end method

.method onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    return-void
.end method

.method onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    return-void
.end method

.method setDestinationBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 361
    iget p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 362
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    return-void
.end method

.method public setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;",
            ")",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "TT;>;"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    return-object p0
.end method

.method setPipTransactionHandler(Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;",
            ")",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "TT;>;"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    return-object p0
.end method

.method public setSurfaceControlTransactionFactory(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-void
.end method

.method setSurfaceTransactionHelper(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-void
.end method

.method public setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 337
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    :cond_0
    return-object p0
.end method

.method shouldApplyCornerRadius()Z
    .locals 0

    .line 371
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    invoke-static {p0}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateEndValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    return-void
.end method
