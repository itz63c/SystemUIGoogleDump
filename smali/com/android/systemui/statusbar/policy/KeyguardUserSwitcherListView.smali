.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "KeyguardUserSwitcherListView.java"


# instance fields
.field private mAnimating:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;


# direct methods
.method public static synthetic $r8$lambda$TmINzvQcbZlD7JNH5-4Pil_GAJ4(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->lambda$updateVisibilities$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cAV7Kh7LAg5PgaVJqZT5bKYm6gg(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;I[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->lambda$updateVisibilities$1(I[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    .line 46
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 48
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils;

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0x168

    const/high16 v6, -0x41000000    # -0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 50
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    sget-object v15, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v11, 0xf0

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v9, v1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    return-void
.end method

.method private synthetic lambda$updateVisibilities$0()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    return-void
.end method

.method private synthetic lambda$updateVisibilities$1(I[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V
    .locals 4

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 133
    aget-object v3, p2, v2

    invoke-virtual {v3, v1, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    return-void
.end method


# virtual methods
.method isAnimating()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    return p0
.end method

.method removeLastView()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method

.method replaceView(Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;I)V
    .locals 0

    .line 157
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 158
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method setDarkAmount(F)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 63
    instance-of v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    if-eqz v3, :cond_0

    .line 64
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->setDarkAmount(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateVisibilities(ZZ)V
    .locals 7

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 90
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 92
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 93
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    :cond_0
    if-gt v1, v2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_4

    add-int/lit8 p2, v1, -0x1

    .line 102
    new-array v3, p2, [Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    move v5, v0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 105
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    aput-object v6, v3, v5

    .line 108
    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 111
    aget-object v6, v3, v5

    invoke-virtual {v6, v2, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 113
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->clearAnimation()V

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v2

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 119
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    if-eqz p1, :cond_3

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;)V

    invoke-virtual {p1, v3, p2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;I[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V

    invoke-virtual {p1, v3, v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    move p2, v2

    :goto_1
    if-ge p2, v1, :cond_5

    .line 142
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 143
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 144
    invoke-virtual {v3, p1, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 146
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
