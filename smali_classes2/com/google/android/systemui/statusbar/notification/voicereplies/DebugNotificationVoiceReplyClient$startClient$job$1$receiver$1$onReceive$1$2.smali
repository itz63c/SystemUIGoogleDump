.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2"
    f = "NotificationVoiceReplyManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field private synthetic p$:Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;

    invoke-direct {p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;->p$:Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

    return-object p0
.end method

.method public final invoke(Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;->invoke(Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 867
    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$2;->label:I

    if-nez p0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
