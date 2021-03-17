.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,190:1\n113#2,6:191\n113#2,6:197\n113#2,6:203\n113#2,6:209\n113#2,6:215\n113#2,6:221\n113#2,6:227\n113#2,6:233\n113#2,6:239\n113#2,6:245\n113#2,6:251\n113#2,6:257\n113#2,6:263\n113#2,6:269\n113#2,6:275\n113#2,6:281\n113#2,6:287\n113#2,6:293\n113#2,6:299\n113#2,6:305\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n*L\n27#1,6:191\n36#1,6:197\n46#1,6:203\n48#1,6:209\n54#1,6:215\n56#1,6:221\n62#1,6:227\n71#1,6:233\n77#1,6:239\n83#1,6:245\n92#1,6:251\n98#1,6:257\n105#1,6:263\n119#1,6:269\n132#1,6:275\n138#1,6:281\n148#1,6:287\n151#1,6:293\n159#1,6:299\n168#1,6:305\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;


# instance fields
.field private final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    const-string v0, "logBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final getLogBuffer()Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method

.method public final logCandidateUserChange(IZ)V
    .locals 3

    .line 138
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 140
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 145
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logCandidateUserChange$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logCandidateUserChange$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 142
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    if-eqz p2, :cond_0

    const-string p1, "Enabling"

    goto :goto_0

    :cond_0
    const-string p1, "Disabling"

    .line 143
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logFocus(Ljava/lang/String;)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 134
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 136
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logFocus$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logFocus$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 135
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logNoHun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 170
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 175
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logNoHun$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logNoHun$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 172
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 173
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logRegisterCallbacks(I)V
    .locals 3

    .line 92
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 94
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 96
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRegisterCallbacks$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRegisterCallbacks$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 95
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logReinflation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 29
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 34
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflation$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflation$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logReinflationDropped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 38
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 43
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflationDropped$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflationDropped$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 41
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logRejectCandidate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 161
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 166
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRejectCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRejectCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 163
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 164
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSessionAlreadyInProgress(I)V
    .locals 3

    .line 77
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 79
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 81
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logSessionAlreadyInProgress$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logSessionAlreadyInProgress$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 80
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartSessionNoCandidate(I)V
    .locals 3

    .line 83
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 85
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 87
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartSessionNoCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartSessionNoCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 86
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartVoiceReply(IILjava/lang/String;)V
    .locals 3

    .line 105
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 107
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 113
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartVoiceReply$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartVoiceReply$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 110
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logStateHasCandidate(Ljava/lang/String;)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 58
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 60
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateHasCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateHasCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 59
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStateInSession(Ljava/lang/String;)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 73
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 75
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateInSession$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateInSession$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 74
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStateNoCandidate()V
    .locals 3

    .line 46
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateNoCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateNoCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    const-string v1, "NoCandidate"

    .line 46
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUnregisterCallbacks(I)V
    .locals 3

    .line 98
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 100
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 102
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUnregisterCallbacks$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUnregisterCallbacks$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 101
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUpdatePoodle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUpdatePoodle$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUpdatePoodle$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 148
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUserIdMismatch(II)V
    .locals 3

    .line 62
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 64
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 69
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUserIdMismatch$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUserIdMismatch$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 66
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 67
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logVoiceAuthStateChanged(III)V
    .locals 3

    .line 119
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 121
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 127
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logVoiceAuthStateChanged$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logVoiceAuthStateChanged$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 123
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 124
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method
