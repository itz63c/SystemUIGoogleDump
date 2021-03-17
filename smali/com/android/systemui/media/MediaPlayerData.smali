.class public final Lcom/android/systemui/media/MediaPlayerData;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n1#2:572\n1517#3:573\n1588#3,3:574\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaPlayerData\n*L\n561#1:573\n561#1,3:574\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

.field private static final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaPlayers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaPlayerData;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    .line 534
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$compareByDescending$1;-><init>()V

    .line 535
    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 536
    new-instance v0, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    .line 537
    new-instance v1, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaPlayerData$special$$inlined$thenByDescending$3;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lcom/android/systemui/media/MediaPlayerData;->comparator:Ljava/util/Comparator;

    .line 539
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    .line 540
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    .line 544
    new-instance p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;-><init>(Lcom/android/systemui/media/MediaData;J)V

    .line 545
    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 0

    .line 567
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 568
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 553
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    .line 556
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    :goto_1
    return-object p0
.end method

.method public final mediaData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ">;>;"
        }
    .end annotation

    .line 561
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Ljava/util/Map$Entry;

    .line 561
    new-instance v2, Lkotlin/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->getData()Lcom/android/systemui/media/MediaData;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final players()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation

    .line 563
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "mediaPlayers.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaControlPanel;

    :goto_0
    return-object p0
.end method
