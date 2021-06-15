.class final Lcom/android/systemui/media/MediaCarouselController$5;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,735:1\n1819#2,2:736\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$5\n*L\n177#1,2:736\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeAllowed()V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaCarouselController;->access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    .line 177
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$5;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    return-void
.end method
