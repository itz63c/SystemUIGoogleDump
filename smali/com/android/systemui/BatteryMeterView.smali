.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryStateUnknown:Z

.field private mCharging:Z

.field private final mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mIgnoreTunerUpdates:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private mLevel:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mNonAdaptedSingleToneColor:I

.field private final mPercentageStyleId:I

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private mShowPercentAvailable:Z

.field private mShowPercentMode:I

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public static synthetic $r8$lambda$oO-RmrAFv3kaLmoKmcIHJrfL7bc(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->lambda$updateShowPercent$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tE-TUFngFnD6fsDmUpqJf1miV_U(Lcom/android/systemui/BatteryMeterView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView;->lambda$updatePercentText$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 118
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x800013

    .line 121
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    sget-object v2, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 125
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v2, Lcom/android/systemui/R$color;->meter_background_color:I

    .line 126
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 125
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 127
    sget v2, Lcom/android/systemui/R$styleable;->BatteryMeterView_textAppearance:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    .line 128
    new-instance v2, Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-direct {v2, p1, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    .line 129
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    new-instance p2, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p3, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110033

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setupLayoutTransition()V

    const p2, 0x104080c

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 139
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    new-instance p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 144
    invoke-virtual {p3, v0, v0, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 149
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 151
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 153
    new-instance p1, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 167
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p0}, Lcom/android/systemui/util/SysuiLifecycle;->viewAttachLifecycle(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method private getUnknownStateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_battery_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    .line 404
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private synthetic lambda$updatePercentText$0(Ljava/lang/String;)V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_with_estimate:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 337
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateShowPercent$1()Ljava/lang/Integer;
    .locals 3

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const-string v1, "status_bar_show_battery_percent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->battery_percentage_view:I

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private scaleBatteryMeterViews()V
    .locals 5

    .line 431
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 432
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 434
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 435
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 437
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 438
    sget v3, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 439
    sget v4, Lcom/android/systemui/R$dimen;->battery_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 441
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 443
    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 445
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPercentTextAtCurrentLevel()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 360
    :cond_1
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 359
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    .line 171
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 174
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const-string v4, "alpha"

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 176
    sget-object v2, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-array v1, v1, [F

    .line 178
    fill-array-data v1, :array_1

    invoke-static {v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 179
    sget-object v2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 180
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 182
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private subscribeForTunerUpdates()V
    .locals 2

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method

.method private updatePercentText()V
    .locals 5

    .line 318
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v0, :cond_1

    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 328
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v1, :cond_2

    .line 329
    new-instance v1, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getEstimatedTimeRemainingString(Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;)V

    goto :goto_1

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->setPercentTextAtCurrentLevel()V

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_0

    .line 348
    :cond_4
    sget v1, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateShowPercent()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 366
    :goto_0
    new-instance v3, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/systemui/BatteryMeterView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    invoke-static {v3}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 369
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentAvailable:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_2
    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    if-eq v3, v2, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    .line 373
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_8

    if-nez v0, :cond_9

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 378
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mPercentageStyleId:I

    if-eqz v1, :cond_6

    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 381
    :cond_6
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    :cond_9
    :goto_4
    return-void
.end method

.method private updateTunerSubscription()V
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 480
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->getPowerSaveEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_1
    const-string v0, "  BatteryMeterView:"

    .line 482
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDrawable.getPowerSave: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mBatteryPercentView.getText(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mTextColor: #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mBatteryStateUnknown: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLevel: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 264
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 265
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 266
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 268
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 269
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    const/4 v4, 0x0

    .line 268
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 271
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 270
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->subscribeForTunerUpdates()V

    .line 275
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 289
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    .line 290
    iget-object p3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 291
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    .line 292
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method public onBatteryUnknownStateChanged(Z)V
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 416
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStateUnknown:Z

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getUnknownStateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 450
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 451
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    .line 452
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getFillColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 453
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/DualToneHandler;->getBackgroundColor(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 455
    iget p2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget p3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedSingleToneColor:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setPowerSaveEnabled(Z)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "icon_blacklist"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 256
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/DualToneHandler;->setColorsFromContext(Landroid/content/Context;)V

    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    return-void
.end method

.method public setIgnoreTunerUpdates(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mIgnoreTunerUpdates:Z

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateTunerSubscription()V

    return-void
.end method

.method public setPercentShowMode(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercentMode:I

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public updateColors(III)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColors(III)V

    .line 469
    iput p3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 470
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView;->mUnknownStateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 475
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method public updatePercentView()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method
