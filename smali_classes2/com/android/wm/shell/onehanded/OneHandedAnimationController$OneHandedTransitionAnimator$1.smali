.class Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;
.super Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
.source "OneHandedAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofBounds(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$1;)V

    .line 267
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getCastedFractionValue(FFF)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float/2addr p1, p0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 7

    .line 276
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 277
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 278
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 279
    invoke-direct {p0, v3, v4, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->getCastedFractionValue(FFF)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 280
    invoke-direct {p0, v4, v5, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->getCastedFractionValue(FFF)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 281
    invoke-direct {p0, v5, v6, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->getCastedFractionValue(FFF)I

    move-result v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 282
    invoke-direct {p0, v0, v1, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->getCastedFractionValue(FFF)I

    move-result p3

    .line 278
    invoke-virtual {v2, v3, v4, v5, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    iget-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->setCurrentValue(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    move-result-object p3

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p2, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    move-result-object p0

    .line 285
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 286
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
