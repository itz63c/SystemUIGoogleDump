.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->extractCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLkotlin/Lazy;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Notification$Action;",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,779:1\n144#2,2:780\n1#3:782\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2\n*L\n453#1,2:780\n*E\n"
.end annotation


# instance fields
.field final synthetic $builderLazy:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentUserId:I

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $postTime:J

.field final synthetic $this_extractCandidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/Lazy;JLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
            "Lkotlin/Lazy<",
            "+",
            "Landroid/app/Notification$Builder;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$this_extractCandidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$builderLazy:Lkotlin/Lazy;

    iput-wide p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$postTime:J

    iput-object p7, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$handlers:Ljava/util/List;

    iput p8, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$currentUserId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/app/Notification$Action;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
    .locals 12

    .line 447
    iget-object v7, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v0, "entry.key"

    const/4 v1, 0x0

    if-nez v7, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 448
    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "no action intent"

    invoke-virtual {p1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 451
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v8

    if-nez v8, :cond_1

    return-object v1

    .line 452
    :cond_1
    invoke-static {v8}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/RemoteInput;

    .line 453
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    move-object v9, v2

    check-cast v9, Landroid/app/RemoteInput;

    if-nez v9, :cond_4

    .line 454
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 455
    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "no freeform input"

    invoke-virtual {p1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 458
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    return-object v1

    .line 459
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v10, v1

    goto :goto_2

    .line 460
    :cond_7
    invoke-static {v2, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$getReplyButton(Landroid/view/View;Landroid/app/RemoteInput;)Landroid/widget/Button;

    move-result-object v2

    move-object v10, v2

    :goto_2
    if-nez v10, :cond_8

    .line 461
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 462
    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "no reply button in expanded view"

    .line 462
    invoke-virtual {p1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 467
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_3

    .line 468
    :cond_9
    invoke-static {v2, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$getReplyButton(Landroid/view/View;Landroid/app/RemoteInput;)Landroid/widget/Button;

    move-result-object v1

    :goto_3
    move-object v11, v1

    .line 469
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_a

    .line 470
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUp view is null"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logNoHun(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-nez v11, :cond_b

    .line 472
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "no reply button in headsUp view"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logNoHun(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$builderLazy:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/app/Notification$Builder;

    .line 475
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    .line 476
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 478
    iget-wide v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$postTime:J

    .line 479
    iget-object v5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$handlers:Ljava/util/List;

    .line 480
    iget v6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->$currentUserId:I

    .line 475
    invoke-static/range {v0 .. v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$createVoiceReplyTarget(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;ILandroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Landroid/widget/Button;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/Notification$Action;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$extractCandidate$2;->invoke(Landroid/app/Notification$Action;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p0

    return-object p0
.end method
