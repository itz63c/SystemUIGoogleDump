.class public Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.super Lcom/android/systemui/util/ViewController;
.source "LockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/phone/LockIcon;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mBlockUpdates:Z

.field private mBouncerHiddenAmount:F

.field private mBouncerShowingScrimmed:Z

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDocked:Z

.field private mDozing:Z

.field private mFingerprintUnlock:Z

.field private final mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardJustShown:Z

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastState:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShowingLaunchAffordance:Z

.field private mSimLocked:Z

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeAndUnlockRunning:Z

.field private final mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# direct methods
.method public static synthetic $r8$lambda$OlrToHeRVSRmnmByx5Mkc0LIqFk(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PRb0phGIzEfFJETyUDalO882Xp0(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6liS6o6EAUmnfSIaewseZXLxnI(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->lambda$onViewDetached$1(Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xKg5Q3UU1mj2S6P_HlFNidva4r0(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->lambda$onViewAttached$0(Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zJsMpthVFzSjR_DHgHumS4oH5qw(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->handleLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 3

    move-object v0, p0

    move-object v1, p7

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    iput v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerHiddenAmount:F

    const/4 v2, 0x0

    .line 93
    iput v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarState:I

    .line 382
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 405
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 448
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    .line 464
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 489
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 499
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$5;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 533
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    move-object v2, p2

    .line 115
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-object v2, p3

    .line 116
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v2, p4

    .line 117
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v2, p5

    .line 118
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object v2, p6

    .line 119
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 120
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object v2, p8

    .line 121
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, p9

    .line 122
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p10

    .line 123
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object v2, p11

    .line 124
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-nez p12, :cond_0

    .line 125
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p12}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    move-object/from16 v2, p13

    .line 126
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p14

    .line 127
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mResources:Landroid/content/res/Resources;

    move-object/from16 v2, p15

    .line 128
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p7, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setLockIconController(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDozing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDozing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/content/res/Resources;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setStatusBarState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateColor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private canBlockUpdates()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getState()I
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 317
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 318
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 319
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 321
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mTransientBiometricsError:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 323
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private handleClick(Landroid/view/View;)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    return-void
.end method

.method private handleLongClick(Landroid/view/View;)Z
    .locals 2

    .line 274
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v0, 0xbf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 276
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 277
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_disabled:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    .line 280
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$2(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDocked:Z

    if-eq v0, p1, :cond_2

    .line 494
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDocked:Z

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onViewAttached$0(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method private synthetic lambda$onViewDetached$1(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarState:I

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    return-void
.end method

.method private update()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update(Z)V

    return-void
.end method

.method private update(Z)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->getState()I

    move-result v0

    .line 302
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 303
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->canBlockUpdates()Z

    move-result v1

    if-eqz v1, :cond_3

    move p1, v2

    :cond_3
    if-eqz p1, :cond_4

    .line 306
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    .line 307
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDozing:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(IZZ)V

    .line 309
    :cond_4
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mLastState:I

    .line 310
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardJustShown:Z

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateIconVisibility()Z

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateClickability()V

    return-void
.end method

.method private updateClickability()V
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 375
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 376
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    .line 377
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 378
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method private updateColor()V
    .locals 8

    .line 232
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerHiddenAmount:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, -0x1

    const v4, 0x1010036

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 237
    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v5, [I

    aput v4, v1, v7

    invoke-virtual {v0, v6, v1, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 242
    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 243
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    .line 242
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 246
    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v5, [I

    aput v4, v1, v7

    invoke-virtual {v0, v6, v1, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 251
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    .line 250
    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 252
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerHiddenAmount:F

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 252
    invoke-virtual {v2, v3, v1, v0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 255
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateColor(I)V

    return-void
.end method

.method private updateIconVisibility()Z
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canShowLockIcon()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    move v1, v2

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1

    .line 354
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDozing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDocked:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShowingLaunchAffordance:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v2

    .line 356
    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mFingerprintUnlock:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 357
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    if-eqz v1, :cond_a

    .line 358
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerShowingScrimmed:Z

    if-nez v1, :cond_a

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 360
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarState:I

    if-eq v1, v2, :cond_9

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 363
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v1

    if-nez v1, :cond_a

    move v0, v2

    .line 367
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockIcon;

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBiometricAuthModeChanged(ZZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    .line 199
    :cond_0
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mFingerprintUnlock:Z

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->canBlockUpdates()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBlockUpdates:Z

    .line 205
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onScrimVisibilityChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeAndUnlockRunning:Z

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    :cond_0
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 212
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mShowingLaunchAffordance:Z

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setStatusBarState(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDozing:Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSimLocked:Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateColor()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mSBStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mWakeUpListener:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mDockManager:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBouncerHideAmount(F)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerHiddenAmount:F

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->updateColor()V

    return-void
.end method

.method public setBouncerShowingScrimmed(ZZ)V
    .locals 0

    .line 218
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mBouncerShowingScrimmed:Z

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->mTransientBiometricsError:Z

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->update()V

    return-void
.end method
