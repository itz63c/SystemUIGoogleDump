.class public Lcom/android/keyguard/KeyguardClockSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardClockSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardClockSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

.field private mClockFrame:Landroid/widget/FrameLayout;

.field private final mClockManager:Lcom/android/keyguard/clock/ClockManager;

.field private mClockViewController:Lcom/android/keyguard/AnimatableClockController;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLargeClockFrame:Landroid/widget/FrameLayout;

.field private mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field private mSmartspaceView:Landroid/view/View;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public static synthetic $r8$lambda$UrWEdx7JH8CB5fSj-Qe2DHy8aFQ(Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardClockSwitchController;->lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WROqc-LQ26KS_6ZIxhwwvSR1YVI(Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 83
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 90
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    .line 109
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 110
    iput-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 111
    iput-object p4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    .line 112
    iput-object p5, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 113
    iput-object p6, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 114
    iput-object p7, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 115
    iput-object p8, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 116
    iput-object p9, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 117
    iput-object p10, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 118
    iput-object p11, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    return-void
.end method

.method private getCurrentLayoutDirection()I
    .locals 0

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method private getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    .line 316
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_0
    return-void
.end method

.method private setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V

    return-void
.end method

.method private updateAodIcons()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->left_aligned_notification_icon_container:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 308
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupAodIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method


# virtual methods
.method public getClockPreferredY(I)I
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->getPreferredY(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getTextSize()F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onInit()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 17

    move-object/from16 v0, p0

    .line 132
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/clock/ClockManager;->addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    .line 134
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 135
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateAodIcons()V

    .line 138
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v2, Lcom/android/systemui/R$id;->lockscreen_clock_view:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockFrame:Landroid/widget/FrameLayout;

    .line 139
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v3, Lcom/android/systemui/R$id;->lockscreen_clock_view_large:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 141
    new-instance v1, Lcom/android/keyguard/AnimatableClockController;

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v4, Lcom/android/systemui/R$id;->animatable_clock_view:I

    .line 143
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/keyguard/AnimatableClockView;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/keyguard/AnimatableClockController;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    .line 149
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 151
    new-instance v1, Lcom/android/keyguard/AnimatableClockController;

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v4, Lcom/android/systemui/R$id;->animatable_clock_view_large:I

    .line 153
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/keyguard/AnimatableClockView;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v10, v1

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/android/keyguard/AnimatableClockController;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    .line 159
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 161
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildAndConnectView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 164
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v3, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 165
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/16 v4, 0x8

    .line 166
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    .line 171
    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v2, v7, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->below_clock_padding_start:I

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 176
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v2, Lcom/android/systemui/R$id;->left_aligned_notification_icon_container:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->disconnect()V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 208
    iput-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method refresh()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->refresh()V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 4

    .line 269
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getCurrentLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-int p1, p1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v2, p1

    invoke-static {v0, v1, v2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, v3, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, v3, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 278
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 279
    invoke-static {p2, v1, v2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 283
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/keyguard/KeyguardSliceViewController;->updatePosition(ILcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 284
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updatePosition(ILcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method

.method updateTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1}, Lcom/android/keyguard/AnimatableClockController;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/AnimatableClockController;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method
