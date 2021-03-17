.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;
.super Lcom/google/android/systemui/statusbar/INotificationVoiceReplyService$Stub;
.source "NotificationVoiceReplyManagerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final onVoiceAuthStateChangedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;",
            ">;"
        }
    .end annotation
.end field

.field private final startVoiceReplyFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/google/android/systemui/statusbar/StartVoiceReplyData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    .line 42
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyService$Stub;-><init>()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 45
    invoke-static {p1, p1, v0, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->startVoiceReplyFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 46
    invoke-static {p1, p1, v0, v1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->onVoiceAuthStateChangedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-void
.end method


# virtual methods
.method public final getOnVoiceAuthStateChangedFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->onVoiceAuthStateChangedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public final getStartVoiceReplyFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/google/android/systemui/statusbar/StartVoiceReplyData;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->startVoiceReplyFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public final getUserId()I
    .locals 0

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public onVoiceAuthStateChanged(II)V
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v7, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$onVoiceAuthStateChanged$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$onVoiceAuthStateChanged$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public registerCallbacks(Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;)V
    .locals 3

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method final synthetic registerHandler(Lcom/google/android/systemui/statusbar/CallbacksHandler;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 88
    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/CallbacksHandler;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lkotlin/coroutines/Continuation;)V

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

.method final synthetic startVoiceReply(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 108
    new-instance v3, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;

    invoke-direct {v3, p2, p3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;-><init>(Lcom/google/android/systemui/statusbar/CallbacksHandler;I)V

    new-instance v4, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p3, p0, v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;-><init>(Lcom/google/android/systemui/statusbar/CallbacksHandler;ILcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lkotlin/coroutines/Continuation;)V

    move-object v0, p1

    move v1, p3

    move-object v2, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;->startVoiceReply(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public startVoiceReply(ILjava/lang/String;)V
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v7, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
