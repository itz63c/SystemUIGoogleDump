.class public final Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;
.super Ljava/lang/Object;
.source "AssistHandleReminderExpBehavior_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final bootCompleteCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
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

.field private final sysUiFlagContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final taskStackChangeListenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p9, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p10, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->packageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p11, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p12, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->bootCompleteCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/slice/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;"
        }
    .end annotation

    .line 94
    new-instance v13, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static newInstance(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/DeviceConfigHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Clock;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/BootCompleteCache;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;"
        }
    .end annotation

    .line 106
    new-instance v13, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;-><init>(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/DeviceConfigHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v13
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
    .locals 13

    .line 80
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/slice/Clock;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/assist/DeviceConfigHelper;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->packageManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->bootCompleteCacheProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v12

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->newInstance(Landroidx/slice/Clock;Landroid/os/Handler;Lcom/android/systemui/assist/DeviceConfigHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior_Factory;->get()Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    move-result-object p0

    return-object p0
.end method
