.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->registerHandler(Lcom/google/android/systemui/statusbar/CallbacksHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollectorKt\n+ 5 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,191:1\n20#2:192\n22#2:196\n51#3:193\n56#3:195\n119#4:194\n73#5,3:197\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2\n*L\n92#1:192\n92#1:196\n92#1:193\n92#1:195\n92#1:194\n93#1,3:197\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$registerHandler$2"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0xc5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

.field L$0:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

.field final synthetic this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/CallbacksHandler;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;",
            "Lcom/google/android/systemui/statusbar/CallbacksHandler;",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

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

    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/CallbacksHandler;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->p$:Lkotlinx/coroutines/CoroutineScope;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getVoiceReplyManager$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    invoke-interface {p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;->registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    move-result-object p1

    .line 91
    :try_start_1
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getStartVoiceReplyFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v1

    .line 92
    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    .line 119
    new-instance v4, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;

    invoke-direct {v4, v1, v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    .line 73
    new-instance v6, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$collect$1;

    invoke-direct {v6, v1, v3, p1, v5}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$collect$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->label:I

    invoke-interface {v4, v6, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getLogger$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUnregisterCallbacks(I)V

    .line 98
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/people/Subscription;->unsubscribe()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getLogger$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUnregisterCallbacks(I)V

    .line 98
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/people/Subscription;->unsubscribe()V

    throw p1

    :cond_3
    const-string p0, "voiceReplyManager"

    .line 89
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
