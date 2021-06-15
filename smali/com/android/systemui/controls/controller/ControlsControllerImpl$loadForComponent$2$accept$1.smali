.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2;->accept(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,711:1\n1517#2:712\n1588#2,3:713\n1517#2:716\n1588#2,3:717\n1819#2:720\n1819#2,2:721\n1820#2:723\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1\n*L\n298#1:712\n298#1,3:713\n305#1:716\n305#1,3:717\n313#1:720\n314#1,2:721\n313#1:723\n*E\n"
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dataCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$dataCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 297
    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 298
    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 1517
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1589
    check-cast v4, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 298
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_0
    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$componentName:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/controls/controller/Favorites;->updateControls(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 304
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$findRemoved(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 305
    iget-object v4, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$controls:Ljava/util/List;

    iget-object v12, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$componentName:Landroid/content/ComponentName;

    .line 1517
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1589
    move-object v6, v4

    check-cast v6, Landroid/service/controls/Control;

    .line 306
    new-instance v4, Lcom/android/systemui/controls/ControlStatus;

    .line 309
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v4

    move-object v7, v12

    .line 306
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 313
    sget-object v4, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v5, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    iget-object v12, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v14, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$componentName:Landroid/content/ComponentName;

    .line 1819
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 314
    invoke-virtual {v15}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v5

    .line 1819
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 315
    invoke-virtual {v7}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    invoke-virtual {v15}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    move-object v6, v14

    invoke-static/range {v5 .. v11}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->createRemovedStatus$default(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;ZILjava/lang/Object;)Lcom/android/systemui/controls/ControlStatus;

    move-result-object v5

    .line 317
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 322
    :cond_5
    invoke-static {v3, v13}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 321
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject$default(Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    move-result-object v1

    .line 326
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$2$accept$1;->$dataCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
