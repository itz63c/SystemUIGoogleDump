.class public final Lcom/android/systemui/media/MediaSessionBasedFilter;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSessionBasedFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n1819#2,2:198\n1517#2:200\n1588#2,3:201\n*E\n*S KotlinDebug\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter\n*L\n184#1,2:198\n194#1:200\n194#1,3:201\n*E\n"
.end annotation


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final foregroundExecutor:Ljava/util/concurrent/Executor;

.field private final keyedTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/media/session/MediaSession$Token;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDataManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final packageControllers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sessionListener:Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;

.field private final sessionManager:Landroid/media/session/MediaSessionManager;

.field private final tokensWithNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    .line 54
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    .line 58
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 61
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    .line 63
    new-instance p2, Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionListener:Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;

    .line 70
    new-instance p2, Lcom/android/systemui/media/MediaSessionBasedFilter$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/media/MediaSessionBasedFilter$1;-><init>(Landroid/content/Context;Lcom/android/systemui/media/MediaSessionBasedFilter;)V

    invoke-interface {p4, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$dispatchMediaDataLoaded(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaSessionBasedFilter;->dispatchMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public static final synthetic access$dispatchMediaDataRemoved(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter;->dispatchMediaDataRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$dispatchSmartspaceMediaDataLoaded(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaSessionBasedFilter;->dispatchSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method

.method public static final synthetic access$dispatchSmartspaceMediaDataRemoved(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter;->dispatchSmartspaceMediaDataRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getKeyedTokens$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Set;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getPackageControllers$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$getSessionListener$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionListener:Lcom/android/systemui/media/MediaSessionBasedFilter$sessionListener$1;

    return-object p0
.end method

.method public static final synthetic access$getSessionManager$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method public static final synthetic access$getTokensWithNotifications$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Set;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$handleControllersChanged(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter;->handleControllersChanged(Ljava/util/List;)V

    return-void
.end method

.method private final dispatchMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final dispatchMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final dispatchSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final dispatchSmartspaceMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final handleControllersChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/media/session/MediaController;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 190
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .line 194
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Landroid/media/session/MediaController;

    .line 194
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;

    invoke-direct {v1, p3, p2, p1, p0}, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/MediaData;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaSessionBasedFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter$onMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
