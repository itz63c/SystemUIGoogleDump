.class public final Lcom/google/android/systemui/assist/uihints/GlowController;
.super Ljava/lang/Object;
.source "GlowController.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCardVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field private final mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

.field private mGlowsY:I

.field private mGlowsYDestination:I

.field private mInvocationCompleting:Z

.field private mMedianLightness:F

.field private mNavigationMode:I

.field private final mParent:Landroid/view/ViewGroup;

.field private mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

.field private mVisibilityListener:Lcom/google/android/systemui/assist/uihints/VisibilityListener;


# direct methods
.method public static synthetic $r8$lambda$6Sjt9IF7fNaqUCOnTyz-Wm9slAg(Lcom/google/android/systemui/assist/uihints/GlowController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->lambda$animateGlowTranslationY$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxFxX2BMh1SZJrabiPOFkHwdg88(Lcom/google/android/systemui/assist/uihints/GlowController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pKOkmTN0qxrnsW_Jx-22-FTTDUI(Lcom/google/android/systemui/assist/uihints/GlowController;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/GlowController;->lambda$animateGlowTranslationY$2(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)V
    .locals 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    .line 72
    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    .line 74
    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    .line 78
    iput v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    .line 79
    new-instance v2, Lcom/google/android/systemui/assist/uihints/RollingAverage;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/android/systemui/assist/uihints/RollingAverage;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    .line 80
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mInvocationCompleting:Z

    .line 82
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mCardVisible:Z

    .line 101
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mParent:Landroid/view/ViewGroup;

    .line 104
    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/GlowController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/GlowController-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mNavigationMode:I

    .line 107
    sget p1, Lcom/android/systemui/R$id;->glow:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/GlowView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    .line 109
    iget p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    invoke-virtual {p1, p2, p2, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    .line 111
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p2

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    .line 115
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getGlowWidthToViewWidth()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowWidthRatio(F)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/assist/uihints/GlowController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/GlowController;)Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/uihints/GlowController;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/uihints/GlowController;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->maybeAnimateForSpeechConfidence()V

    return-void
.end method

.method private animateGlowTranslationY(I)V
    .locals 2

    .line 364
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getYAnimationDuration(F)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/assist/uihints/GlowController;->animateGlowTranslationY(IJ)V

    return-void
.end method

.method private animateGlowTranslationY(IJ)V
    .locals 3

    .line 370
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    if-ne p1, v0, :cond_1

    .line 371
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p3

    .line 372
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getTranslationYProportionalToEdgeLights()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 371
    :goto_0
    invoke-virtual {p1, p2, p3, p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void

    .line 376
    :cond_1
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    .line 378
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 382
    iget v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 383
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/GlowController-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 390
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/GlowController$1;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 404
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->getBlurRadius()I

    move-result p1

    .line 405
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getBlurRadius()I

    move-result p2

    .line 406
    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/GlowController-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;II)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowWidthRatio()F

    move-result p1

    .line 412
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getGlowWidthToViewWidth()F

    move-result p2

    sub-float/2addr p2, p1

    .line 413
    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowWidthRatio(F)V

    .line 415
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 416
    invoke-direct {p0, v2}, Lcom/google/android/systemui/assist/uihints/GlowController;->setVisibility(I)V

    .line 419
    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getBlurRadius()I
    .locals 2

    .line 297
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_0

    .line 299
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getBlurRadius()I

    move-result p0

    return p0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_4

    .line 301
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 305
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_tall_blur:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 302
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_short_blur:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getGlowWidthToViewWidth()F
    .locals 0

    const p0, 0x3f0ccccd    # 0.55f

    return p0
.end method

.method private getInvocationBlurRadius(F)I
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->glow_tall_blur:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getBlurRadius()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 279
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getInvocationTranslationY(F)I
    .locals 3

    .line 286
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->glow_tall_min_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 289
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    .line 290
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_invocation_max:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 292
    invoke-static {p1, p0}, Landroid/util/MathUtils;->min(II)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxTranslationY()I
    .locals 2

    .line 326
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_gone_max_y:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 331
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_tall_max_y:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 328
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_short_max_y:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getMaxYAnimationDuration()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method private getMinTranslationY()I
    .locals 2

    .line 313
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_2

    .line 317
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_gone_min_y:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 318
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_tall_min_y:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 315
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->glow_short_min_y:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    .line 254
    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v4, v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    if-eqz v0, :cond_1

    goto :goto_3

    .line 260
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mCardVisible:Z

    .line 261
    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mMedianLightness:F

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 267
    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    goto :goto_2

    .line 268
    :cond_3
    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    :goto_2
    return-object p0

    .line 257
    :cond_4
    :goto_3
    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-object p0
.end method

.method private getTranslationYProportionalToEdgeLights()Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    return p0
.end method

.method private getYAnimationDuration(F)J
    .locals 4

    .line 355
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxTranslationY()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    .line 356
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxYAnimationDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 357
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    .line 359
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxYAnimationDuration()J

    move-result-wide v0

    long-to-float p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-long p0, p0

    return-wide p0
.end method

.method private synthetic lambda$animateGlowTranslationY$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 384
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    .line 387
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v1

    .line 388
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getTranslationYProportionalToEdgeLights()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 387
    :goto_0
    invoke-virtual {v0, p1, v1, p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method private synthetic lambda$animateGlowTranslationY$2(IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    int-to-float p1, p1

    int-to-float p2, p2

    .line 408
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 407
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setBlurRadius(I)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mNavigationMode:I

    return-void
.end method

.method private maybeAnimateForSpeechConfidence()V
    .locals 4

    .line 244
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->shouldAnimateForSpeechConfidence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxTranslationY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    .line 246
    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->getAverage()D

    move-result-wide v2

    double-to-float v2, v2

    .line 245
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 247
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->animateGlowTranslationY(I)V

    :cond_0
    return-void
.end method

.method private setVisibility(I)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->isVisible()Z

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mVisibilityListener:Lcom/google/android/systemui/assist/uihints/VisibilityListener;

    if-eqz v0, :cond_2

    .line 432
    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/VisibilityListener;->onVisibilityChanged(I)V

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->isVisible()Z

    move-result p1

    if-nez p1, :cond_3

    .line 436
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->clearCaches()V

    :cond_3
    return-void
.end method

.method private shouldAnimateForSpeechConfidence()Z
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 236
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->getAverage()D

    move-result-wide v0

    const-wide v3, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    .line 237
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p0

    if-le v0, p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method public getTouchInsideRegion()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 219
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxTranslationY()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 220
    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 222
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAssistLightsUpdated(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;[Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getTranslationYProportionalToEdgeLights()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    .line 168
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    return-void

    .line 172
    :cond_0
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    .line 174
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mInvocationCompleting:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-eqz v0, :cond_1

    return-void

    .line 180
    :cond_1
    instance-of p1, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    .line 182
    array-length p1, p2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->maybeAnimateForSpeechConfidence()V

    goto :goto_2

    .line 183
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected 4 lights, have "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 184
    :cond_4
    array-length p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlowController"

    .line 183
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public onAudioInfo(FF)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->add(F)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->maybeAnimateForSpeechConfidence()V

    return-void
.end method

.method public onCardInfo(ZIZZ)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mCardVisible:Z

    return-void
.end method

.method public onModeStarted(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 2

    .line 136
    instance-of v0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    if-nez v1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-void

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    .line 146
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mInvocationCompleting:Z

    .line 147
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    if-eqz v0, :cond_1

    .line 152
    new-instance p1, Lcom/google/android/systemui/assist/uihints/RollingAverage;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/systemui/assist/uihints/RollingAverage;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->animateGlowTranslationY(I)V

    return-void
.end method

.method setInvocationProgress(F)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 200
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->getInvocationBlurRadius(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setBlurRadius(I)V

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->getInvocationTranslationY(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    .line 203
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    .line 204
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    .line 205
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    return-void
.end method

.method setMedianLightness(F)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 210
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 209
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsBlendMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 211
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mMedianLightness:F

    return-void
.end method

.method setVisibilityListener(Lcom/google/android/systemui/assist/uihints/VisibilityListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mVisibilityListener:Lcom/google/android/systemui/assist/uihints/VisibilityListener;

    return-void
.end method
