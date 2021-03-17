.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field private mCutOutPaddingLeft:I

.field private mCutOutPaddingRight:I

.field private mExpanded:Z

.field private mExpandedHeaderAlpha:F

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderTextContainerView:Landroid/view/View;

.field private mKeyguardExpansionFraction:F

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private mNextAlarmContainer:Landroid/view/View;

.field private mNextAlarmIcon:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private mQsDisabled:Z

.field private mQuickQsStatusIcons:Landroid/view/View;

.field private mRingerContainer:Landroid/view/View;

.field private mRingerModeIcon:Landroid/widget/ImageView;

.field private mRingerModeTextView:Landroid/widget/TextView;

.field private mRoundedCornerPadding:I

.field private mSpace:Landroid/widget/Space;

.field private mStatusBarPaddingTop:I

.field private mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mStatusSeparator:Landroid/view/View;

.field private mSystemIconsView:Landroid/view/View;

.field private mTextColorPrimary:I

.field private mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mWaterfallTopInset:I


# direct methods
.method public static synthetic $r8$lambda$jfxpiBbHcWts__YTTSLpACq44xM(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateEverything$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    .line 99
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 105
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    .line 107
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    return-void
.end method

.method private formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "EHm"

    goto :goto_0

    :cond_1
    const-string p0, "Ehma"

    .line 431
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 432
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateEverything$0()V
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method private updateAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;Z)Z
    .locals 6

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 201
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz p1, :cond_1

    .line 206
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 208
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, p1, :cond_6

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 213
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    return v1
.end method

.method private updateClockPadding()V
    .locals 5

    .line 391
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 393
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 398
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 400
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 401
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginEnd:I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginStart:I

    :goto_0
    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    .line 402
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 404
    :goto_1
    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-lez v2, :cond_3

    .line 406
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 407
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginStart:I

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginEnd:I

    :goto_2
    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    .line 408
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v3

    .line 411
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    add-int/2addr v4, p0

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateHeaderTextContainerAlphaAnimator()V
    .locals 5

    .line 291
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    const/4 v4, 0x2

    aput v3, v2, v4

    const-string v3, "alpha"

    .line 292
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateMinimumHeight()V
    .locals 3

    .line 233
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 235
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_header_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private updateRingerStatus(IZ)Z
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez p2, :cond_2

    if-ne p1, v1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget p2, Lcom/android/systemui/R$string;->qs_status_phone_vibrate:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget p2, Lcom/android/systemui/R$string;->qs_status_phone_muted:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    move p1, v2

    .line 191
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz p1, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_4
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v4, v2

    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, p1, :cond_7

    .line 195
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :cond_7
    :goto_5
    return v1
.end method

.method private updateStatusIconAlphaAnimator()V
    .locals 4

    .line 285
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 286
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 341
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 342
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    .line 343
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public getHeaderQsPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    .line 352
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    .line 356
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->paddingNeededForCutoutAndRoundedCorner(Landroid/view/DisplayCutout;Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 360
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 361
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->status_bar_padding_end:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 359
    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 366
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    invoke-virtual {v4}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 367
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 368
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 370
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v5

    .line 371
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 375
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_3

    .line 372
    :cond_4
    :goto_2
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 373
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Space;->setVisibility(I)V

    .line 379
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    .line 381
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-nez v0, :cond_6

    goto :goto_4

    .line 382
    :cond_6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Insets;->top:I

    :goto_4
    iput v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockPadding()V

    .line 384
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;)V
    .locals 2

    .line 148
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 149
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 153
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 154
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 117
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 118
    sget v0, Lcom/android/systemui/R$id;->quick_status_bar_system_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    .line 119
    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQuickQsStatusIcons:Landroid/view/View;

    .line 122
    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    .line 123
    sget v0, Lcom/android/systemui/R$id;->status_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    .line 124
    sget v0, Lcom/android/systemui/R$id;->next_alarm_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcom/android/systemui/R$id;->next_alarm_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    .line 127
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 131
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 132
    sget v0, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSpace:Landroid/widget/Space;

    .line 134
    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setContentMargins(IILcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 3

    .line 448
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginStart:I

    .line 449
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContentMarginEnd:I

    const/4 v0, 0x0

    .line 450
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 451
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-ne v1, v2, :cond_0

    .line 454
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/qs/QuickQSPanelController;->setContentMargins(II)V

    goto :goto_1

    .line 456
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 457
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 458
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 459
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockPadding()V

    return-void
.end method

.method public setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 299
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    .line 300
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpandedScrollAmount(I)V
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    int-to-float v3, p1

    invoke-static {v2, v0, v1, v2, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 472
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollY(I)V

    .line 475
    iget p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_1

    .line 476
    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpandedHeaderAlpha:F

    .line 477
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    :cond_1
    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 327
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_4

    .line 328
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    cmpl-float p1, p2, v0

    if-lez p1, :cond_3

    .line 330
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 332
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_4
    :goto_1
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 418
    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeader-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateResources()V
    .locals 4

    .line 242
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateMinimumHeight()V

    .line 245
    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    .line 247
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarPaddingTop:I

    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_header_tooltip_height:I

    .line 251
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 252
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x105023e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSystemIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 259
    iget-boolean v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 263
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 268
    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    if-eq v0, v1, :cond_2

    .line 269
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v2, 0x1010038

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 271
    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    .line 272
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusIconAlphaAnimator()V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    return-void
.end method

.method updateStatusText(ILandroid/app/AlarmManager$AlarmClockInfo;ZZ)V
    .locals 1

    .line 164
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateRingerStatus(IZ)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 165
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    :goto_1
    if-eqz p1, :cond_5

    .line 168
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    move p1, p3

    goto :goto_2

    :cond_2
    move p1, v0

    .line 169
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move p3, v0

    .line 170
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
