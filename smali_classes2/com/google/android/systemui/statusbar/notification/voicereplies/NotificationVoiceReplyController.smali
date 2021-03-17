.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;,
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController\n+ 2 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 5 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 6 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollectorKt\n*L\n1#1,779:1\n716#2,2:780\n714#2:782\n719#2:791\n716#2,2:792\n714#2:794\n719#2:803\n197#3,8:783\n197#3,8:795\n47#4:804\n49#4:808\n51#5:805\n56#5:807\n119#6:806\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController\n*L\n233#1,2:780\n233#1:782\n233#1:791\n257#1,2:792\n257#1:794\n257#1:803\n233#1,8:783\n257#1,8:795\n261#1:804\n261#1:808\n261#1:805\n261#1:807\n261#1:806\n*E\n"
.end annotation


# static fields
.field private static final CANDIDATE_TIMEOUT:J

.field public static final Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Companion;


# instance fields
.field private final assistantIconPaddingResId:I

.field private final assistantIconResId:I

.field private final assistantIconSizeResId:I

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final context:Landroid/content/Context;

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Companion;

    .line 538
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->CANDIDATE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;IIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
    .locals 1

    const-string v0, "notificationEntryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationRemoteInputManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBar"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 148
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 149
    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 150
    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 151
    iput p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->assistantIconResId:I

    .line 152
    iput p6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->assistantIconSizeResId:I

    .line 153
    iput p7, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->assistantIconPaddingResId:I

    .line 154
    iput-object p8, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 155
    iput-object p9, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 156
    iput-object p10, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 157
    iput-object p11, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    .line 158
    iput-object p12, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-void
.end method

.method public static final synthetic access$createVoiceReplyTarget(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;ILandroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Landroid/widget/Button;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->createVoiceReplyTarget(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;ILandroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Landroid/widget/Button;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractNewerCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractNewerCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCANDIDATE_TIMEOUT$cp()J
    .locals 2

    sget-wide v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->CANDIDATE_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getContext$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-object p0
.end method

.method public static final synthetic access$getNotificationEntryManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public static final synthetic access$refreshCandidateOnNotifChanges$newCandidate$s-1232117697(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->refreshCandidateOnNotifChanges$newCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/android/systemui/statusbar/notification/people/Subscription;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    return-object p0
.end method

.method private final createVoiceReplyTarget(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;ILandroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Landroid/widget/Button;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$Builder;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;I",
            "Landroid/app/PendingIntent;",
            "[",
            "Landroid/app/RemoteInput;",
            "Landroid/app/RemoteInput;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            ")",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 501
    new-instance v22, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-object/from16 v1, v22

    .line 512
    iget-object v13, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 513
    iget v14, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->assistantIconResId:I

    .line 514
    iget v15, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->assistantIconSizeResId:I

    move-object/from16 p1, v1

    .line 515
    iget v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->assistantIconPaddingResId:I

    move/from16 v16, v1

    .line 516
    iget-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v17, v1

    .line 517
    iget-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v1

    .line 518
    iget-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v19, v1

    .line 519
    iget-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    move-object/from16 v20, v1

    .line 520
    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-object/from16 v21, v0

    move-object/from16 v1, p1

    .line 501
    invoke-direct/range {v1 .. v21}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;ILandroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;IIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V

    return-object v22
.end method

.method private final extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "J",
            "Lkotlin/Lazy<",
            "+",
            "Landroid/app/Notification$Builder;",
            ">;)",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;"
        }
    .end annotation

    move-object v3, p0

    move-object v2, p2

    .line 433
    invoke-direct {p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->isMessagingStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 436
    :cond_0
    iget-object v0, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v8

    .line 437
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveHandlersByUser()Ljava/util/Map;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    const-string v0, "entry.key"

    if-nez v7, :cond_1

    .line 438
    iget-object v3, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "no handlers for user="

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 441
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v4, :cond_2

    .line 442
    iget-object v3, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "no actions"

    invoke-virtual {v3, v2, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 445
    :cond_2
    invoke-static {v4}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v9

    .line 446
    new-instance v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object/from16 v4, p5

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/Lazy;JLjava/util/List;I)V

    invoke-static {v9, v10}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    return-object v0
.end method

.method static synthetic extractCandidate$default(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;ILjava/lang/Object;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 429
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p3

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    .line 431
    new-instance p3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$1;

    invoke-direct {p3, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 427
    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method

.method private final extractNewerCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 9

    .line 416
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getPostTime()J

    move-result-wide v1

    :goto_0
    move-wide v6, v1

    .line 421
    invoke-static {v0}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getPostTime()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 424
    invoke-static/range {v0 .. v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate$default(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;ILjava/lang/Object;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final isMessagingStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 410
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Landroid/app/Notification$MessagingStyle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final refreshCandidateOnNotifChanges$newCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getEntryReinflations()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 239
    iget-object p0, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "entry.key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logReinflationDropped(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/android/systemui/statusbar/notification/people/Subscription;
    .locals 3

    .line 192
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveHandlersByUser()Ljava/util/Map;

    move-result-object v0

    .line 193
    invoke-interface {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$1;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$1;

    invoke-static {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$getOrPut(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 194
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)V

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->Subscription(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic stateMachine$lambda-37$hasCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 302
    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final synthetic stateMachine$lambda-37$inSession(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 354
    new-instance v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, p5}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final synthetic stateMachine$lambda-37$noCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 285
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$noCandidate$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$noCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public connect(Lkotlinx/coroutines/CoroutineScope;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;
    .locals 10

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlinx/coroutines/channels/Channel;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableStateFlow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$job$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$job$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 164
    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$1;-><init>(Lkotlinx/coroutines/Job;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;)V

    return-object v2
.end method

.method final synthetic notifyHandlersOfReplyAvailability(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 119
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 263
    sget-object p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$3;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$3;

    invoke-static {v0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 264
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$4;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic refreshCandidateOnNotifChanges(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;

    iget v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 235
    iget v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 257
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_1
    iget-object p0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$listener$1;

    iget-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p0

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v4, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v4

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 242
    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$listener$1;

    invoke-direct {p2, p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$listener$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)V

    .line 256
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 197
    :try_start_1
    iput-object p0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->label:I

    .line 198
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 203
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v1, :cond_4

    return-object v1

    .line 714
    :cond_4
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 257
    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    throw p1
.end method

.method final synthetic resetStateOnUserChange(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;

    iget v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 225
    iget v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 233
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_1
    iget-object p0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;

    iget-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p0

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v4, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v4

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;)V

    .line 232
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    .line 197
    :try_start_1
    iput-object p0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->label:I

    .line 198
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 203
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v1, :cond_4

    return-object v1

    .line 714
    :cond_4
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 233
    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->removeUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    throw p1
.end method

.method final synthetic startVoiceReply(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 406
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStartSessionRequests()Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    .line 407
    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 406
    invoke-interface {p0, p1, p7}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic stateMachine(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 274
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
