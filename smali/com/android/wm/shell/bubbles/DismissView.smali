.class public final Lcom/android/wm/shell/bubbles/DismissView;
.super Landroid/widget/FrameLayout;
.source "DismissView.kt"


# instance fields
.field private final DISMISS_SCRIM_FADE_MS:I

.field private final animator:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "Lcom/android/wm/shell/common/DismissCircleView;",
            ">;"
        }
    .end annotation
.end field

.field private circle:Lcom/android/wm/shell/common/DismissCircleView;

.field private isShowing:Z

.field private final spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/wm/shell/common/DismissCircleView;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/DismissCircleView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/wm/shell/R$dimen;->dismiss_circle_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 39
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x51

    .line 40
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/wm/shell/R$dimen;->floating_dismiss_gradient_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 47
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 48
    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v0, 0x43480000    # 200.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v0, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/16 p1, 0xc8

    .line 49
    iput p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:I

    .line 51
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x50

    .line 51
    invoke-direct {p1, v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$dimen;->floating_dismiss_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 p1, 0x4

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 60
    sget p1, Lcom/android/wm/shell/R$drawable;->floating_dismiss_gradient_transition:I

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getCircle()Lcom/android/wm/shell/common/DismissCircleView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    return-object p0
.end method

.method public final hide()V
    .locals 5

    .line 85
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iget v2, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 88
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 89
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const-string v3, "TRANSLATION_Y"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 90
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 89
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/jvm/functions/Function0;

    .line 91
    new-instance v3, Lcom/android/wm/shell/bubbles/DismissView$hide$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/bubbles/DismissView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/DismissView;)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final isShowing()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    return p0
.end method

.method public final show()V
    .locals 3

    .line 68
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    const v0, 0x46fffc00    # 32766.0f

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setZ(F)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.TransitionDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 74
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 76
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const-string v2, "TRANSLATION_Y"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final updateResources()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->dismiss_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
