.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/FrameLayout;
.source "QuickStatusBarHeader.java"


# instance fields
.field private mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private final mCallStrengthSlotName:Ljava/lang/String;

.field private mClockIconsSeparator:Landroid/view/View;

.field private mClockIconsView:Landroid/view/View;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mContainer:Landroid/view/View;

.field private mCutOutPaddingLeft:I

.field private mCutOutPaddingRight:I

.field private mDatePrivacySeparator:Landroid/widget/Space;

.field private mDatePrivacyView:Landroid/view/View;

.field private mDateView:Landroid/view/View;

.field private mExpanded:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

.field private mKeyguardExpansionFraction:F

.field private final mMobileSlotName:Ljava/lang/String;

.field private final mNoCallingSlotName:Ljava/lang/String;

.field private mPrivacyChip:Landroid/view/View;

.field private final mProviderModel:Z

.field private mQSCarriers:Landroid/view/View;

.field private mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private mQsDisabled:Z

.field private mRightLayout:Landroid/view/ViewGroup;

.field private mRoundedCornerPadding:I

.field private mSecurityHeaderView:Landroid/view/View;

.field private mShowClockIconsSeparator:Z

.field private mStatusBarPaddingTop:I

.field private mTextColorPrimary:I

.field private mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mTopViewMeasureHeight:I

.field private mTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mViewAlpha:F

.field private mWaterfallTopInset:I


# direct methods
.method public static synthetic $r8$lambda$jfxpiBbHcWts__YTTSLpACq44xM(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateEverything$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    .line 81
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mViewAlpha:F

    .line 87
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    const v0, 0x104081c

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMobileSlotName:Ljava/lang/String;

    const v0, 0x104081f

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNoCallingSlotName:Ljava/lang/String;

    const v0, 0x104080e

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCallStrengthSlotName:Ljava/lang/String;

    const-string v0, "settings_provider_model"

    .line 101
    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mProviderModel:Z

    goto :goto_0

    .line 104
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mProviderModel:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mProviderModel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNoCallingSlotName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCallStrengthSlotName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mMobileSlotName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    return p0
.end method

.method private synthetic lambda$updateEverything$0()V
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private setContentMargins(Landroid/view/View;II)V
    .locals 0

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 467
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 468
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 469
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSeparatorVisibility(Z)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 407
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    return-void

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    .line 413
    :goto_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    .line 414
    :goto_4
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 415
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    .line 418
    :goto_5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v3, v4

    .line 419
    :goto_6
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 420
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAlphaAnimator()V
    .locals 5

    .line 245
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 248
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 249
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    .line 250
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAnimators()V
    .locals 6

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlphaAnimator()V

    .line 234
    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    .line 236
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContainer:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    const-string/jumbo v0, "translationY"

    .line 237
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateHeadersPadding()V
    .locals 6

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(Landroid/view/View;II)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(Landroid/view/View;II)V

    .line 429
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 430
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 431
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 436
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    if-lez v3, :cond_0

    .line 438
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v2

    .line 439
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 441
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-lez v3, :cond_1

    .line 443
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v0

    .line 444
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 447
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    iget v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 451
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    add-int/2addr v4, p0

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 348
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 349
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    .line 350
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 351
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method public getOffsetTranslation()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    .line 358
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    .line 362
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->paddingNeededForCutoutAndRoundedCorner(Landroid/view/DisplayCutout;Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v2

    .line 364
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 365
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 366
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    .line 367
    invoke-virtual {v3}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 370
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 371
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    if-eqz v0, :cond_5

    .line 373
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v7

    .line 374
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_2

    goto :goto_2

    .line 381
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 382
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v1, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 383
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 384
    iput-boolean v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    .line 385
    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    goto :goto_3

    .line 375
    :cond_4
    :goto_2
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Space;->setVisibility(I)V

    .line 377
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 378
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    .line 379
    iput-boolean v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    .line 388
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    .line 391
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-nez v0, :cond_6

    goto :goto_4

    .line 392
    :cond_6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Insets;->top:I

    :goto_4
    iput v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeadersPadding()V

    .line 394
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V
    .locals 2

    .line 154
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 161
    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 121
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 122
    sget v0, Lcom/android/systemui/R$id;->quick_status_bar_date_privacy:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    .line 123
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    .line 124
    sget v0, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    .line 125
    sget v0, Lcom/android/systemui/R$id;->qs_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContainer:Landroid/view/View;

    .line 126
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Landroid/view/View;

    .line 129
    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->separator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    .line 131
    sget v0, Lcom/android/systemui/R$id;->rightLayout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/ViewGroup;

    .line 133
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 134
    sget v0, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    .line 136
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 146
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 147
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 148
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    if-eq p1, p2, :cond_0

    .line 173
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method setChipVisibility(Z)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 297
    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 300
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 309
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 310
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpandedScrollAmount(I)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollY(I)V

    .line 479
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_3
    if-eqz p1, :cond_4

    .line 338
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 340
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 343
    :goto_0
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 458
    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateResources()V
    .locals 3

    .line 191
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    .line 195
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    const v1, 0x1050240

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    .line 205
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 212
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 217
    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    if-eq v0, v1, :cond_2

    .line 218
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x1010038

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 220
    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    .line 221
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeadersPadding()V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    return-void
.end method
