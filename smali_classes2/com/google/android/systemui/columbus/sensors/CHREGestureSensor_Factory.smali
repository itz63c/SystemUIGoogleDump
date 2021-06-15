.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;
.super Ljava/lang/Object;
.source "CHREGestureSensor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;",
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

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->gestureConfigurationProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;"
        }
    .end annotation

    .line 53
    new-instance v6, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
    .locals 7

    .line 59
    new-instance v6, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/UiEventLogger;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->gestureConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->newInstance(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor_Factory;->get()Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    move-result-object p0

    return-object p0
.end method
