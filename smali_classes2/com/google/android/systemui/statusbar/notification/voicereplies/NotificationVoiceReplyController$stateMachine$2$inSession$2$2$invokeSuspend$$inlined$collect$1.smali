.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2\n+ 3 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 4 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,135:1\n451#2:136\n452#2,2:144\n59#3:137\n113#4,6:138\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2\n*L\n451#1:137\n451#1,6:138\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_stateMachine$inlined:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2$invokeSuspend$$inlined$collect$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2$invokeSuspend$$inlined$collect$1;->$this_stateMachine$inlined:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 74
    check-cast p1, Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2$invokeSuspend$$inlined$collect$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v1, "Target notification was removed, ending session"

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NotifVoiceReply"

    .line 114
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$inSession$2$2$invokeSuspend$$inlined$collect$1;->$this_stateMachine$inlined:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    sget-object p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 145
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
