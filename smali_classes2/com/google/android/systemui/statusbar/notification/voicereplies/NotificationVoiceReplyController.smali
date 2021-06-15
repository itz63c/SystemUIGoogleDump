.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController\n+ 2 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 5 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 6 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollectorKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,885:1\n731#2,2:886\n729#2:888\n734#2:897\n731#2,2:898\n729#2:900\n734#2:909\n197#3,8:889\n197#3,8:901\n47#4:910\n49#4:914\n51#5:911\n56#5:913\n119#6:912\n1#7:915\n1256#8,2:916\n1256#8,2:918\n144#8,2:920\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController\n*L\n223#1,2:886\n223#1:888\n223#1:897\n247#1,2:898\n247#1:900\n247#1:909\n223#1,8:889\n247#1,8:901\n251#1:910\n251#1:914\n251#1:911\n251#1:913\n251#1:912\n269#1,2:916\n286#1,2:918\n538#1,2:920\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final ctaContainerId:I

.field private final ctaIconId:I

.field private final ctaLayout:I

.field private final ctaTextId:I

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;IIIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
    .locals 1

    const-string v0, "notificationEntryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationRemoteInputManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 155
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 156
    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 157
    iput p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaLayout:I

    .line 158
    iput p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaContainerId:I

    .line 159
    iput p6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaTextId:I

    .line 160
    iput p7, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaIconId:I

    .line 161
    iput-object p8, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 162
    iput-object p9, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 163
    iput-object p10, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 164
    iput-object p11, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    .line 165
    iput-object p12, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-void
.end method

.method public static final synthetic access$addCallToAction(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->addCallToAction(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$extractNewerCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractNewerCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Landroid/content/Context;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-object p0
.end method

.method public static final synthetic access$getNotificationEntryManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method public static final synthetic access$refreshCandidateOnNotifChanges$newCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->refreshCandidateOnNotifChanges$newCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/android/systemui/statusbar/notification/people/Subscription;
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeCallToAction(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->removeCallToAction(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$tryCreateVoiceReplyTarget(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Action;JLkotlin/Lazy;Ljava/util/List;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 0

    .line 152
    invoke-direct/range {p0 .. p6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->tryCreateVoiceReplyTarget(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Action;JLkotlin/Lazy;Ljava/util/List;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method

.method private final addCallToAction(Landroid/view/View;)V
    .locals 5

    const v0, 0x1020494

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 266
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 268
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    invoke-static {v0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 1256
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/16 v4, 0x8

    .line 269
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaLayout:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x10204f1

    .line 271
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_4

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    .line 273
    iget v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaIconId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "cta.requireViewById(ctaIconId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    .line 274
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 275
    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaTextId:I

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "cta.requireViewById(ctaTextId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    .line 276
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void
.end method

.method private final extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 9
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

    .line 506
    invoke-direct {p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->isMessagingStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 509
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 510
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveHandlersByUser()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    const-string p1, "entry.key"

    if-nez v8, :cond_1

    .line 511
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "no handlers for user="

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 514
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v0, :cond_2

    .line 515
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "no actions"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 518
    :cond_2
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 519
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;Ljava/util/List;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 522
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    return-object p0
.end method

.method static synthetic extractCandidate$default(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;ILjava/lang/Object;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 502
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p3

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    .line 504
    new-instance p3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$1;

    invoke-direct {p3, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method

.method private final extractNewerCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;
    .locals 10

    .line 488
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 491
    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getPostTime()J

    move-result-wide v2

    :goto_0
    move-wide v7, v2

    .line 493
    invoke-static {v0}, Lkotlin/LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V

    move-object v1, p1

    :goto_1
    if-nez v1, :cond_5

    .line 494
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    goto :goto_2

    .line 496
    :cond_2
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getPostTime()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-gtz p2, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    .line 497
    invoke-static/range {v2 .. v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate$default(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;ILjava/lang/Object;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V

    move-object v1, p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method private final isMessagingStyle(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 482
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

    .line 228
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getEntryReinflations()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 229
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

    .line 199
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveHandlersByUser()Ljava/util/Map;

    move-result-object v0

    .line 200
    invoke-interface {p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$1;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$1;

    invoke-static {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$getOrPut(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)V

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->Subscription(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    return-object p0
.end method

.method private final removeCallToAction(Landroid/view/View;)V
    .locals 2

    const v0, 0x1020494

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    instance-of v1, p1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object v0, p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 284
    :cond_2
    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->ctaContainerId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 285
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 286
    invoke-static {v0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 1256
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, 0x8

    .line 288
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private final tryCreateVoiceReplyTarget(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Action;JLkotlin/Lazy;Ljava/util/List;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$Action;",
            "J",
            "Lkotlin/Lazy<",
            "+",
            "Landroid/app/Notification$Builder;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;)",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 532
    iget-object v6, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v2, "entry.key"

    const/4 v3, 0x0

    if-nez v6, :cond_0

    .line 533
    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "no action intent"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 536
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v3

    .line 537
    :cond_1
    invoke-static {v7}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/app/RemoteInput;

    .line 538
    invoke-virtual {v5}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    move-object v8, v4

    check-cast v8, Landroid/app/RemoteInput;

    if-nez v8, :cond_4

    .line 540
    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "no freeform input"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 543
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_6

    return-object v3

    .line 544
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v9, v3

    goto :goto_2

    .line 545
    :cond_7
    invoke-static {v1, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$getReplyButton(Landroid/view/View;Landroid/app/RemoteInput;)Landroid/widget/Button;

    move-result-object v1

    move-object v9, v1

    :goto_2
    if-nez v9, :cond_8

    .line 547
    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "no reply button in expanded view"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 550
    :cond_8
    invoke-interface/range {p5 .. p5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/Notification$Builder;

    .line 551
    new-instance v15, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    .line 560
    iget-object v10, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 561
    iget-object v11, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 562
    iget-object v12, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 563
    iget-object v13, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 564
    iget-object v14, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-object v0, v15

    move-object/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    .line 551
    invoke-direct/range {v0 .. v14}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;Landroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V

    return-object v15
.end method


# virtual methods
.method public connect(Lkotlinx/coroutines/CoroutineScope;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;
    .locals 10

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
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

    .line 170
    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$job$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$job$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 171
    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$1;-><init>(Lkotlinx/coroutines/Job;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;)V

    return-object v2
.end method

.method final synthetic logUiEventsForActivatedVoiceReplyInputs(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 294
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

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

.method final synthetic notifyHandlersOfReplyAvailability(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 251
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 119
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 253
    sget-object p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$3;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$notifyHandlersOfReplyAvailability$3;

    invoke-static {v0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 254
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

    .line 226
    iget v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 247
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
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

    .line 232
    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$listener$1;

    invoke-direct {p2, p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$refreshCandidateOnNotifChanges$listener$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)V

    .line 246
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

    .line 729
    :cond_4
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 247
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

    .line 216
    iget v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 223
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
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

    .line 217
    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$resetStateOnUserChange$listener$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;)V

    .line 222
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

    .line 729
    :cond_4
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 223
    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->removeUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    throw p1
.end method

.method final synthetic startVoiceReply(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 478
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStartSessionRequests()Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    .line 479
    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 478
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

    .line 334
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
