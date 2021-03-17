.class public final Lcom/android/systemui/tuner/TunerServiceImpl_Factory;
.super Ljava/lang/Object;
.source "TunerServiceImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/tuner/TunerServiceImpl;",
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

.field private final demoModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final leakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final userTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->leakDetectorProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;)",
            "Lcom/android/systemui/tuner/TunerServiceImpl_Factory;"
        }
    .end annotation

    .line 57
    new-instance v7, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/tuner/TunerServiceImpl;
    .locals 8

    .line 63
    new-instance v7, Lcom/android/systemui/tuner/TunerServiceImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/TunerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/tuner/TunerServiceImpl;
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->leakDetectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/demomode/DemoModeController;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/settings/UserTracker;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->newInstance(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/tuner/TunerServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->get()Lcom/android/systemui/tuner/TunerServiceImpl;

    move-result-object p0

    return-object p0
.end method
