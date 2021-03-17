.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardPINView.java"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$CIVa4P7dGPecjDvjYiZaOW_N_No(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->lambda$startDisappearAnimation$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 53
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v8, 0x10c000f

    .line 55
    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0x7d

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3ee66666    # 0.45f

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 57
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {v1, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0xbb

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPINView;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    return-void
.end method

.method private enableClipping(Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    return-void
.end method

.method private synthetic lambda$startDisappearAnimation$0(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 72
    sget p0, Lcom/android/systemui/R$id;->pinEntry:I

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 111
    sget p0, Lcom/android/systemui/R$string;->kg_wrong_pin:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 8

    .line 77
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 79
    sget v0, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    .line 80
    sget v0, Lcom/android/systemui/R$id;->row0:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    .line 81
    sget v0, Lcom/android/systemui/R$id;->row1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->row2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    .line 83
    sget v0, Lcom/android/systemui/R$id;->row3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    const/4 v0, 0x6

    new-array v0, v0, [[Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    .line 84
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v3

    const/4 v6, 0x2

    aput-object v5, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->key1:I

    .line 89
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    sget v7, Lcom/android/systemui/R$id;->key2:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    sget v7, Lcom/android/systemui/R$id;->key3:I

    .line 90
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v3

    new-array v2, v1, [Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->key4:I

    .line 93
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    sget v7, Lcom/android/systemui/R$id;->key5:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    sget v7, Lcom/android/systemui/R$id;->key6:I

    .line 94
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->key7:I

    .line 97
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    sget v7, Lcom/android/systemui/R$id;->key8:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    sget v7, Lcom/android/systemui/R$id;->key9:I

    .line 98
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->delete_button:I

    .line 101
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v4

    sget v7, Lcom/android/systemui/R$id;->key0:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v3

    sget v7, Lcom/android/systemui/R$id;->key_enter:I

    .line 102
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v1, v1, [Landroid/view/View;

    aput-object v5, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v3

    aput-object v5, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    return-void
.end method

.method public startAppearAnimation()V
    .locals 9

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 120
    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    const/16 v0, 0x13

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputView;->getAnimationListener(I)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    move-object v1, p0

    .line 119
    invoke-static/range {v1 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDisappearAnimation(ZLjava/lang/Runnable;)Z
    .locals 9

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 136
    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 137
    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    const/16 v0, 0x16

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputView;->getAnimationListener(I)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x118

    move-object v1, p0

    .line 136
    invoke-static/range {v1 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPINView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/KeyguardPINView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
