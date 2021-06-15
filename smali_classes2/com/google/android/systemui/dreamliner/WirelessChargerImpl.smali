.class public Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.super Lcom/google/android/systemui/dreamliner/WirelessCharger;
.source "WirelessChargerImpl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;,
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;,
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;,
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;,
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;,
        Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$IsDockPresentCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_POLLING_TIMEOUT_NS:J


# instance fields
.field private mCallback:Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mPollingStartedTimeNs:J

.field private final mRunnable:Ljava/lang/Runnable;

.field private mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Dreamliner-WLC_HAL"

    const/4 v1, 0x3

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->DEBUG:Z

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->MAX_POLLING_TIMEOUT_NS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessCharger;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$1;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->isDockPresentInternal(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V

    return-void
.end method

.method private convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 172
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 178
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initHALInterface()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-nez v0, :cond_0

    .line 218
    :try_start_0
    invoke-static {}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger;->getService()Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    const-wide/16 v1, 0x0

    .line 219
    invoke-interface {v0, p0, v1, v2}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no wireless charger hal found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dreamliner-WLC_HAL"

    .line 221
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    :cond_0
    :goto_0
    return-void
.end method

.method private isDockPresentInternal(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 190
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 192
    :try_start_0
    invoke-interface {p0, p1}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger;->isDockPresent(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDockPresent fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Dreamliner-WLC_HAL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public asyncIsDockPresent(Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 59
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mPollingStartedTimeNs:J

    .line 61
    new-instance v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$IsDockPresentCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$IsDockPresentCallbackWrapper;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;

    .line 62
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public challenge(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 99
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    new-instance v1, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;

    invoke-direct {v1, p0, p3}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger;->challenge(BLjava/util/ArrayList;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "challenge fail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Dreamliner-WLC_HAL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    const-string v0, "Dreamliner-WLC_HAL"

    const-string v1, "command=0"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    new-instance v1, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;

    invoke-direct {v1, p1, p2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;-><init>(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V

    invoke-interface {p0, p1, v1}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger;->getFanInformation(BLvendor/google/wireless_charger/V1_3/IWirelessCharger$getFanInformationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "command=0 fail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getInformation(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 71
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    new-instance v1, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetInformationCallbackWrapper;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V

    invoke-interface {v0, v1}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger;->getInformation(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$getInformationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInformation fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Dreamliner-WLC_HAL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public keyExchange([BLcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 84
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->convertPrimitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    new-instance v1, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;

    invoke-direct {v1, p0, p2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$KeyExchangeCallbackWrapper;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V

    invoke-interface {v0, p1, v1}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger;->keyExchange(Ljava/util/ArrayList;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "keyExchange fail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Dreamliner-WLC_HAL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onValues(ZBBZI)V
    .locals 6

    .line 202
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 203
    iget-wide v2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mPollingStartedTimeNs:J

    sget-wide v4, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->MAX_POLLING_TIMEOUT_NS:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    if-nez p5, :cond_0

    .line 204
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 211
    invoke-interface/range {v0 .. v5}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;->onValues(ZBBZI)V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mCallback:Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;

    return-void
.end method

.method public registerAlignInfo(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 114
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    new-instance v1, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$WirelessChargerInfoCallback;-><init>(Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V

    invoke-interface {v0, v1}, Lvendor/google/wireless_charger/V1_1/IWirelessCharger;->registerCallback(Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback;)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register alignInfo callback fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Dreamliner-WLC_HAL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public serviceDied(J)V
    .locals 0

    const-string p1, "Dreamliner-WLC_HAL"

    const-string p2, "serviceDied"

    .line 167
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    return-void
.end method

.method public setFan(BBILcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->initHALInterface()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command=1, i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dreamliner-WLC_HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->mWirelessCharger:Lvendor/google/wireless_charger/V1_3/IWirelessCharger;

    int-to-short p3, p3

    new-instance v0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;

    invoke-direct {v0, p1, p4}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;-><init>(BLcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V

    invoke-interface {p0, p1, p2, p3, v0}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger;->setFan(BBSLvendor/google/wireless_charger/V1_3/IWirelessCharger$setFanCallback;)V

    .line 154
    sget-boolean p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "command=1 spending time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "command=1 fail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
