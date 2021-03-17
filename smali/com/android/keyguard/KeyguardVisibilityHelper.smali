.class public Lcom/android/keyguard/KeyguardVisibilityHelper;
.super Ljava/lang/Object;
.source "KeyguardVisibilityHelper.java"


# instance fields
.field private final mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardViewVisibilityAnimating:Z

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$_LKGqgB9rtsYChysUNvvAaVh1uo(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$clLsUyjaESrz144F6Tu8QZo1h1Y(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$m13VDioBxfHFL5OFUGNyOM1xFSM(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper-$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper-$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 43
    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 44
    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 131
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    return-void
.end method


# virtual methods
.method public isVisibilityAnimating()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    return p0
.end method

.method public setViewVisibility(IZZI)V
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    if-ne p4, v4, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 63
    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 64
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 65
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0xa0

    .line 67
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 68
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 69
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_7

    .line 72
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 73
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 74
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_2
    const/4 p3, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p4, p3, :cond_3

    if-ne p1, v4, :cond_3

    .line 78
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 80
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    .line 84
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_3
    if-ne p1, v4, :cond_6

    if-eqz p2, :cond_4

    .line 89
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 90
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const p3, 0x3d4ccccd    # 0.05f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 99
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    .line 105
    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3dcccccd    # 0.1f

    mul-float/2addr p3, p4

    sub-float p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 106
    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0x12c

    .line 107
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0x1f4

    .line 108
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 109
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 110
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 119
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    :goto_0
    return-void
.end method
