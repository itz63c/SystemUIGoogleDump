.class public final Lcom/android/systemui/media/MediaDataFilter;
.super Ljava/lang/Object;
.source "MediaDataFilter.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDataFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDataFilter.kt\ncom/android/systemui/media/MediaDataFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,234:1\n1819#2,2:235\n1819#2,2:237\n1819#2,2:239\n1819#2,2:241\n1819#2,2:243\n1819#2,2:245\n1819#2:247\n1819#2,2:248\n1820#2:250\n1819#2,2:252\n1819#2,2:255\n181#3:251\n182#3:254\n153#3,3:257\n*E\n*S KotlinDebug\n*F\n+ 1 MediaDataFilter.kt\ncom/android/systemui/media/MediaDataFilter\n*L\n97#1,2:235\n120#1,2:237\n134#1,2:239\n141#1,2:241\n157#1,2:243\n164#1,2:245\n175#1:247\n177#1,2:248\n175#1:250\n186#1,2:252\n199#1,2:255\n182#1:251\n182#1:254\n211#1,3:257\n*E\n"
.end annotation


# instance fields
.field private final _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDataManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final allEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final executor:Ljava/util/concurrent/Executor;

.field private hasSmartspace:Z

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final mediaResumeListener:Lcom/android/systemui/media/MediaResumeListener;

.field private reactivatedKey:Ljava/lang/String;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final userEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;"
        }
    .end annotation
.end field

.field private final userTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 1

    const-string v0, "broadcastDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaResumeListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaResumeListener:Lcom/android/systemui/media/MediaResumeListener;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/media/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 56
    iput-object p4, p0, Lcom/android/systemui/media/MediaDataFilter;->executor:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p5, p0, Lcom/android/systemui/media/MediaDataFilter;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 60
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 65
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    .line 67
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 72
    new-instance p2, Lcom/android/systemui/media/MediaDataFilter$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/MediaDataFilter$1;-><init>(Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataFilter;->userTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 78
    invoke-virtual {p2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/media/MediaDataFilter;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getUserEntries$p(Lcom/android/systemui/media/MediaDataFilter;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private final isMediaRecommendationEmpty(Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 0

    .line 230
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object p0

    const-string p1, "data.getIconGrid()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/media/MediaDataManager$Listener;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/Set;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaDataManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/MediaDataManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mediaDataManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final handleUserSwitched$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "userEntries.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " after user change"

    const-string v3, "MediaDataFilter"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataManager$Listener;

    const-string v4, "it"

    .line 178
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    .line 181
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    .line 183
    iget-object v5, p0, Lcom/android/systemui/media/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v5, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/MediaDataManager$Listener;

    const/4 v7, 0x0

    .line 187
    invoke-interface {v6, v4, v7, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final hasActiveMedia()Z
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataFilter;->hasSmartspace:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2
.end method

.method public final hasAnyMedia()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaDataFilter;->hasSmartspace:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 82
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 91
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 98
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    if-nez v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 142
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "key"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 103
    iput-boolean v3, v0, Lcom/android/systemui/media/MediaDataFilter;->hasSmartspace:Z

    .line 106
    iget-object v3, v0, Lcom/android/systemui/media/MediaDataFilter;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 107
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/android/systemui/media/MediaDataFilter$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/media/MediaDataFilter$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;-><init>(Lcom/android/systemui/media/MediaDataFilter;)V

    invoke-static {v5, v6}, Lkotlin/collections/MapsKt;->toSortedMap(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v5

    .line 110
    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v6

    const-string v7, "MediaDataFilter"

    if-lez v6, :cond_2

    .line 111
    invoke-interface {v5}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 112
    invoke-interface {v5, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/MediaData;

    if-nez v8, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaData;->getLastActive()J

    move-result-wide v8

    sub-long/2addr v3, v8

    .line 115
    :goto_0
    invoke-static {}, Lcom/android/systemui/media/MediaDataFilterKt;->getSMARTSPACE_MAX_AGE()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-gez v3, :cond_2

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reactivating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead of smartspace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object v6, v0, Lcom/android/systemui/media/MediaDataFilter;->reactivatedKey:Ljava/lang/String;

    .line 119
    invoke-interface {v5, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    move-object v7, v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const v32, 0x7fbfff

    const/16 v33, 0x0

    invoke-static/range {v7 .. v33}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v1

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaDataManager$Listener;

    const-string v3, "lastActiveKey"

    .line 121
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v6, v6, v1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_1

    :cond_1
    return-void

    .line 128
    :cond_2
    invoke-direct {v0, v2}, Lcom/android/systemui/media/MediaDataFilter;->isMediaRecommendationEmpty(Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "Empty media recommendations. Skip showing the card"

    .line 129
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 134
    invoke-interface {v3, v1, v2}, Lcom/android/systemui/media/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaDataFilter;->hasSmartspace:Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->reactivatedKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 164
    invoke-interface {v0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->reactivatedKey:Ljava/lang/String;

    const-string p1, "expiring reactivated key "

    .line 154
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaDataFilter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaData;

    if-nez p1, :cond_2

    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/Set;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 158
    invoke-interface {v1, v0, v0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final onSwipeToDismiss()V
    .locals 4

    const-string v0, "MediaDataFilter"

    const-string v1, "Media carousel swiped away"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "userEntries.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getMediaDataManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/MediaDataManager;

    move-result-object v2

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Lcom/android/systemui/media/MediaDataManager;->setTimedOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDataFilter;->hasSmartspace:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataFilter;->getMediaDataManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/MediaDataManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(J)V

    :cond_1
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setMediaDataManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/media/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    return-void
.end method
