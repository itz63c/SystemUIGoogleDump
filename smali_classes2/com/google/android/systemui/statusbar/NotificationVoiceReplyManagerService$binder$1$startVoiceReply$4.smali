.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->startVoiceReply(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollectorKt\n+ 5 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,191:1\n20#2:192\n22#2:196\n51#3:193\n56#3:195\n119#4:194\n73#5,3:197\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4\n*L\n111#1:192\n111#1:196\n111#1:193\n111#1:195\n111#1:194\n112#1,3:197\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

.field final synthetic $token:I

.field label:I

.field private synthetic p$:Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/CallbacksHandler;ILcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/CallbacksHandler;",
            "I",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iput p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$token:I

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

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

    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$token:I

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;-><init>(Lcom/google/android/systemui/statusbar/CallbacksHandler;ILcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->p$:Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$token:I

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/statusbar/CallbacksHandler;->onVoiceReplyStarted(I)V

    .line 110
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getOnVoiceAuthStateChangedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->$token:I

    .line 119
    new-instance v4, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$filter$1;

    invoke-direct {v4, p1, v1, v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;I)V

    .line 112
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->p$:Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

    .line 73
    new-instance v1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$collect$1;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$collect$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;)V

    iput v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->label:I

    invoke-interface {v4, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 75
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
