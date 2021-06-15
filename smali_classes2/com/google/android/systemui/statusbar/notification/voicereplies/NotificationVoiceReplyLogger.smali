.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;,
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;,
        Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,326:1\n59#1:447\n59#1:454\n59#1:461\n113#2,6:327\n113#2,6:333\n113#2,6:339\n113#2,6:345\n113#2,6:351\n113#2,6:357\n113#2,6:363\n113#2,6:369\n113#2,6:375\n113#2,6:381\n113#2,6:387\n113#2,6:393\n113#2,6:399\n113#2,6:405\n113#2,6:411\n113#2,6:417\n113#2,6:423\n113#2,6:429\n113#2,6:435\n113#2,6:441\n113#2,6:448\n113#2,6:455\n113#2,6:462\n113#2,6:468\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n*L\n237#1:447\n242#1:454\n252#1:461\n30#1,6:327\n39#1,6:333\n50#1,6:339\n53#1,6:345\n59#1,6:351\n61#1,6:357\n67#1,6:363\n76#1,6:369\n82#1,6:375\n88#1,6:381\n97#1,6:387\n103#1,6:393\n110#1,6:399\n124#1,6:405\n141#1,6:411\n148#1,6:417\n158#1,6:423\n161#1,6:429\n169#1,6:435\n222#1,6:441\n237#1,6:448\n242#1,6:455\n252#1,6:462\n255#1,6:468\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$Companion;


# instance fields
.field private final eventLogger:Lcom/android/internal/logging/UiEventLogger;

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

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    const-string v0, "logBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 28
    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method private final logMsgSent(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;)V
    .locals 3

    .line 222
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 224
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 229
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logMsgSent$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logMsgSent$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 226
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method private final logStateHasCandidate(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;)V
    .locals 3

    .line 61
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 63
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 65
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateHasCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateHasCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getLogBuffer()Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method

.method public final logBadNotifState()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_NOTIF_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v2, "Entry\'s \"showing layout\" is null"

    invoke-direct {v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logBadRemoteInputState()V
    .locals 2

    const-string v0, "NotifVoiceReply"

    const-string v1, "Could not activate remote input for voice reply"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_REMOTE_INPUT_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final logBadShadeState()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_SHADE_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v2, "Could not expand shade, aborting"

    invoke-direct {v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logCandidateUserChange(IZ)V
    .locals 3

    .line 148
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 150
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 155
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logCandidateUserChange$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logCandidateUserChange$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 152
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    if-eqz p2, :cond_0

    const-string p1, "Enabling"

    goto :goto_0

    :cond_0
    const-string p1, "Disabling"

    .line 153
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logFocus(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p2, :cond_0

    .line 139
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_IN_SESSION_HAS_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    goto :goto_0

    .line 140
    :cond_0
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_IN_SESSION_NO_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    .line 138
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 141
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 143
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 145
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logFocus$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logFocus$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 144
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logMsgSendBounced(Ljava/lang/String;)V
    .locals 2

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_BOUNCED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 219
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->BOUNCED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logMsgSent(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;)V

    return-void
.end method

.method public final logMsgSentAuthBypassed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_AUTH_BYPASSED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 204
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->BYPASS:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logMsgSent(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;)V

    return-void
.end method

.method public final logMsgSentDelayed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_DELAYED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 214
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->DELAYED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logMsgSent(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;)V

    return-void
.end method

.method public final logMsgSentUnlocked(Ljava/lang/String;)V
    .locals 2

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_UNLOCKED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 209
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->UNLOCKED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logMsgSent(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;)V

    return-void
.end method

.method public final logNoCtaDisabled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_CTA_OFF:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 185
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;->DISABLED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logStateHasCandidate(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;)V

    return-void
.end method

.method public final logNoCtaNoHun(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_NO_CTA:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 190
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;->NO_HUN_VIEW:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logStateHasCandidate(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;)V

    return-void
.end method

.method public final logNoCtaNotDozing(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_NO_CTA:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 180
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;->NOT_DOZING:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logStateHasCandidate(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;)V

    return-void
.end method

.method public final logRegisterCallbacks(I)V
    .locals 3

    .line 97
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 99
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 101
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRegisterCallbacks$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRegisterCallbacks$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 100
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

    .line 30
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 32
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 37
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflation$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflation$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 35
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

    .line 39
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 41
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 46
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflationDropped$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logReinflationDropped$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 43
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 44
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

    .line 169
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 171
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 176
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRejectCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logRejectCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 173
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 174
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSessionAlreadyInProgress(I)V
    .locals 3

    .line 82
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 84
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 86
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logSessionAlreadyInProgress$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logSessionAlreadyInProgress$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 85
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSessionEnd()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_ENDED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v2, "Session has ended"

    invoke-direct {v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSetFeatureEnabled(II)V
    .locals 3

    .line 255
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 257
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 262
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logSetFeatureEnabled$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logSetFeatureEnabled$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 259
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 260
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logShowCta(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_CTA_PULSE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 199
    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;->SHOWING:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logStateHasCandidate(Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$CtaState;)V

    return-void
.end method

.method public final logStartSessionNoCandidate(I)V
    .locals 3

    .line 88
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 90
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 92
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartSessionNoCandidate$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartSessionNoCandidate$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 91
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartVoiceReply(IILjava/lang/String;)V
    .locals 3

    .line 110
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 112
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 118
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartVoiceReply$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStartVoiceReply$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 115
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logStateInSession(Ljava/lang/String;)V
    .locals 3

    const-string v0, "notifKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 78
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 80
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateInSession$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStateInSession$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 79
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStateNoCandidate()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NO_CANDIDATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 50
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

    .line 50
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUnregisterCallbacks(I)V
    .locals 3

    .line 103
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 105
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 107
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUnregisterCallbacks$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUnregisterCallbacks$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUserIdMismatch(II)V
    .locals 3

    .line 67
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 69
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 74
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUserIdMismatch$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logUserIdMismatch$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 72
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logVoiceAuthStateChanged(III)V
    .locals 3

    .line 124
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 126
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 132
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logVoiceAuthStateChanged$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logVoiceAuthStateChanged$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifVoiceReply"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 128
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 129
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method
