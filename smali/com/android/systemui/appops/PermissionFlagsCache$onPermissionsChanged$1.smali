.class final Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;
.super Ljava/lang/Object;
.source "PermissionFlagsCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appops/PermissionFlagsCache;->onPermissionsChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionFlagsCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionFlagsCache.kt\ncom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n386#2:89\n1206#3,4:90\n*E\n*S KotlinDebug\n*F\n+ 1 PermissionFlagsCache.kt\ncom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1\n*L\n55#1:89\n55#1,4:90\n*E\n"
.end annotation


# instance fields
.field final synthetic $uid:I

.field final synthetic this$0:Lcom/android/systemui/appops/PermissionFlagsCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/appops/PermissionFlagsCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;->this$0:Lcom/android/systemui/appops/PermissionFlagsCache;

    iput p2, p0, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;->$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;->this$0:Lcom/android/systemui/appops/PermissionFlagsCache;

    invoke-static {v0}, Lcom/android/systemui/appops/PermissionFlagsCache;->access$getPermissionFlagsCache$p(Lcom/android/systemui/appops/PermissionFlagsCache;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;->$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/appops/PermissionFlagsCache$onPermissionsChanged$1;->this$0:Lcom/android/systemui/appops/PermissionFlagsCache;

    .line 386
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1206
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1207
    check-cast v2, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appops/PermissionFlagKey;

    invoke-static {p0, v2}, Lcom/android/systemui/appops/PermissionFlagsCache;->access$getFlags(Lcom/android/systemui/appops/PermissionFlagsCache;Lcom/android/systemui/appops/PermissionFlagKey;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
