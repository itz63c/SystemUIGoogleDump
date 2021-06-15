.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1;->accept(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,711:1\n1819#2,2:712\n181#3,2:714\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1\n*L\n409#1,2:712\n420#1,2:714\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/SeedResponse;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $didAnyFail:Z

.field final synthetic $remaining:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;Landroid/content/ComponentName;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/SeedResponse;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$remaining:Ljava/util/List;

    iput-boolean p6, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$didAnyFail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 407
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/controls/Control;

    .line 410
    invoke-virtual {v2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    .line 411
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    .line 412
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 413
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    .line 415
    new-instance v5, Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.controlId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "it.title"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "it.subtitle"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v2

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 414
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 420
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    .line 181
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v4, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 422
    new-instance v5, Lcom/android/systemui/controls/controller/StructureInfo;

    const-string v6, "s"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "cs"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v1, v3, v2}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 421
    invoke-virtual {v4, v5}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    goto :goto_1

    .line 425
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    new-instance v1, Lcom/android/systemui/controls/controller/SeedResponse;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentName.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$remaining:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$didAnyFail:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$startSeeding(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;Ljava/util/function/Consumer;Z)V

    return-void
.end method
