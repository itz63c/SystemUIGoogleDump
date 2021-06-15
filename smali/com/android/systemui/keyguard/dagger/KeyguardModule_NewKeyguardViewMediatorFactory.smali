.class public final Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;
.super Ljava/lang/Object;
.source "KeyguardModule_NewKeyguardViewMediatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
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

.field private final deviceConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissCallbackRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
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

.field private final falsingCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardDisplayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final lockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
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

.field private final statusBarKeyguardViewManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final trustManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/trust/TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private final uiBgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final updateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/trust/TrustManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 90
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 91
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->falsingCollectorProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 92
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 93
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 94
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->statusBarKeyguardViewManagerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 95
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 96
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->updateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 97
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 98
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->powerManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 99
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->trustManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 100
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 101
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->deviceConfigProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 102
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 103
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->keyguardDisplayManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 104
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 105
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 106
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 107
    iput-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/trust/TrustManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            ">;)",
            "Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;"
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

    move-object/from16 v18, p17

    .line 131
    new-instance v19, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v19
.end method

.method public static newKeyguardViewMediator(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/os/PowerManager;",
            "Landroid/app/trust/TrustManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;"
        }
    .end annotation

    .line 146
    invoke-static/range {p0 .. p17}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;->newKeyguardViewMediator(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 20

    move-object/from16 v0, p0

    .line 112
    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->falsingCollectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->statusBarKeyguardViewManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->dismissCallbackRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->updateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/PowerManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->trustManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/trust/TrustManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->uiBgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->deviceConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->keyguardDisplayManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v19

    invoke-static/range {v2 .. v19}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->newKeyguardViewMediator(Landroid/content/Context;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Landroid/app/trust/TrustManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/dagger/KeyguardModule_NewKeyguardViewMediatorFactory;->get()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    return-object p0
.end method
