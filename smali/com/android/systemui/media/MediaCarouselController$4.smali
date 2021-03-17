.class final Lcom/android/systemui/media/MediaCarouselController$4;
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
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n1819#2,2:572\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$4\n*L\n178#1,2:572\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeAllowed()V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaCarouselController;->access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 178
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$getMediaCarouselScrollHandler$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    return-void
.end method
