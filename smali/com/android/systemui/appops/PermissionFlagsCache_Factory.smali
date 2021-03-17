.class public final Lcom/android/systemui/appops/PermissionFlagsCache_Factory;
.super Ljava/lang/Object;
.source "PermissionFlagsCache_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/appops/PermissionFlagsCache;",
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

.field private final packageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/PermissionFlagsCache_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/appops/PermissionFlagsCache_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/appops/PermissionFlagsCache;
    .locals 1

    .line 39
    new-instance v0, Lcom/android/systemui/appops/PermissionFlagsCache;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/appops/PermissionFlagsCache;-><init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/appops/PermissionFlagsCache;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->newInstance(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;)Lcom/android/systemui/appops/PermissionFlagsCache;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/appops/PermissionFlagsCache_Factory;->get()Lcom/android/systemui/appops/PermissionFlagsCache;

    move-result-object p0

    return-object p0
.end method
