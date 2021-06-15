.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n+ 2 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 3 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,885:1\n59#2:886\n59#2:893\n59#2:900\n59#2:913\n59#2:928\n59#2:937\n113#3,6:887\n113#3,6:894\n113#3,6:901\n113#3,6:914\n113#3,6:929\n113#3,6:938\n197#4,6:907\n203#4,2:920\n197#4,6:922\n203#4,2:935\n197#4,8:944\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n*L\n617#1:886\n641#1:893\n644#1:900\n655#1:913\n668#1:928\n680#1:937\n617#1,6:887\n641#1,6:894\n644#1,6:901\n655#1,6:914\n668#1,6:929\n680#1,6:938\n654#1,6:907\n654#1,2:920\n667#1,6:922\n667#1,2:935\n687#1,8:944\n*E\n"
.end annotation


# instance fields
.field private final actionIntent:Landroid/app/PendingIntent;

.field private final builder:Landroid/app/Notification$Builder;

.field private final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final expandedViewReplyButton:Landroid/widget/Button;

.field private final freeformInput:Landroid/app/RemoteInput;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field private final notifKey:Ljava/lang/String;

.field private final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final postTime:J

.field private final remoteInputs:[Landroid/app/RemoteInput;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;Landroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$Builder;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;",
            "Landroid/app/PendingIntent;",
            "[",
            "Landroid/app/RemoteInput;",
            "Landroid/app/RemoteInput;",
            "Landroid/widget/Button;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionIntent"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteInputs"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeformInput"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandedViewReplyButton"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationRemoteInputManager"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBar"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 585
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    .line 586
    iput-wide p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    .line 587
    iput-object p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    .line 588
    iput-object p6, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    .line 589
    iput-object p7, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    .line 590
    iput-object p8, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    .line 591
    iput-object p9, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    .line 592
    iput-object p10, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 593
    iput-object p11, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 594
    iput-object p12, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 595
    iput-object p13, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 596
    iput-object p14, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 598
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "entry.key"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-object p0
.end method

.method public static final synthetic access$getShadeController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method public static final synthetic access$getStatusBar$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method


# virtual methods
.method final synthetic awaitFocusGained(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 700
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitFocusLost(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 686
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->editTextHasFocus()Z

    move-result p0

    if-ne p0, p2, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 198
    :cond_0
    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 688
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;-><init>(ZLcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 696
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->addOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 697
    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;

    invoke-direct {p2, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 203
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 204
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 652
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const-string v1, "NotifVoiceReply"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_7

    .line 680
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v2, "Unknown state, cancelling"

    invoke-direct {v0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 198
    :cond_1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 655
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "On keyguard, waiting for SHADE_LOCKED state"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {v2, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 656
    :cond_2
    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 662
    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 663
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 664
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getShadeController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 203
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    return-object p0

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 198
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 668
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "Shade collapsed, waiting for expansion"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v5

    if-nez v5, :cond_5

    .line 114
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {v2, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 669
    :cond_5
    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 675
    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 676
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 677
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBar$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 203
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_6

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    return-object p0

    .line 681
    :cond_7
    :goto_0
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final focus(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputView;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;

    iget v5, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;

    invoke-direct {v4, v1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 601
    iget v6, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    const-string v7, "riv"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v11, "NotifVoiceReply"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v13, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    .line 650
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_2
    iget-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v2

    goto/16 :goto_a

    :cond_3
    iget-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v2

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v13, v2

    :goto_1
    move-object v2, v1

    goto/16 :goto_c

    :cond_4
    iget-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v1, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v13, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v21, v2

    move-object v2, v6

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_c

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 607
    :try_start_4
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_6

    goto :goto_2

    :cond_6
    move v15, v14

    goto :goto_3

    :cond_7
    :goto_2
    move v15, v13

    :goto_3
    if-nez v15, :cond_8

    move v15, v13

    goto :goto_4

    :cond_8
    move v15, v14

    :goto_4
    invoke-virtual {v3, v6, v15}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logFocus(Ljava/lang/String;Z)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v3, v12

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_a

    .line 609
    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadNotifState()V

    .line 610
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 647
    invoke-virtual {v2, v14}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 648
    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    :goto_6
    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    return-object v0

    .line 613
    :cond_a
    :try_start_5
    iput-object v1, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$4:Ljava/lang/Object;

    iput v13, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-virtual {v1, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v13, v5, :cond_b

    return-object v5

    :cond_b
    move-object/from16 v21, v0

    move-object v0, v3

    move-object v3, v13

    move-object v13, v1

    move-object v1, v6

    :goto_7
    :try_start_6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    .line 614
    iget-object v0, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadShadeState()V

    .line 615
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 647
    :goto_8
    invoke-virtual {v2, v14}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 648
    iget-object v1, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    goto :goto_6

    .line 617
    :cond_c
    :try_start_7
    iget-object v3, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v6, "Shade expanded"

    .line 59
    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v3

    sget-object v15, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v8, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v6

    if-nez v6, :cond_d

    .line 114
    invoke-virtual {v3, v11, v15, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v6

    .line 116
    invoke-virtual {v3, v6}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 619
    :cond_d
    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;)V

    .line 622
    iget-object v15, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 623
    iget-object v6, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    .line 624
    iget-object v8, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    .line 625
    iget-object v9, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    .line 626
    iget-object v10, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    const/16 v20, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v22, v3

    .line 622
    invoke-virtual/range {v15 .. v22}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 632
    iget-object v0, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadRemoteInputState()V

    .line 633
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    .line 636
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    .line 637
    invoke-virtual {v13}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    iput-object v13, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    iput-object v12, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$3:Ljava/lang/Object;

    iput-object v12, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v1, v5, :cond_f

    return-object v5

    :cond_f
    move-object v1, v2

    .line 641
    :goto_9
    :try_start_8
    iget-object v2, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v3, "Waiting for RemoteInputView focus"

    .line 59
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v8, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_10

    .line 114
    invoke-virtual {v2, v11, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 642
    :cond_10
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-virtual {v13, v0, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusGained(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_11

    return-object v5

    .line 644
    :cond_11
    :goto_a
    iget-object v2, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v3, "Waiting for session end (RemoteInputView focus lost)"

    .line 59
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v8, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_12

    .line 114
    invoke-virtual {v2, v11, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 645
    :cond_12
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-virtual {v13, v0, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusLost(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ne v0, v5, :cond_13

    return-object v5

    :cond_13
    move-object v2, v13

    .line 647
    :goto_b
    invoke-virtual {v1, v14}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 648
    iget-object v0, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    .line 650
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v13, v1

    .line 647
    :goto_c
    invoke-virtual {v2, v14}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 648
    iget-object v1, v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    throw v0
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public final getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public final getHandlers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    return-object p0
.end method

.method public final getNotifKey()Ljava/lang/String;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getPostTime()J
    .locals 2

    .line 586
    iget-wide v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    return-wide v0
.end method

.method public final getUserId()I
    .locals 0

    .line 599
    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    return p0
.end method
