.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->stateMachine$lambda-37$hasCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.NotificationVoiceReplyController$stateMachine$2$hasCandidate$2"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x153
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

.field final synthetic $reinflations:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

.field L$0:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;)TR;"
        }
    .end annotation

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 65535
    iget v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_1

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65535
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 303
    iget-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logStateHasCandidate(Ljava/lang/String;)V

    .line 304
    iget-object v5, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;

    iget-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v9, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    const/4 v11, 0x0

    invoke-direct {v8, v2, v4, v9, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 324
    iget-object v12, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$2;

    iget-object v5, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v7, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    const/4 v9, 0x0

    move-object v4, v15

    invoke-direct/range {v4 .. v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 332
    iget-object v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$3;

    iget-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v9, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-direct {v7, v2, v8, v9, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$3;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 339
    iget-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStartSessionRequests()Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_2

    return-object v1

    :cond_2
    :goto_1
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;

    .line 340
    invoke-virtual {v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;->getHandler()Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getUserId()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 341
    iget-object v5, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;->getHandler()Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v6

    iget-object v7, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUserIdMismatch(II)V

    .line 342
    invoke-virtual {v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;->getOnFail()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_3
    iget-object v5, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    .line 345
    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    invoke-virtual {v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;->getInitialContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StartSessionRequest;->getBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2;->$candidate:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-direct {v6, v7, v4, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)V

    .line 344
    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
