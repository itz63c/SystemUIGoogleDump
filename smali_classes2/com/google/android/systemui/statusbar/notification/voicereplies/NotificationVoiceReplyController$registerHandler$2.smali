.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/android/systemui/statusbar/notification/people/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2\n+ 2 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 3 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,885:1\n59#2:886\n113#3,6:887\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2\n*L\n208#1:886\n208#1,6:887\n*E\n"
.end annotation


# instance fields
.field final synthetic $handler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;

.field final synthetic $this_registerHandler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->$this_registerHandler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->$this_registerHandler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveHandlersByUser()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;

    invoke-interface {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->$handler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->$this_registerHandler:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$registerHandler$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveHandlersByUser()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getActiveCandidate()Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;->getUserId()I

    move-result v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 208
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v3, "No more registered handlers for current candidate"

    invoke-direct {v1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 209
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;->getStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method
