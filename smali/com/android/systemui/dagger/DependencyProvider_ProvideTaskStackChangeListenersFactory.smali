.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideTaskStackChangeListenersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;
    .locals 1

    .line 30
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;)V

    return-object v0
.end method

.method public static provideTaskStackChangeListeners(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/shared/system/TaskStackChangeListeners;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider;->provideTaskStackChangeListeners()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/shared/system/TaskStackChangeListeners;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;->provideTaskStackChangeListeners(Lcom/android/systemui/dagger/DependencyProvider;)Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTaskStackChangeListenersFactory;->get()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p0

    return-object p0
.end method
