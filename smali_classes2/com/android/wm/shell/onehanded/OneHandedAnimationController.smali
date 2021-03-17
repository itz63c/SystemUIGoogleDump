.class public Lcom/android/wm/shell/onehanded/OneHandedAnimationController;
.super Ljava/lang/Object;
.source "OneHandedAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    }
.end annotation


# instance fields
.field private final mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/WindowContainerToken;",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mOvershootInterpolator:Landroid/view/animation/Interpolator;

.field private final mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 67
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method getAnimator(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 76
    invoke-static {p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofBounds(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 82
    invoke-static {p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofBounds(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    return-object p0
.end method

.method getAnimatorMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/window/WindowContainerToken;",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    return-object p0
.end method

.method isAnimatorsConsumed()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method removeAnimator(Landroid/window/WindowContainerToken;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->setSurfaceTransactionHelper(Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;)V

    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 106
    fill-array-data p0, :array_0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
