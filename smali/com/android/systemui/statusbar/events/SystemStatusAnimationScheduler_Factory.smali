.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final chipAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private final coordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemEventCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final systemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
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
            "Lcom/android/systemui/statusbar/events/SystemEventCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->coordinatorProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->chipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->systemClockProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemEventCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;"
        }
    .end annotation

    .line 51
    new-instance v6, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .locals 7

    .line 58
    new-instance v6, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->coordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->chipAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/time/SystemClock;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->newInstance(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler_Factory;->get()Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    move-result-object p0

    return-object p0
.end method
