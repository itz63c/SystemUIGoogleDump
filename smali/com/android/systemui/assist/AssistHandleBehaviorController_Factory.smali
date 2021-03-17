.class public final Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;
.super Ljava/lang/Object;
.source "AssistHandleBehaviorController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
        ">;"
    }
.end annotation


# instance fields
.field private final a11yManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final assistHandleViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final assistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final behaviorMapProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;"
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

.field private final deviceConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
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

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->assistHandleViewControllerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->behaviorMapProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p7, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->a11yManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p9, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;"
        }
    .end annotation

    .line 75
    new-instance v10, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;

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

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljavax/inject/Provider;Lcom/android/systemui/assist/DeviceConfigHelper;Ljava/util/Map;Lcom/android/systemui/navigationbar/NavigationModeController;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/assist/AssistHandleBehaviorController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Landroid/os/Handler;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleViewController;",
            ">;",
            "Lcom/android/systemui/assist/DeviceConfigHelper;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Ldagger/Lazy<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;"
        }
    .end annotation

    .line 84
    new-instance v10, Lcom/android/systemui/assist/AssistHandleBehaviorController;

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

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/assist/AssistHandleBehaviorController;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljavax/inject/Provider;Lcom/android/systemui/assist/DeviceConfigHelper;Ljava/util/Map;Lcom/android/systemui/navigationbar/NavigationModeController;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleBehaviorController;
    .locals 10

    .line 64
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/app/AssistUtils;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->assistHandleViewControllerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->deviceConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/assist/DeviceConfigHelper;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->behaviorMapProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->a11yManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v8

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/dump/DumpManager;

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->newInstance(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljavax/inject/Provider;Lcom/android/systemui/assist/DeviceConfigHelper;Ljava/util/Map;Lcom/android/systemui/navigationbar/NavigationModeController;Ldagger/Lazy;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/assist/AssistHandleBehaviorController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController_Factory;->get()Lcom/android/systemui/assist/AssistHandleBehaviorController;

    move-result-object p0

    return-object p0
.end method
