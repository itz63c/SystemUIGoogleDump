.class public final Lcom/android/systemui/biometrics/UdfpsController_Factory;
.super Ljava/lang/Object;
.source "UdfpsController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/biometrics/UdfpsController;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final fgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final fingerprintManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            ">;"
        }
    .end annotation
.end field

.field private final hbmCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final vibratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmCallback;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->inflaterProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->fingerprintManagerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->fgExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 87
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->statusBarProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 93
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 95
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 96
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->vibratorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 97
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->hbmCallbackProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/UdfpsController_Factory;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmCallback;",
            ">;>;)",
            "Lcom/android/systemui/biometrics/UdfpsController_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 119
    new-instance v18, Lcom/android/systemui/biometrics/UdfpsController_Factory;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/biometrics/UdfpsController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v18
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Landroid/os/Vibrator;Ljava/util/Optional;)Lcom/android/systemui/biometrics/UdfpsController;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/LayoutInflater;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Landroid/os/Vibrator;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmCallback;",
            ">;)",
            "Lcom/android/systemui/biometrics/UdfpsController;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 130
    new-instance v18, Lcom/android/systemui/biometrics/UdfpsController;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/biometrics/UdfpsController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Landroid/os/Vibrator;Ljava/util/Optional;)V

    return-object v18
.end method


# virtual methods
.method public get()Lcom/android/systemui/biometrics/UdfpsController;
    .locals 19

    move-object/from16 v0, p0

    .line 102
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->inflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->fingerprintManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->fgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/os/PowerManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->vibratorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/os/Vibrator;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController_Factory;->hbmCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Optional;

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/biometrics/UdfpsController_Factory;->newInstance(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Landroid/os/Vibrator;Ljava/util/Optional;)Lcom/android/systemui/biometrics/UdfpsController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController_Factory;->get()Lcom/android/systemui/biometrics/UdfpsController;

    move-result-object p0

    return-object p0
.end method
