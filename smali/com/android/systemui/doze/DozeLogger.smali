.class public final Lcom/android/systemui/doze/DozeLogger;
.super Ljava/lang/Object;
.source "DozeLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDozeLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DozeLogger.kt\ncom/android/systemui/doze/DozeLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,250:1\n113#2,6:251\n113#2,6:257\n113#2,6:263\n113#2,6:269\n113#2,6:275\n113#2,6:281\n113#2,6:287\n113#2,6:293\n113#2,6:299\n113#2,6:305\n113#2,6:311\n113#2,6:317\n113#2,6:323\n113#2,6:329\n113#2,6:335\n113#2,6:341\n113#2,6:347\n113#2,6:353\n113#2,6:359\n113#2,6:365\n113#2,6:371\n113#2,6:377\n113#2,6:383\n113#2,6:389\n113#2,6:395\n113#2,6:401\n*E\n*S KotlinDebug\n*F\n+ 1 DozeLogger.kt\ncom/android/systemui/doze/DozeLogger\n*L\n36#1,6:251\n44#1,6:257\n52#1,6:263\n56#1,6:269\n60#1,6:275\n68#1,6:281\n81#1,6:287\n93#1,6:293\n97#1,6:299\n105#1,6:305\n113#1,6:311\n121#1,6:317\n129#1,6:323\n139#1,6:329\n147#1,6:335\n155#1,6:341\n163#1,6:347\n171#1,6:353\n179#1,6:359\n189#1,6:365\n199#1,6:371\n207#1,6:377\n215#1,6:383\n223#1,6:389\n231#1,6:395\n239#1,6:401\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logDisplayStateChanged(I)V
    .locals 3

    .line 163
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 165
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDisplayStateChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDisplayStateChanged$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 164
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logDozeScreenBrightness(I)V
    .locals 3

    .line 231
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 233
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozeScreenBrightness$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeScreenBrightness$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 232
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logDozeStateChanged(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 149
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozeStateChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeStateChanged$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logDozeSuppressed(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 225
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozeSuppressed$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeSuppressed$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logDozing(Z)V
    .locals 3

    .line 60
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 62
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozing$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozing$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 61
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logDozingSuppressed(Z)V
    .locals 3

    .line 68
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 70
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozingSuppressed$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozingSuppressed$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 69
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logEmergencyCall()V
    .locals 3

    .line 93
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logEmergencyCall$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logEmergencyCall$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logFling(ZZZZ)V
    .locals 3

    .line 81
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 86
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logFling$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logFling$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 82
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 83
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 84
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 85
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logKeyguardBouncerChanged(Z)V
    .locals 3

    .line 97
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 99
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logKeyguardBouncerChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logKeyguardBouncerChanged$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logKeyguardVisibilityChange(Z)V
    .locals 3

    .line 139
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 141
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logKeyguardVisibilityChange$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logKeyguardVisibilityChange$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logMissedTick(Ljava/lang/String;)V
    .locals 3

    const-string v0, "delay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 123
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logMissedTick$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logMissedTick$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 122
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logNotificationPulse()V
    .locals 3

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logNotificationPulse$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logNotificationPulse$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPickupWakeup(Z)V
    .locals 3

    .line 36
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 38
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPickupWakeup$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPickupWakeup$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logProximityResult(ZJI)V
    .locals 3

    .line 179
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 183
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 180
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 181
    invoke-interface {v0, p2, p3}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 182
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPulseDropped(Ljava/lang/String;)V
    .locals 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 201
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseDropped$4;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseDropped$4;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 200
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPulseDropped(ZLcom/android/systemui/doze/DozeMachine$State;Z)V
    .locals 3

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 193
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseDropped$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 190
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 191
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 192
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPulseFinish()V
    .locals 3

    .line 52
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseFinish$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseFinish$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPulseStart(I)V
    .locals 3

    .line 44
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 46
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseStart$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseStart$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 45
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPulseTouchDisabledByProx(Z)V
    .locals 3

    .line 207
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 209
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseTouchDisabledByProx$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseTouchDisabledByProx$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 208
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logScreenOff(I)V
    .locals 3

    .line 113
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 115
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logScreenOff$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logScreenOff$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logScreenOn(Z)V
    .locals 3

    .line 105
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 107
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logScreenOn$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logScreenOn$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSensorTriggered(I)V
    .locals 3

    .line 215
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 217
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logSensorTriggered$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorTriggered$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 216
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSetAodDimmingScrim(J)V
    .locals 3

    .line 239
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 241
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logSetAodDimmingScrim$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSetAodDimmingScrim$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 240
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStateChangedSent(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 157
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logStateChangedSent$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logStateChangedSent$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTimeTickScheduled(JJ)V
    .locals 3

    .line 129
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 132
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logTimeTickScheduled$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 131
    invoke-interface {v0, p3, p4}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logWakeDisplay(Z)V
    .locals 3

    .line 171
    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 173
    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logWakeDisplay$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logWakeDisplay$2;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DozeLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 172
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
