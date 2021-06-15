.class public final Lcom/android/systemui/media/MediaCarouselController$6;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,735:1\n1#2:736\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 9

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 188
    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v2, 0x2f7

    .line 190
    iget v3, p2, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    const/4 v4, 0x0

    .line 192
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 189
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIZIIILjava/lang/Object;)V

    .line 195
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->isPlaying()Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result p2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 196
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p2}, Lcom/android/systemui/media/MediaCarouselController;->access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 200
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p2}, Lcom/android/systemui/media/MediaCarouselController;->access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController$6;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_4

    .line 203
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 206
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MediaCarouselController"

    const-string v1, "My Smartspace media update is here"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/media/MediaCarouselController;->access$addSmartspaceMediaRecommendations(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    .line 213
    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v1, 0x2f7

    .line 215
    iget v2, p1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    const/4 v3, 0x1

    .line 217
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    .line 214
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIZIIILjava/lang/Object;)V

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression()V

    :cond_1
    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;)V
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MediaCarouselController"

    const-string v1, "My Smartspace media removal request is received"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method
