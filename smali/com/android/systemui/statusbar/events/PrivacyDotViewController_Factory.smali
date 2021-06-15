.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;
.super Ljava/lang/Object;
.source "PrivacyDotViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final animationSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final locationPublisherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final stateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->stateControllerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->locationPublisherProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->animationSchedulerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;)",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->stateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->locationPublisherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->animationSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->newInstance(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController_Factory;->get()Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-result-object p0

    return-object p0
.end method
