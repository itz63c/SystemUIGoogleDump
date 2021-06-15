.class public final Lcom/google/android/systemui/columbus/actions/ManageMedia;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "ManageMedia.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/ManageMedia$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/ManageMedia$Companion;


# instance fields
.field private activeSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final activeSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final handler:Landroid/os/Handler;

.field private listening:Z

.field private final mediaSessionManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/media/session/MediaSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/ManageMedia$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/ManageMedia$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->Companion:Lcom/google/android/systemui/columbus/actions/ManageMedia$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Landroid/media/session/MediaSessionManager;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSessionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 26
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->mediaSessionManager:Ldagger/Lazy;

    .line 23
    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->handler:Landroid/os/Handler;

    .line 24
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/ManageMedia"

    .line 28
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->tag:Ljava/lang/String;

    .line 34
    new-instance p1, Lcom/google/android/systemui/columbus/actions/ManageMedia$activeSessionsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia$activeSessionsChangedListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/ManageMedia;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->activeSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 40
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia;->initActiveSessionsChangedListener()V

    return-void
.end method

.method public static final synthetic access$setActiveSessions$p(Lcom/google/android/systemui/columbus/actions/ManageMedia;Ljava/util/List;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->activeSessions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/ManageMedia;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia;->updateAvailable()V

    return-void
.end method

.method private final initActiveSessionsChangedListener()V
    .locals 5

    .line 65
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->listening:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->listening:Z

    .line 67
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->mediaSessionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 68
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->activeSessions:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->mediaSessionManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 71
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 72
    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->handler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 73
    iget-object v4, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->activeSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 69
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/ManageMedia;->updateAvailable()V

    :cond_0
    return-void
.end method

.method private final updateAvailable()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->activeSessions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public availableOnScreenOff()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    .line 52
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->activeSessions:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaController;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_3

    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_6

    :goto_2
    const/4 v1, 0x2

    if-nez v0, :cond_4

    goto :goto_3

    .line 55
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_4

    .line 59
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 60
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_5

    .line 56
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 57
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_5
    return-void
.end method
