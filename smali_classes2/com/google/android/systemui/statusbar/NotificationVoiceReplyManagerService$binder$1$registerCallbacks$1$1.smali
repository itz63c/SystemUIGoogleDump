.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-direct {v0, v1, p0, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->p$:Lkotlinx/coroutines/CoroutineScope;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65535
    iget v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    new-instance p1, Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-direct {p1, v0, v1}, Lcom/google/android/systemui/statusbar/CallbacksHandler;-><init>(ILcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;)V

    .line 54
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1$cbJob$1;

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    const/4 v7, 0x0

    invoke-direct {v4, v5, p1, v0, v7}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1$cbJob$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/CallbacksHandler;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v1, "callbacks.asBinder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1$1;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1$1$1;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-static {p0, v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->access$onDeath(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    .line 64
    invoke-static {p1, v7, p0, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
