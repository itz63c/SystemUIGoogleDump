.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final globalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
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

.field private final taskViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->taskViewFactoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p8, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p9, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;"
        }
    .end annotation

    .line 78
    new-instance v10, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/globalactions/GlobalActionsComponent;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;"
        }
    .end annotation

    .line 86
    new-instance v10, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/globalactions/GlobalActionsComponent;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->globalActionsComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->taskViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/globalactions/GlobalActionsComponent;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl_Factory;->get()Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method
