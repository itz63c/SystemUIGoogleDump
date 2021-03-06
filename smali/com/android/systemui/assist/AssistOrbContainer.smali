.class public Lcom/android/systemui/assist/AssistOrbContainer;
.super Landroid/widget/FrameLayout;
.source "AssistOrbContainer.java"


# instance fields
.field private mAnimatingOut:Z

.field private mNavbarScrim:Landroid/view/View;

.field private mOrb:Lcom/android/systemui/assist/AssistOrbView;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    return-object p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->reset()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startEnterAnimation()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    new-instance v0, Lcom/android/systemui/assist/AssistOrbContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbContainer$2;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startExitAnimation(Ljava/lang/Runnable;)V
    .locals 7

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbView;->startExitAnimation(J)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    .line 125
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 128
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 129
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 130
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 132
    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 133
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public getOrb()Lcom/android/systemui/assist/AssistOrbView;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    return-object p0
.end method

.method public isShowing()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    sget v0, Lcom/android/systemui/R$id;->assist_orb_scrim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    .line 54
    sget v0, Lcom/android/systemui/R$id;->assist_orb_navbar_scrim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    .line 55
    sget v0, Lcom/android/systemui/R$id;->assist_orb:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistOrbView;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    return-void
.end method

.method public show(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->startEnterAnimation()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->reset()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 70
    new-instance p1, Lcom/android/systemui/assist/AssistOrbContainer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistOrbContainer$1;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbContainer;->startExitAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
