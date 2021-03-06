.class public final Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;
.super Ljava/lang/Object;
.source "OpaEnabledReceiver_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/OpaEnabledReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final fgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final opaEnabledSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledSettings;",
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
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledSettings;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->fgExecutorProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->opaEnabledSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/OpaEnabledSettings;",
            ">;)",
            "Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;"
        }
    .end annotation

    .line 49
    new-instance v6, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/assist/OpaEnabledSettings;)Lcom/google/android/systemui/assist/OpaEnabledReceiver;
    .locals 7

    .line 55
    new-instance v6, Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/assist/OpaEnabledSettings;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/OpaEnabledReceiver;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->fgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->opaEnabledSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/assist/OpaEnabledSettings;)Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/OpaEnabledReceiver_Factory;->get()Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    move-result-object p0

    return-object p0
.end method
