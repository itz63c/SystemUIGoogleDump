.class public final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;
.super Ljava/lang/Object;
.source "SysUIConcurrencyModule_ProvideDelayableExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->provideDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;->provideDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideDelayableExecutorFactory;->get()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method
