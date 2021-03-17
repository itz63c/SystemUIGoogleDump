.class public Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;
.super Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;
.source "ExpandedAnimationController.java"


# instance fields
.field private mAfterCollapse:Ljava/lang/Runnable;

.field private mAfterExpand:Ljava/lang/Runnable;

.field private final mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private mAnimatingCollapse:Z

.field private mAnimatingExpand:Z

.field private mBubbleDraggedOutEnough:Z

.field private mBubblePaddingTop:F

.field private mBubbleSizePx:F

.field private mBubblesMaxRendered:I

.field private mBubblesMaxSpace:I

.field private mCollapsePoint:Landroid/graphics/PointF;

.field private mExpandedViewPadding:I

.field private mLeadBubbleEndAction:Ljava/lang/Runnable;

.field private mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

.field private mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mPreparingToCollapse:Z

.field private mSpaceBetweenBubbles:F

.field private mSpringToTouchOnNextMotionEvent:Z

.field private mSpringingBubbleToTouch:Z

.field private mStackOffsetPx:F


# direct methods
.method public static synthetic $r8$lambda$GKcras8sS-gXfv-J9BCmeWKVCtM(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;ZILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$3(ZILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJH2IWnRhtcK1DGupUNcuj4khcU(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$N-QYhd9_DxJReyBChoVx6nn3gek(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UgrATDb6jy9HXrp-60oaJpzK8DM(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->lambda$snapBubbleBack$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fy9ZoBCnOkB1KDux3SU6D1LfE2c(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$n7KjySQ-Y90wiVvZj-qLYIvD0yA(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->lambda$onActiveControllerForLayout$6(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubblePositioner;ILjava/lang/Runnable;)V
    .locals 3

    .line 140
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;-><init>()V

    .line 75
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 141
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 142
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    .line 143
    iput p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    .line 144
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    return p0
.end method

.method private static synthetic lambda$onActiveControllerForLayout$6(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 2

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Runnable;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 493
    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    new-array v0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Runnable;

    invoke-virtual {p1, v1, p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method private static synthetic lambda$snapBubbleBack$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$0()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 236
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 244
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$1()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 250
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$2()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$startOrUpdatePathAnimation$3(ZILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 8

    .line 260
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 266
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v2

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 275
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 276
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 277
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    .line 279
    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    goto :goto_2

    .line 280
    :cond_2
    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 281
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 283
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v5

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 286
    :cond_4
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 290
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v6, p2

    iget v7, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    if-eqz p1, :cond_5

    .line 303
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move p1, v4

    goto :goto_4

    :cond_7
    move p1, v3

    :goto_4
    if-eqz p1, :cond_8

    mul-int/lit8 v0, p2, 0xa

    goto :goto_5

    .line 308
    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0xa

    :goto_5
    if-eqz p1, :cond_9

    if-eqz p2, :cond_a

    :cond_9
    if-nez p1, :cond_b

    .line 310
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 312
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    if-ne p2, p1, :cond_b

    :cond_a
    move p1, v4

    goto :goto_6

    :cond_b
    move p1, v3

    :goto_6
    const/16 p2, 0xaf

    .line 314
    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Runnable;

    if-eqz p1, :cond_c

    .line 319
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    goto :goto_7

    :cond_c
    const/4 p1, 0x0

    :goto_7
    aput-object p1, v5, v3

    new-instance p1, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V

    aput-object p1, v5, v4

    .line 315
    invoke-virtual {p3, v1, p2, v2, v5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->followAnimatedTargetAlongPath(Landroid/graphics/Path;ILandroid/animation/TimeInterpolator;[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    int-to-long p1, v0

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStartDelay(J)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    return-void
.end method

.method private springBubbleTo(Landroid/view/View;FF)V
    .locals 1

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Runnable;

    .line 369
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    new-array p2, p1, [Ljava/lang/Runnable;

    .line 370
    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    const p2, 0x461c4000    # 10000.0f

    .line 371
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Runnable;

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOrUpdatePathAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 233
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;)V

    .line 259
    :goto_0
    new-instance v1, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    aput-object v0, v1, p1

    .line 323
    invoke-interface {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBubblePositions()V
    .locals 7

    .line 588
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 592
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 593
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 597
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 601
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 603
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 604
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v0

    .line 605
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    if-eqz v4, :cond_3

    .line 607
    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    goto :goto_2

    .line 608
    :cond_3
    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_2
    new-array v4, v0, [Ljava/lang/Runnable;

    .line 606
    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 609
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Runnable;

    .line 610
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    goto :goto_3

    .line 612
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationX(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    .line 614
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v3

    new-array v4, v0, [Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Runnable;

    .line 615
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 193
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    .line 195
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAfterCollapse:Ljava/lang/Runnable;

    .line 196
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    .line 198
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    return-void
.end method

.method public dismissDraggedOutBubble(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    const v1, 0x461c4000    # 10000.0f

    .line 413
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withStiffness(F)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 414
    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleX(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 415
    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->scaleY(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    aput-object p3, p2, v1

    .line 417
    invoke-virtual {p1, v3, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->alpha(F[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 418
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 420
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public dragBubbleOut(Landroid/view/View;FF)V
    .locals 5

    .line 381
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->springBubbleTo(Landroid/view/View;FF)V

    .line 383
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    .line 384
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    goto :goto_0

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v2

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    aput-object v4, v3, v1

    invoke-virtual {v0, p1, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->springBubbleTo(Landroid/view/View;FF)V

    goto :goto_0

    .line 390
    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 394
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 396
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 400
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    add-float/2addr p1, p2

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p1

    iget p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    sub-float/2addr p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 401
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    if-eq v1, p1, :cond_6

    .line 402
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 403
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    :cond_6
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "ExpandedAnimationController state:"

    .line 478
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isActive:          "

    .line 479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->isActiveController()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  animatingExpand:   "

    .line 480
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  animatingCollapse: "

    .line 481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  springingBubble:   "

    .line 482
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public expandFromStack(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    .line 167
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAfterExpand:Ljava/lang/Runnable;

    .line 168
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    .line 170
    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    return-void
.end method

.method getAnimatedProperties()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 498
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleXOrYForOrientation(I)F
    .locals 4

    .line 631
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p1

    .line 634
    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpaceBetweenBubbles:F

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    .line 635
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    .line 637
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 638
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpaceBetweenBubbles:F

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    if-eqz v1, :cond_1

    .line 640
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    goto :goto_0

    .line 641
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    sub-float/2addr p0, v2

    add-float/2addr p0, p1

    return p0
.end method

.method public getDraggedOutBubble()Landroid/view/View;
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getUnderlyingObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    :goto_0
    return-object p0
.end method

.method public getExpandedY()F
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    add-float/2addr v0, p0

    return v0
.end method

.method public getMagnetizedBubbleDraggingOut()Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    return-object p0
.end method

.method getNextAnimationInChain(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method getOffsetForChainedPropertyAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getSpringForce(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 518
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const p1, 0x3f266666    # 0.65f

    .line 519
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const/high16 p1, 0x43480000    # 200.0f

    .line 520
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    return-object p0
.end method

.method public notifyPreparingToCollapse()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    return-void
.end method

.method onActiveControllerForLayout(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateResources()V

    .line 491
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 492
    sget-object p1, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Runnable;

    .line 493
    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$MultiAnimationStarter;->startAll([Ljava/lang/Runnable;)V

    return-void
.end method

.method onChildAdded(Landroid/view/View;I)V
    .locals 3

    .line 527
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingExpand:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 528
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_0

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 530
    invoke-direct {p0, v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 536
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    if-nez p2, :cond_2

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    .line 539
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result p2

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 541
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v0

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 538
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(FF[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Runnable;

    .line 542
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 543
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :cond_2
    :goto_0
    return-void
.end method

.method onChildRemoved(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 2

    .line 551
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 552
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 553
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 554
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v0, 0x0

    .line 557
    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 558
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimateOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 559
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mOnBubbleAnimatedOutAction:Ljava/lang/Runnable;

    aput-object v0, p2, p3

    .line 560
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 561
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 565
    :goto_0
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method onChildReordered(Landroid/view/View;II)V
    .locals 0

    .line 570
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPreparingToCollapse:Z

    if-eqz p1, :cond_0

    return-void

    .line 577
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mAnimatingCollapse:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 580
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->startOrUpdatePathAnimation(Z)V

    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :goto_0
    return-void
.end method

.method public onGestureFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 459
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public onUnstuckFromTarget()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringToTouchOnNextMotionEvent:Z

    return-void
.end method

.method public prepareForBubbleDrag(Landroid/view/View;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;)V
    .locals 8

    .line 339
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    const v0, 0x46fffe00    # 32767.0f

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 342
    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 343
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 361
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->addTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 362
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->setMagnetListener(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;)V

    .line 363
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->setHapticsEnabled(Z)V

    .line 364
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    const p1, 0x45bb8000    # 6000.0f

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->setFlingToTargetMinVelocity(F)V

    return-void
.end method

.method public snapBubbleBack(Landroid/view/View;FF)V
    .locals 5

    .line 440
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChildAtIndex(I)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v1

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getBubbleXOrYForOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->position(FF[Ljava/lang/Runnable;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p2, p3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->withPositionStartVelocities(FF)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController-$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    aput-object v0, p3, v3

    .line 448
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 450
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 452
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    return-void
.end method

.method public updateResources()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    .line 210
    sget v2, Lcom/android/wm/shell/R$dimen;->bubble_stack_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblePaddingTop:F

    .line 212
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    .line 213
    sget v1, Lcom/android/wm/shell/R$integer;->bubbles_max_rendered:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblesMaxRendered:I

    .line 214
    sget v1, Lcom/android/wm/shell/R$dimen;->bubble_max_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblesMaxSpace:I

    .line 215
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 218
    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mExpandedViewPadding:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblesMaxRendered:I

    add-int/lit8 v3, v2, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    sub-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 222
    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubblesMaxSpace:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpaceBetweenBubbles:F

    return-void
.end method
