.class public final Lcom/android/systemui/appops/PermissionFlagsCache;
.super Ljava/lang/Object;
.source "PermissionFlagsCache.kt"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionFlagsCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionFlagsCache.kt\ncom/android/systemui/appops/PermissionFlagsCache\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,88:1\n355#2,7:89\n*E\n*S KotlinDebug\n*F\n+ 1 PermissionFlagsCache.kt\ncom/android/systemui/appops/PermissionFlagsCache\n*L\n76#1,7:89\n*E\n"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private listening:Z

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final permissionFlagsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/appops/PermissionFlagKey;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->packageManager:Landroid/content/pm/PackageManager;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->executor:Ljava/util/concurrent/Executor;

    .line 47
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getFlags(Lcom/android/systemui/appops/PermissionFlagsCache;Lcom/android/systemui/appops/PermissionFlagKey;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/appops/PermissionFlagsCache;->getFlags(Lcom/android/systemui/appops/PermissionFlagKey;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPermissionFlagsCache$p(Lcom/android/systemui/appops/PermissionFlagsCache;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Ljava/util/Map;

    return-object p0
.end method

.method private final getFlags(Lcom/android/systemui/appops/PermissionFlagKey;)I
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/systemui/appops/PermissionFlagKey;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/appops/PermissionFlagKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/appops/PermissionFlagKey;->getUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 85
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->listening:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->listening:Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 75
    :cond_0
    new-instance v0, Lcom/android/systemui/appops/PermissionFlagKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/appops/PermissionFlagKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 355
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 358
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 76
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 77
    invoke-direct {p0, v0}, Lcom/android/systemui/appops/PermissionFlagsCache;->getFlags(Lcom/android/systemui/appops/PermissionFlagKey;)I

    move-result p1

    .line 78
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 79
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->permissionFlagsCache:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public onPermissionsChanged(I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagsCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;-><init>(Lcom/android/systemui/appops/PermissionFlagsCache;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
