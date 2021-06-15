.class public Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;
.super Ljava/lang/Object;
.source "BcSmartspaceLogger.java"


# static fields
.field private static final IS_VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StatsLog"

    .line 13
    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;->IS_VERBOSE:Z

    return-void
.end method

.method public static log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V
    .locals 7

    .line 20
    invoke-interface {p0}, Lcom/google/android/systemui/smartspace/EventEnum;->getId()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getInstanceId()I

    move-result v2

    .line 22
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getLoggingCardType()I

    move-result v3

    .line 23
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getDisplaySurface()I

    move-result v4

    .line 24
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getRank()I

    move-result v5

    .line 25
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->getCardinality()I

    move-result v6

    const/16 v0, 0x160

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIII)V

    .line 27
    sget-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;->IS_VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "\nLogged Smartspace event(%s), info(%s):"

    .line 28
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
