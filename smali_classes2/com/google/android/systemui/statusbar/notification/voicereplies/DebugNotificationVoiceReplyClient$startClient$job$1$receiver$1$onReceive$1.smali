.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    c = "com.google.android.systemui.statusbar.notification.voicereplies.DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x35f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

.field final synthetic $token:Lkotlin/jvm/internal/Ref$IntRef;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0, v1, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 862
    iget v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 868
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 862
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 863
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    .line 864
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p1, 0x0

    .line 866
    sget-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;

    .line 867
    new-instance v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 863
    iput v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->label:I

    move v2, v3

    move-object v3, p1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;->startVoiceReply(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 868
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
