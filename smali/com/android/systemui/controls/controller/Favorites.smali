.class final Lcom/android/systemui/controls/controller/Favorites;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/Favorites\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,730:1\n46#2:731\n66#2,5:732\n95#2:776\n122#2,3:777\n256#3,2:737\n1328#3:739\n1414#3,5:740\n1445#3:745\n1470#3,3:746\n1473#3,3:756\n1162#3,2:759\n1190#3,4:761\n1819#3:765\n1819#3:766\n1820#3:774\n1820#3:775\n1711#3,3:780\n256#3,2:783\n1819#3,2:785\n355#4,7:749\n355#4,7:767\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/Favorites\n*L\n616#1:731\n616#1,5:732\n668#1:776\n668#1,3:777\n623#1,2:737\n627#1:739\n627#1,5:740\n630#1:745\n630#1,3:746\n630#1,3:756\n634#1,2:759\n634#1,4:761\n641#1:765\n642#1:766\n642#1:774\n641#1:775\n690#1,3:780\n694#1,2:783\n707#1,2:785\n630#1,7:749\n663#1,7:767\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

.field private static favMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "+",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/controller/Favorites;

    invoke-direct {v0}, Lcom/android/systemui/controls/controller/Favorites;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 614
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFavorite(Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;)Z
    .locals 9

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "structureName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 1711
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 1712
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 690
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    return v3

    .line 693
    :cond_3
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    goto :goto_1

    .line 256
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 694
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v1, v3

    .line 257
    :cond_6
    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    :goto_1
    if-nez v1, :cond_7

    .line 695
    new-instance v1, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    :cond_7
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 696
    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/controls/controller/StructureInfo;->copy$default(Lcom/android/systemui/controls/controller/StructureInfo;Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p1

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return v2
.end method

.method public final clear()V
    .locals 0

    .line 727
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    return-void
.end method

.method public final getAllStructures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    .line 616
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 616
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 1328
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1415
    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 627
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v0

    .line 1416
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getControlsForStructure(Lcom/android/systemui/controls/controller/StructureInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 256
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 623
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    if-nez v0, :cond_2

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final load(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "structures"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1471
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 630
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 355
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1473
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_1
    sput-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    return-void
.end method

.method public final removeStructures(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    sget-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 679
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sput-object p0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    return-void
.end method

.method public final replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 7

    const-string/jumbo v0, "updatedStructure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 703
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 708
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    move-object v4, p1

    .line 713
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 714
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 718
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 719
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sput-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    return-void
.end method

.method public final updateControls(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "componentName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "controls"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 1162
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1163
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1190
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1191
    move-object v4, v2

    check-cast v4, Landroid/service/controls/Control;

    .line 634
    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 641
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 642
    invoke-virtual {v6}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v8

    .line 1819
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 643
    invoke-virtual {v9}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Landroid/service/controls/Control;

    if-nez v17, :cond_2

    const/4 v10, 0x0

    goto :goto_4

    .line 644
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 645
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlSubtitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 646
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v10

    invoke-virtual {v9}, Lcom/android/systemui/controls/controller/ControlInfo;->getDeviceType()I

    move-result v11

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    move v10, v5

    move-object v5, v9

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v11, 0x0

    .line 649
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    const-string/jumbo v5, "updatedControl.title"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v13

    const-string/jumbo v5, "updatedControl.subtitle"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v9

    .line 648
    invoke-static/range {v10 .. v16}, Lcom/android/systemui/controls/controller/ControlInfo;->copy$default(Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/Object;)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v5

    move v10, v7

    .line 655
    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v11, ""

    .line 656
    :cond_5
    invoke-virtual {v6}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    move v10, v7

    .line 660
    :cond_6
    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move v5, v10

    move-object v10, v12

    :goto_4
    if-nez v10, :cond_7

    .line 661
    new-instance v10, Lkotlin/Pair;

    invoke-virtual {v6}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    :cond_7
    invoke-virtual {v10}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v10}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 355
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_8

    .line 663
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_8
    check-cast v11, Ljava/util/List;

    .line 663
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    if-nez v5, :cond_a

    return v4

    .line 95
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 668
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v5, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {v5, v0, v4, v3}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 670
    :cond_b
    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 671
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sput-object v1, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    return v7
.end method
