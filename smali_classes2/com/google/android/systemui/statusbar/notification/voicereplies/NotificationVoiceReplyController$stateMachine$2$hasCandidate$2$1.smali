.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1\n+ 2 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 3 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,779:1\n54#2:780\n54#2:787\n54#2:794\n113#3,6:781\n113#3,6:788\n113#3,6:795\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1\n*L\n308#1:780\n314#1:787\n319#1:794\n308#1,6:781\n314#1,6:788\n319#1,6:795\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x139
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

.field final synthetic $this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;)TR;"
        }
    .end annotation

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->label:I

    const-string v2, "Hiding old candidate CTA"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "NotifVoiceReply"

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 320
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    :try_start_1
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->setActiveCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V

    .line 308
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    const-string v1, "Showing CTA"

    .line 54
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p1

    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v7, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {p1, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 309
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->showCTA()V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getPostTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 313
    invoke-static {}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getCANDIDATE_TIMEOUT$cp()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iput v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 314
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    const-string v0, "Candidate timed out"

    .line 54
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v4, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    invoke-virtual {p1, v5, v1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 315
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {p1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->setActiveCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V

    .line 319
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_5

    .line 114
    invoke-virtual {p1, v5, v1, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 320
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->hideCTA()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->setActiveCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    invoke-virtual {v0, v5, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 320
    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->hideCTA()V

    throw p1
.end method
