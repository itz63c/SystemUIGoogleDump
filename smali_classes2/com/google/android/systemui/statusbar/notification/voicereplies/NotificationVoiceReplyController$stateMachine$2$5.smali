.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.NotificationVoiceReplyController$stateMachine$2$5"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x189,
        0x18a,
        0x18b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
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

.field synthetic it:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

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

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->it:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 392
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->it:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

    .line 393
    instance-of v1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iput v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->label:I

    invoke-static {p1, v1, v2, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->stateMachine$lambda-37$noCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 394
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    instance-of v1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$reinflations:Lkotlinx/coroutines/flow/Flow;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/HasCandidate;->getCandidate()Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object p1

    iput v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->label:I

    invoke-static {v1, v2, v4, p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->stateMachine$lambda-37$hasCandidate(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    .line 395
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    instance-of v1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->$this_stateMachine:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->getBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->it:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->getInitialContent()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->it:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/InSession;->getTarget()Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object v7

    iput v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$5;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->stateMachine$lambda-37$inSession(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
