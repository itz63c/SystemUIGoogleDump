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
.field private final mClipBounds:Landroid/graphics/Rect;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    .line 221
    new-instance p1, Lcom/android/keyguard/KeyguardStatusViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 235
    new-instance p1, Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$2;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 64
    iput-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 65
    iput-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 66
    iput-object p5, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    iput-object p6, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 68
    iput-object p7, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 69
    new-instance p1, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-direct {p1, p2, p4, p7}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardStatusViewController;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->shouldShowLogout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private refreshTime()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->refresh()V

    return-void
.end method

.method private shouldShowLogout()Z
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLogoutEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 218
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    .line 97
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->refresh()V

    return-void
.end method

.method public getClockPreferredY(I)I
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockPreferredY(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockTextSize()F

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getLogoutButtonHeight()I
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getLogoutButtonHeight()I

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->shouldShowLogout()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView(Z)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardStatusView;

    .line 291
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getY()F

    move-result v4

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 290
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method public setKeyguardStatusViewVisibility(IZZI)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IZZI)V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setPivotY(F)V

    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public updatePosition(IIFZ)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, p2

    sget-object v2, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 196
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1, p3, v2, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method
