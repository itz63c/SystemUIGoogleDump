.class public final Lcom/android/systemui/wmshell/WMShell_Factory;
.super Ljava/lang/Object;
.source "WMShell_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/wmshell/WMShell;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
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

.field private final hideDisplayCutoutOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;>;"
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

.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final oneHandedOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pipOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;"
        }
    .end annotation
.end field

.field private final protoTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
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

.field private final shellCommandHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final splitScreenOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sysUiMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->pipOptionalProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->splitScreenOptionalProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->oneHandedOptionalProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->hideDisplayCutoutOptionalProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p6, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p7, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p8, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p9, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p10, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p11, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p12, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p13, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->protoTracerProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p14, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->sysUiMainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShell_Factory;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShell_Factory;"
        }
    .end annotation

    .line 104
    new-instance v15, Lcom/android/systemui/wmshell/WMShell_Factory;

    move-object v0, v15

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

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/wmshell/WMShell_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v15
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/tracing/ProtoTracer;Ljava/util/concurrent/Executor;)Lcom/android/systemui/wmshell/WMShell;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/systemui/wmshell/WMShell;"
        }
    .end annotation

    .line 114
    new-instance v15, Lcom/android/systemui/wmshell/WMShell;

    move-object v0, v15

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

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/wmshell/WMShell;-><init>(Landroid/content/Context;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/tracing/ProtoTracer;Ljava/util/concurrent/Executor;)V

    return-object v15
.end method


# virtual methods
.method public get()Lcom/android/systemui/wmshell/WMShell;
    .locals 15

    .line 89
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->pipOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->splitScreenOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->oneHandedOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->hideDisplayCutoutOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->shellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->sysUiStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/model/SysUiState;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->protoTracerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/tracing/ProtoTracer;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell_Factory;->sysUiMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v14, p0

    check-cast v14, Ljava/util/concurrent/Executor;

    invoke-static/range {v1 .. v14}, Lcom/android/systemui/wmshell/WMShell_Factory;->newInstance(Landroid/content/Context;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/tracing/ProtoTracer;Ljava/util/concurrent/Executor;)Lcom/android/systemui/wmshell/WMShell;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShell_Factory;->get()Lcom/android/systemui/wmshell/WMShell;

    move-result-object p0

    return-object p0
.end method
