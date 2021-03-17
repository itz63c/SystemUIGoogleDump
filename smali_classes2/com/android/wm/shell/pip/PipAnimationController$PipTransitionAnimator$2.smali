.class Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
.source "PipAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->ofBounds(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field private final mRectEvaluator:Landroid/animation/RectEvaluator;

.field final synthetic val$direction:I

.field final synthetic val$initialSourceValue:Landroid/graphics/Rect;

.field final synthetic val$rotatedEndRect:Landroid/graphics/Rect;

.field final synthetic val$rotationDelta:I

.field final synthetic val$sourceHintRect:Landroid/graphics/Rect;

.field final synthetic val$sourceHintRectInsets:Landroid/graphics/Rect;

.field final synthetic val$sourceInsets:Landroid/graphics/Rect;

.field final synthetic val$startingAngle:F


# direct methods
.method constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;FLandroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 11

    move-object v10, p0

    move-object/from16 v0, p9

    .line 459
    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    move/from16 v0, p10

    iput v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$startingAngle:F

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRect:Landroid/graphics/Rect;

    move/from16 v0, p12

    iput v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    move-object/from16 v0, p13

    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p14

    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p15

    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    move/from16 v0, p16

    iput v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;FLcom/android/wm/shell/pip/PipAnimationController$1;)V

    .line 460
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    .line 461
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method private applyRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    .line 502
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {v0, p3, p4, p6}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 503
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setCurrentValue(Ljava/lang/Object;)V

    .line 505
    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float/2addr v0, p3

    .line 507
    iget v1, p5, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p3

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 508
    iget p5, p5, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p3

    .line 511
    iget v1, p5, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p3

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 512
    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    :goto_0
    sub-int/2addr p5, p4

    int-to-float p5, p5

    mul-float/2addr p3, p5

    int-to-float p4, p4

    add-float/2addr p3, p4

    move v8, p3

    move v6, v0

    move v7, v1

    .line 514
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 516
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 13

    move-object v0, p0

    move/from16 v3, p3

    .line 466
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getBaseValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    .line 467
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getStartValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/Rect;

    .line 468
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    .line 469
    iget-object v7, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    if-eqz v7, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move/from16 v3, p3

    move-object v5, v6

    move-object v6, v7

    .line 472
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->applyRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    .line 475
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {v1, v3, v4, v6}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    .line 476
    iget v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$startingAngle:F

    mul-float v7, v1, v2

    .line 477
    invoke-virtual {p0, v11}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setCurrentValue(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->inScaleTransition()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_1

    .line 487
    :cond_1
    iget v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v2, v4}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 491
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v2, v4}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    move-object v12, v1

    .line 494
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v7

    iget-object v10, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    move-object v8, p2

    move-object v9, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scaleAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    goto :goto_2

    .line 480
    :cond_3
    :goto_1
    iget v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    move-object v1, p1

    move-object v8, p2

    invoke-virtual {v0, p2, p1, v6, v11}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    goto :goto_2

    :cond_4
    move-object v1, p1

    move-object v8, p2

    .line 483
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v2

    move-object v3, p2

    move-object v4, p1

    move-object v6, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 497
    :goto_2
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 543
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget p3, v0, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2, p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x0

    .line 544
    invoke-virtual {p2, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    :goto_0
    return-void
.end method

.method onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 522
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->alpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyCornerRadius()Z

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 526
    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getStartValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 529
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 530
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public updateEndValue(Landroid/graphics/Rect;)V
    .locals 0

    .line 552
    invoke-super {p0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 553
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 554
    check-cast p1, Landroid/graphics/Rect;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateEndValue(Ljava/lang/Object;)V
    .locals 0

    .line 459
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->updateEndValue(Landroid/graphics/Rect;)V

    return-void
.end method
