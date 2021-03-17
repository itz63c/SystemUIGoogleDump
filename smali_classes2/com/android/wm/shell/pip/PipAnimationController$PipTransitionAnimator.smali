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

    .line 233
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 234
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    .line 235
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 236
    iput p3, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    .line 237
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    iput-object p5, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    .line 239
    iput-object p6, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 240
    iput-object p7, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 241
    iput p8, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartingAngle:F

    .line 242
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    sget-object p1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator-$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    const/4 p1, 0x0

    .line 245
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;FLcom/android/wm/shell/pip/PipAnimationController$1;)V
    .locals 0

    .line 212
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

    .line 389
    new-instance v9, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$1;

    .line 390
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
    .locals 19
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

    move-object/from16 v5, p4

    move-object/from16 v12, p5

    move/from16 v15, p8

    .line 429
    invoke-static/range {p6 .. p6}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 432
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    move-object v14, v1

    const/4 v1, 0x0

    if-nez v12, :cond_1

    move-object/from16 v16, v1

    goto :goto_1

    .line 439
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v12, Landroid/graphics/Rect;->top:I

    iget v6, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    iget v6, v14, Landroid/graphics/Rect;->right:I

    iget v7, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v16, v2

    .line 444
    :goto_1
    new-instance v13, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v13, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    if-eq v15, v2, :cond_2

    const/4 v2, 0x3

    if-ne v15, v2, :cond_3

    .line 450
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 451
    invoke-static {v1, v5, v15}, Lcom/android/wm/shell/common/DisplayLayout;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :cond_3
    move-object v10, v1

    .line 457
    new-instance v18, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;

    move-object/from16 v1, v18

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

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move/from16 v9, p7

    move/from16 v11, p7

    move-object/from16 v12, p5

    move-object v0, v13

    move/from16 v13, p6

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    move-object v15, v0

    move-object/from16 v16, v17

    move/from16 v17, p8

    invoke-direct/range {v1 .. v17}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;FLandroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v18
.end method


# virtual methods
.method abstract applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
.end method

.method public getAnimationType()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 284
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

    .line 310
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    return-object p0
.end method

.method getDestinationBounds()Landroid/graphics/Rect;
    .locals 0

    .line 319
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

    .line 315
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

    .line 306
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    return-object p0
.end method

.method getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    return-object p0
.end method

.method public getTransitionDirection()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 294
    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    return p0
.end method

.method inScaleTransition()Z
    .locals 2

    .line 338
    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p0

    .line 340
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

    .line 359
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 360
    invoke-interface {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 361
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationCancel(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 265
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 266
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 251
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 252
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;->onPipAnimationStart(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 260
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 259
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

    .line 330
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    return-void
.end method

.method setDestinationBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    iget p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 325
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

    .line 289
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;

    return-object p0
.end method

.method public setSurfaceControlTransactionFactory(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    return-void
.end method

.method setSurfaceTransactionHelper(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)V
    .locals 0

    .line 376
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

    .line 300
    iput p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    :cond_0
    return-object p0
.end method

.method shouldApplyCornerRadius()Z
    .locals 0

    .line 334
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

    .line 352
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    return-void
.end method
