.class public Lcom/android/keyguard/KeyguardClockSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardClockSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardClockSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

.field private final mClockManager:Lcom/android/keyguard/clock/ClockManager;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private mLockScreenMode:I

.field private mNewLockScreenClockFrame:Landroid/widget/FrameLayout;

.field private mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

.field private mNewLockScreenLargeClockFrame:Landroid/widget/FrameLayout;

.field private mNewLockScreenLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$WROqc-LQ26KS_6ZIxhwwvSR1YVI(Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/content/res/Resources;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Landroid/content/ContentResolver;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLockScreenMode:I

    .line 72
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 85
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 95
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    .line 109
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mResources:Landroid/content/res/Resources;

    .line 110
    iput-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 111
    iput-object p4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 112
    iput-object p5, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    .line 113
    iput-object p6, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 114
    iput-object p7, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 115
    iput-object p9, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-string p1, "time_12_24"

    .line 116
    invoke-static {p8, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardClockSwitchController;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardClockSwitchController;)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardClockSwitchController;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    .line 307
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    return-object p0
.end method

.method private setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V

    return-void
.end method

.method private updateAodIcons()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->left_aligned_notification_icon_container:I

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 294
    iget v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLockScreenMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupAodIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 298
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getClockPreferredY(I)I
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->getPreferredY(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getTextSize()F

    move-result p0

    return p0
.end method

.method getClockTextTopPadding()F
    .locals 2

    .line 281
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLockScreenMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->getClockTextTopPadding()F

    move-result p0

    return p0

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getClockTextTopPadding()F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onInit()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->refreshFormat()V

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateAodIcons()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->new_lockscreen_clock_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockFrame:Landroid/widget/FrameLayout;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->new_lockscreen_clock_view_large:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockFrame:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V

    return-void
.end method

.method refresh()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->refresh()V

    return-void
.end method

.method refreshFormat()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->refreshFormat(Ljava/lang/String;)V

    return-void
.end method

.method refreshFormat(Ljava/lang/String;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mTimeFormat:Ljava/lang/String;

    .line 266
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->update(Landroid/content/res/Resources;)V

    .line 267
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget-object v0, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView12:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget-object v0, Lcom/android/keyguard/KeyguardClockSwitchController$Patterns;->sClockView24:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->onTimeFormatChanged(Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/android/keyguard/AnimatableClockController;->refreshFormat()V

    .line 272
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockController;->refreshFormat()V

    :cond_0
    return-void
.end method

.method public setBigClockContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->setBigClockContainer(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method updateLockScreenMode(I)V
    .locals 3

    .line 232
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLockScreenMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-nez p1, :cond_1

    .line 235
    new-instance p1, Lcom/android/keyguard/AnimatableClockController;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->animatable_clock_view:I

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/keyguard/AnimatableClockController;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    .line 240
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 241
    new-instance p1, Lcom/android/keyguard/AnimatableClockController;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->animatable_clock_view_large:I

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/keyguard/AnimatableClockController;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    .line 246
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    .line 250
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    .line 252
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLockScreenMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateLockScreenMode(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateAodIcons()V

    return-void
.end method

.method updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 3

    .line 215
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 217
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 224
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/keyguard/KeyguardSliceViewController;->updatePosition(ILcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 225
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updatePosition(ILcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method

.method updateTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lcom/android/keyguard/AnimatableClockController;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNewLockScreenLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/AnimatableClockController;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method
