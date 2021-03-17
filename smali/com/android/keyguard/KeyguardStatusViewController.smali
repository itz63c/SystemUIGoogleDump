.class public Lcom/android/keyguard/KeyguardStatusViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardStatusViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardStatusView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field private mLockScreenMode:I

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    .line 248
    new-instance p1, Lcom/android/keyguard/KeyguardStatusViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 262
    new-instance p1, Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$2;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 68
    iput-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 69
    iput-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 70
    iput-object p5, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    iput-object p6, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 72
    iput-object p7, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 73
    iput-object p8, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 74
    new-instance p1, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-direct {p1, p2, p4, p8}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusViewController;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardStatusViewController;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->updateAodIcons()V

    return-void
.end method

.method private refreshTime()V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->refresh()V

    return-void
.end method

.method private updateAodIcons()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    sget v1, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 240
    iget v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    if-nez v1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupAodIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 244
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->refresh()V

    return-void
.end method

.method public getClockPreferredY(I)I
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockPreferredY(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockTextSize()F

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getLogoutButtonHeight()I
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getLogoutButtonHeight()I

    move-result p0

    return p0
.end method

.method public getOwnerInfoHeight()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfoHeight()I

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->updateAodIcons()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method public setKeyguardStatusViewVisibility(IZZI)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IZZI)V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setPivotY(F)V

    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public updatePosition(IIFZ)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, p2

    sget-object v2, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 204
    :cond_0
    iget p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 206
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardStatusView;

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v2, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p2, v0, v1, v2, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 209
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1, p3, v2, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    const/4 p3, 0x0

    sget-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {p2, p3, v1, v0, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    sget-object p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p1, p1

    invoke-static {p0, p2, p1, v0, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :goto_0
    return-void
.end method
