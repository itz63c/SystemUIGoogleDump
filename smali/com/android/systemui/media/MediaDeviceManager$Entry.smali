.class final Lcom/android/systemui/media/MediaDeviceManager$Entry;
.super Landroid/media/session/MediaController$Callback;
.source "MediaDeviceManager.kt"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final controller:Landroid/media/session/MediaController;

.field private current:Lcom/android/settingslib/media/MediaDevice;

.field private final key:Ljava/lang/String;

.field private final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field private final oldKey:Ljava/lang/String;

.field private playbackType:I

.field private started:Z

.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaController;",
            "Lcom/android/settingslib/media/LocalMediaManager;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localMediaManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    .line 126
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 125
    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method public static final synthetic access$setPlaybackType$p(Lcom/android/systemui/media/MediaDeviceManager$Entry;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    return-void
.end method

.method public static final synthetic access$setStarted$p(Lcom/android/systemui/media/MediaDeviceManager$Entry;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->started:Z

    return-void
.end method

.method public static final synthetic access$updateCurrent(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method private final setCurrent(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->current:Lcom/android/settingslib/media/MediaDevice;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->current:Lcom/android/settingslib/media/MediaDevice;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getFgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;

    iget-object v2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDeviceManager$Entry;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private final updateCurrent()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    .line 200
    invoke-static {v3}, Lcom/android/systemui/media/MediaDeviceManager;->access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v0

    .line 203
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->setCurrent(Lcom/android/settingslib/media/MediaDevice;)V

    .line 199
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v2, :cond_2

    .line 205
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->setCurrent(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    .line 162
    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    move-object v0, p3

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    .line 165
    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getMr2manager$p(Lcom/android/systemui/media/MediaDeviceManager;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->current:Lcom/android/settingslib/media/MediaDevice;

    if-nez v1, :cond_2

    move-object v1, p3

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "    current device is "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getController()Landroid/media/session/MediaController;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 170
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    PlaybackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (1 for local, 2 for remote) cached="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    routingSession="

    .line 171
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    selectedRoutes="

    .line 172
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getController()Landroid/media/session/MediaController;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalMediaManager()Lcom/android/settingslib/media/LocalMediaManager;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-object p0
.end method

.method public final getOldKey()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getToken()Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p1

    .line 179
    :goto_0
    iget v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    if-ne p1, v0, :cond_1

    return-void

    .line 182
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$getBgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    const-string p2, "device"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDeviceManager;->access$getBgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getBgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getBgExecutor$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
