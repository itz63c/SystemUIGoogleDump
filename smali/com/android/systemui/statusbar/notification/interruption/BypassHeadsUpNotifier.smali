.class public final Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;
.super Ljava/lang/Object;
.source "BypassHeadsUpNotifier.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final context:Landroid/content/Context;

.field private currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private enabled:Z

.field private final entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private fullyAwake:Z

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/tuner/TunerService;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationLockscreenUserManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunerService"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 47
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->enabled:Z

    .line 63
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 65
    new-instance p1, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;)V

    const-string p0, "show_media_when_bypassing"

    .line 71
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p8, p1, p0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setEnabled$p(Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->enabled:Z

    return-void
.end method

.method private final canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->isAutoHeadsUpAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private final isAutoHeadsUpAllowed()Z
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    return v1

    .line 139
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->fullyAwake:Z

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->canAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 93
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAutoHeadsUp(Z)V

    if-eqz v0, :cond_2

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->entryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 82
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 85
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onStatePostChange()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final setFullyAwake(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->fullyAwake:Z

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->currentMediaEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->updateAutoHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public final setUp()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;->mediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    return-void
.end method
