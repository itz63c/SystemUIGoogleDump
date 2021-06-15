.class public Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;
.super Ljava/lang/Object;
.source "SplashScreenExitAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;,
        Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;
    }
.end annotation


# static fields
.field private static final ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MASK_RADIUS_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SHIFT_UP_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnimationDuration:I

.field private final mAppRevealDelay:I

.field private final mAppRevealDuration:I

.field private mFinishCallback:Ljava/lang/Runnable;

.field private final mFirstWindowFrame:Landroid/graphics/Rect;

.field private final mFirstWindowSurface:Landroid/view/SurfaceControl;

.field private final mIconFadeOutDuration:I

.field private final mIconStartAlpha:F

.field private mMainAnimator:Landroid/animation/ValueAnimator;

.field private final mMainWindowShiftLength:I

.field private mRadialVanishAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

.field private mShiftUpAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;

.field private final mSplashScreenView:Landroid/window/SplashScreenView;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static synthetic $r8$lambda$YqWrEp-xbkBdttM7zPTdpWQValo(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->lambda$createAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZpG7qBgDYUXzSqf8-VQkZGaOCE(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->lambda$reset$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 56
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a    # 0.15f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->MASK_RADIUS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->SHIFT_UP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    .line 81
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    .line 82
    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    if-eqz p4, :cond_0

    .line 84
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    const/4 p3, 0x0

    .line 90
    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    .line 91
    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 93
    invoke-virtual {p2, p3, p4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/wm/shell/R$integer;->starting_window_app_reveal_icon_fade_out_duration:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/wm/shell/R$integer;->starting_window_app_reveal_anim_delay:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    .line 100
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->starting_window_app_reveal_anim_duration:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    .line 102
    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    iget p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    .line 103
    iput p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    .line 104
    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    .line 105
    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->MASK_RADIUS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/view/SurfaceControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static synthetic access$200()Landroid/view/animation/Interpolator;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->SHIFT_UP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)Landroid/graphics/Rect;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    return p0
.end method

.method private createAnimator()Landroid/animation/ValueAnimator;
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    .line 120
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v2}, Landroid/window/SplashScreenView;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    mul-int/2addr v0, v0

    mul-int v4, v2, v2

    add-int/2addr v0, v4

    int-to-double v4, v0

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v4

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v0, v4

    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 123
    fill-array-data v5, :array_0

    new-array v4, v4, [F

    .line 124
    fill-array-data v4, :array_1

    .line 126
    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

    iget-object v7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-direct {v6, v7}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;-><init>(Landroid/window/SplashScreenView;)V

    iput-object v6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRadialVanishAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

    .line 127
    invoke-virtual {v6, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->setCircleCenter(II)V

    .line 128
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRadialVanishAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->setRadius(II)V

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRadialVanishAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

    invoke-virtual {v0, v5, v4}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->setRadialPaintParam([I[F)V

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 141
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v2, v0, v1}, Landroid/window/SplashScreenView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, p0, v2, v4, v0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;-><init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;FFLandroid/view/View;)V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mShiftUpAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;

    :cond_0
    new-array v0, v3, [F

    .line 146
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getProgress(FJJ)F
    .locals 0

    .line 343
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    long-to-float p0, p2

    sub-float/2addr p1, p0

    long-to-float p0, p4

    div-float/2addr p1, p0

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p0, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$createAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 150
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->onAnimationProgress(F)V

    return-void
.end method

.method private synthetic lambda$reset$1()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFinishCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private onAnimationProgress(F)V
    .locals 8

    .line 323
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0x0

    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    int-to-long v6, v2

    move-object v2, p0

    move v3, p1

    .line 326
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->getProgress(FJJ)F

    move-result v2

    .line 325
    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 327
    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 330
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    int-to-long v3, v0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    int-to-long v5, v0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->getProgress(FJJ)F

    move-result p1

    .line 333
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRadialVanishAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->onAnimationProgress(F)V

    .line 337
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mShiftUpAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;

    if-eqz p0, :cond_2

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->onAnimationProgress(F)V

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)V

    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView;->post(Ljava/lang/Runnable;)Z

    .line 297
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mShiftUpAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->reset()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->reset()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method startAnimations()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainAnimator:Landroid/animation/ValueAnimator;

    .line 110
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
