.class public final Lcom/google/android/systemui/gamedashboard/FpsController_Factory;
.super Ljava/lang/Object;
.source "FpsController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/gamedashboard/FpsController;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FpsController_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/FpsController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/FpsController_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/android/systemui/gamedashboard/FpsController_Factory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/FpsController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/concurrent/Executor;)Lcom/google/android/systemui/gamedashboard/FpsController;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/systemui/gamedashboard/FpsController;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/FpsController;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/FpsController;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FpsController_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/FpsController_Factory;->newInstance(Ljava/util/concurrent/Executor;)Lcom/google/android/systemui/gamedashboard/FpsController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FpsController_Factory;->get()Lcom/google/android/systemui/gamedashboard/FpsController;

    move-result-object p0

    return-object p0
.end method
