.class public final Lcom/android/systemui/privacy/logging/PrivacyLogger;
.super Ljava/lang/Object;
.source "PrivacyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyLogger.kt\ncom/android/systemui/privacy/logging/PrivacyLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,140:1\n138#1:141\n139#1:148\n138#1:149\n139#1:156\n138#1:157\n139#1:164\n138#1:165\n139#1:172\n138#1:173\n139#1:180\n138#1:181\n139#1:188\n138#1:189\n139#1:196\n138#1:197\n139#1:204\n138#1:205\n139#1:212\n138#1:213\n139#1:220\n138#1:221\n139#1:228\n138#1:229\n139#1:236\n113#2,6:142\n113#2,6:150\n113#2,6:158\n113#2,6:166\n113#2,6:174\n113#2,6:182\n113#2,6:190\n113#2,6:198\n113#2,6:206\n113#2,6:214\n113#2,6:222\n113#2,6:230\n113#2,6:237\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyLogger.kt\ncom/android/systemui/privacy/logging/PrivacyLogger\n*L\n34#1:141\n34#1:148\n45#1:149\n45#1:156\n53#1:157\n53#1:164\n61#1:165\n61#1:172\n67#1:173\n67#1:180\n73#1:181\n73#1:188\n81#1:189\n81#1:196\n93#1:197\n93#1:204\n103#1:205\n103#1:212\n111#1:213\n111#1:220\n119#1:221\n119#1:228\n125#1:229\n125#1:236\n34#1,6:142\n45#1,6:150\n53#1,6:158\n61#1,6:166\n67#1,6:174\n73#1,6:182\n81#1,6:190\n93#1,6:198\n103#1,6:206\n111#1,6:214\n119#1,6:222\n125#1,6:230\n138#1,6:237\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method


# virtual methods
.method public final cancelIndicatorsHold()V
    .locals 3

    .line 61
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$cancelIndicatorsHold$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$cancelIndicatorsHold$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final finishIndicatorsHold()V
    .locals 3

    .line 67
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$finishIndicatorsHold$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$finishIndicatorsHold$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logChipVisible(Z)V
    .locals 3

    .line 81
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 83
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 82
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logCurrentProfilesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 75
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPrivacyDialogDismissed()V
    .locals 3

    .line 119
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logShowDialogContents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 113
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartSettingsActivityFromDialog(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 128
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 126
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 127
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStatusBarIconsVisible(ZZZ)V
    .locals 3

    .line 93
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 97
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 94
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 95
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 96
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUnfilteredPermGroupUsage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermGroupUsage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 105
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUpdatedItemFromAppOps(IILjava/lang/String;Z)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 39
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 35
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 36
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 37
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 38
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUpdatedPrivacyItemsList(Ljava/lang/String;)V
    .locals 3

    const-string v0, "listAsString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 47
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedPrivacyItemsList$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedPrivacyItemsList$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 46
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final startIndicatorsHold(J)V
    .locals 3

    .line 53
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 55
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$startIndicatorsHold$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$startIndicatorsHold$2;

    .line 138
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 114
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    long-to-int p1, p1

    .line 54
    div-int/lit16 p1, p1, 0x3e8

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
