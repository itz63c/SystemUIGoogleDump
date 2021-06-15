.class public final Lcom/android/wm/shell/common/FloatingContentCoordinator;
.super Ljava/lang/Object;
.source "FloatingContentCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;,
        Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingContentCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingContentCoordinator.kt\ncom/android/wm/shell/common/FloatingContentCoordinator\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,369:1\n509#2:370\n494#2,6:371\n181#3,2:377\n1819#4,2:379\n*E\n*S KotlinDebug\n*F\n+ 1 FloatingContentCoordinator.kt\ncom/android/wm/shell/common/FloatingContentCoordinator\n*L\n198#1:370\n198#1,6:371\n202#1,2:377\n230#1,2:379\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;


# instance fields
.field private final allContentBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private currentlyResolvingConflicts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->Companion:Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    return-void
.end method

.method private final maybeMoveConflictingContent(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V
    .locals 8

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->currentlyResolvingConflicts:Z

    .line 194
    iget-object v1, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    .line 509
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 494
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 199
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    :cond_1
    if-eqz v5, :cond_0

    .line 496
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 208
    iget-object v3, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 209
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v2, v1, v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;->calculateNewBoundsOnOverlap(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    invoke-interface {v2, v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;->moveToBounds(Landroid/graphics/Rect;)V

    .line 218
    iget-object v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {v2}, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 222
    :cond_4
    iput-boolean v5, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->currentlyResolvingConflicts:Z

    return-void
.end method

.method private final updateContentBounds()V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    check-cast v1, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;

    .line 230
    iget-object v2, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {v1}, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onContentAdded(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V
    .locals 2

    const-string v0, "newContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->updateContentBounds()V

    .line 130
    iget-object v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->maybeMoveConflictingContent(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    return-void
.end method

.method public final onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->currentlyResolvingConflicts:Z

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "FloatingCoordinator"

    const-string p1, "Received onContentMoved call before onContentAdded! This should never happen."

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->updateContentBounds()V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->maybeMoveConflictingContent(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    return-void
.end method

.method public final onContentRemoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V
    .locals 1

    const-string v0, "removedContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator;->allContentBounds:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
