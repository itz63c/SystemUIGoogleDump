.class public Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.super Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingInformationChangeListener;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIsDockPresentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalIsDockPresentCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;

.field private final mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mRtxInformationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtxStatusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseWirelessCharger"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;-><init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLocalIsDockPresentCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalIsDockPresentCallback;

    .line 50
    new-instance p1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;-><init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(ZBBZI)Landroid/os/Bundle;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->buildDockPresentBundle(ZBBZI)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)Landroid/os/Bundle;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->buildReverseStatusBundle(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;ZBBZI)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->dispatchIsDockPresentCallbacks(ZBBZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->dispatchRtxInformationCallbacks(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    return-void
.end method

.method private static buildDockPresentBundle(ZBBZI)Landroid/os/Bundle;
    .locals 2

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_dock_present_docked"

    .line 56
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "key_dock_present_type"

    .line 57
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p0, "key_dock_present_orientation"

    .line 58
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p0, "key_dock_present_get_info"

    .line 59
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "key_dock_present_id"

    .line 60
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static buildReverseStatusBundle(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)Landroid/os/Bundle;
    .locals 3

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    const-string v2, "key_rtx_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    const-string v2, "key_accessory_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget-boolean v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    const-string v2, "key_rtx_connection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    const-string v2, "key_rtx_iout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    const-string v2, "key_rtx_vout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    const-string v2, "key_rtx_level"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    const-string v1, "key_reason_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private dispatchIsDockPresentCallbacks(ZBBZI)V
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 161
    invoke-interface/range {v1 .. v6}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;->onIsDockPresentChanged(ZBBZI)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dispatchRtxInformationCallbacks(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;

    .line 212
    invoke-interface {v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;->onRtxInformationChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 209
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dispatchRtxStatusCallbacks(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;

    .line 310
    invoke-interface {v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;->onRtxStatusChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 307
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initHALInterface()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->getService()Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    const-wide/16 v1, 0x0

    .line 86
    invoke-interface {v0, p0, v1, v2}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 87
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    invoke-interface {v0, p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->registerRtxCallback(Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no wireless charger hal found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReverseWirelessCharger"

    .line 89
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addIsDockPresentCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addIsDockPresentChangeListener(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentChangeListener;)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addIsDockPresentCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;)V

    return-void
.end method

.method public addReverseChargingChangeListener(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;)V
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addRtxStatusCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;)V

    return-void
.end method

.method public addReverseChargingInformationChangeListener(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingInformationChangeListener;)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addRtxInformationCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;)V

    return-void
.end method

.method public addRtxInformationCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addRtxStatusCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRtxInformation()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    .line 170
    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    invoke-interface {v0, p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->getRtxInformation(Lvendor/google/wireless_charger/V1_2/IWirelessCharger$getRtxInformationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ReverseWirelessCharger"

    const-string v1, "getRtxInformation fail: "

    .line 174
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isRtxSupported()Z
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    .line 104
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-interface {p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->isRtxSupported()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ReverseWirelessCharger"

    const-string v1, "isRtxSupported fail: "

    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public rtxStatusInfoChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->dispatchRtxStatusCallbacks(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    return-void
.end method

.method public serviceDied(J)V
    .locals 0

    const-string p1, "ReverseWirelessCharger"

    const-string p2, "serviceDied"

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    return-void
.end method

.method public setRtxMode(Z)V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->initHALInterface()V

    .line 223
    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-eqz p0, :cond_0

    .line 225
    :try_start_0
    invoke-interface {p0, p1}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->setRtxMode(Z)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ReverseWirelessCharger"

    const-string v0, "setRtxMode fail: "

    .line 227
    invoke-static {p1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
