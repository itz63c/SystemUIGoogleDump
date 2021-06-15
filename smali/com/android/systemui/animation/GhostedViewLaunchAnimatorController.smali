.class public Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.super Ljava/lang/Object;
.source "GhostedViewLaunchAnimatorController.kt"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;,
        Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;


# instance fields
.field private backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

.field private backgroundView:Landroid/widget/FrameLayout;

.field private ghostView:Landroid/view/GhostView;

.field private final ghostViewMatrix:Landroid/graphics/Matrix;

.field private final ghostedView:Landroid/view/View;

.field private final initialGhostViewMatrixValues:[F

.field private launchContainer:Landroid/view/ViewGroup;

.field private startBackgroundAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "ghostedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    const/16 v0, 0x9

    new-array v1, v0, [F

    :goto_0
    if-ge p1, v0, :cond_0

    const/4 v2, 0x0

    .line 43
    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    .line 44
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0xff

    .line 57
    iput p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    return-void
.end method

.method private final getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    const-string v0, "launchContainer.overlay"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
    .locals 13

    .line 102
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 103
    new-instance v12, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    const/4 v1, 0x1

    .line 104
    aget v2, v0, v1

    .line 105
    aget v1, v0, v1

    iget-object v3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x0

    .line 106
    aget v4, v0, v1

    .line 107
    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v5, v0, v1

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentTopCornerRadius()F

    move-result v6

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentBottomCornerRadius()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc0

    const/4 v11, 0x0

    move-object v1, v12

    .line 103
    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;-><init>(IIIIFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method protected getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentBottomCornerRadius()F
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 95
    :cond_0
    sget-object v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-static {v1, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->access$findGradientDrawable(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method protected getCurrentTopCornerRadius()F
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 86
    :cond_0
    sget-object v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-static {v1, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->access$findGradientDrawable(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onIntentStarted(Z)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$DefaultImpls;->onIntentStarted(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$DefaultImpls;->onLaunchAnimationCancelled(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getWrapped()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/ActivityLaunchAnimator$State;FF)V
    .locals 4

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getContentAlpha()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/GhostView;->setAlpha(F)V

    .line 144
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidthRatio()F

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeightRatio()F

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 145
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getStartCenterX()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getStartCenterY()F

    move-result v2

    invoke-virtual {v0, p3, p3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 147
    iget-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 148
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeftChange()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRightChange()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 149
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTopChange()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottomChange()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 147
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 151
    iget-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 153
    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTop()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTop(I)V

    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottom()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeft()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLeft(I)V

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRight()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 159
    iget-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p3, 0xff

    int-to-float p3, p3

    .line 160
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBackgroundAlpha()F

    move-result v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->setAlpha(I)V

    .line 161
    invoke-virtual {p2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getWrapped()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTopCornerRadius()F

    move-result p3

    invoke-virtual {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottomCornerRadius()F

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setBackgroundCornerRadius(Landroid/graphics/drawable/Drawable;FF)V

    :goto_0
    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 2

    .line 114
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    .line 116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 123
    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 124
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/view/GhostView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 132
    invoke-virtual {p1}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 133
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method protected setBackgroundCornerRadius(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->setBackgroundRadius(FF)V

    :goto_0
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    return-void
.end method
