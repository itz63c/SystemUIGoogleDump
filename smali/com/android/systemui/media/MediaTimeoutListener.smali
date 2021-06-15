.class public final Lcom/android/systemui/media/MediaTimeoutListener;
.super Ljava/lang/Object;
.source "MediaTimeoutListener.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;
    }
.end annotation


# instance fields
.field private final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

.field private final mediaListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public timeoutCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    const-string v0, "mediaControllerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getMainExecutor$p(Lcom/android/systemui/media/MediaTimeoutListener;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getMediaControllerFactory$p(Lcom/android/systemui/media/MediaTimeoutListener;)Lcom/android/systemui/media/MediaControllerFactory;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    return-object p0
.end method

.method public static final synthetic access$getMediaListeners$p(Lcom/android/systemui/media/MediaTimeoutListener;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final getTimeoutCallback()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "timeoutCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    const-string v1, "MediaTimeout"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, "Reusing destroyed listener "

    .line 64
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 73
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrating key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", for resumption"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for player "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t exist. Continuing..."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    :goto_2
    check-cast v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    if-nez v0, :cond_5

    .line 101
    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;-><init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getPlaying()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 83
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updating listener for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", was playing? "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0, p3}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/MediaData;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setKey(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->getPlaying()Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 91
    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p3, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$2$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$2$1;-><init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroy()V

    :goto_0
    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onSmartspaceMediaDataLoaded(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;->onSmartspaceMediaDataRemoved(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public final setTimeoutCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method
