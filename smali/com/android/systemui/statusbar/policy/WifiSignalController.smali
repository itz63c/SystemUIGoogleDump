.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/settingslib/SignalIcon$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field private final mHasMobileDataFeature:Z

.field private final mProviderModel:Z

.field private final mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public static synthetic $r8$lambda$Z4-p5zzA9Fv3s3CeygZbi0Jxwk0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleStatusUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;)V
    .locals 6

    const-string v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 52
    sget-object p3, Lcom/android/systemui/statusbar/policy/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 53
    sget-object p4, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 63
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    new-instance p4, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    move-object v0, p4

    move-object v2, p5

    move-object v3, p7

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 p6, 0x1

    .line 66
    invoke-virtual {p4, p6}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    .line 67
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz p5, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$1;)V

    invoke-virtual {p5, p1, p2}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object p3, p2, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    const-string p2, "settings_provider_model"

    invoke-static {p1, p2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mProviderModel:Z

    return-void
.end method

.method private copyWifiStates()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    .line 233
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    .line 234
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 235
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 236
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v1, v0, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    .line 237
    iget v0, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyWifiLevelChangeIfNecessary(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 239
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 240
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    .line 241
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 242
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 243
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    iput-object p0, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method

.method private getCurrentIconIdForCarrierWifi()I
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 195
    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v3, :cond_1

    .line 196
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 197
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz p0, :cond_2

    .line 198
    invoke-static {v1}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_2
    return v4
.end method

.method private getQsCurrentIconIdForCarrierWifi()I
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result p0

    return p0
.end method

.method private handleStatusUpdated()V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 18

    move-object/from16 v0, p0

    .line 150
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 155
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 154
    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v5, v5, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v5, :cond_0

    .line 157
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v11, v3

    .line 163
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v5, v5, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 165
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isNonCarrierWifiNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    .line 166
    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v7, v7, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    .line 168
    :goto_2
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result v3

    invoke-direct {v5, v6, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    if-eqz v6, :cond_4

    .line 170
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    const/4 v3, 0x0

    if-eqz v6, :cond_5

    .line 174
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 175
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getQsCurrentIconIdForCarrierWifi()I

    move-result v8

    invoke-direct {v4, v6, v8, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    move v8, v3

    move-object v6, v4

    goto :goto_4

    :cond_5
    move-object v6, v3

    move v8, v4

    .line 178
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 179
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getNetworkNameForCarrierWiFi(I)Ljava/lang/String;

    move-result-object v13

    .line 180
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v3, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v10, v3, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    iget-boolean v14, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v15, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    move-object/from16 v0, p1

    .line 186
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;)V

    return-void
.end method

.method private notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 97
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->config_showWifiIndicatorWhenEnabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 99
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v4, v4, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-eq v4, v6, :cond_1

    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v5

    .line 103
    :goto_0
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    move-object v14, v4

    goto :goto_1

    :cond_3
    move-object v14, v7

    :goto_1
    if-eqz v2, :cond_4

    .line 104
    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v5

    .line 105
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v8, v8, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v8, :cond_5

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_5
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mProviderModel:Z

    if-eqz v8, :cond_f

    .line 114
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v9, v9, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-eq v9, v6, :cond_7

    check-cast v8, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v8, v8, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v8, :cond_6

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 116
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isNonCarrierWifiNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    move v8, v5

    goto :goto_4

    :cond_7
    :goto_3
    move v8, v6

    .line 117
    :goto_4
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-eqz v2, :cond_8

    if-eqz v8, :cond_8

    move v2, v6

    goto :goto_5

    :cond_8
    move v2, v5

    .line 118
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v9

    invoke-direct {v10, v2, v9, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 120
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-eqz v2, :cond_9

    if-nez v8, :cond_a

    :cond_9
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 121
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEthernetDefault()Z

    move-result v2

    if-nez v2, :cond_c

    .line 122
    :cond_a
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 123
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v8, v8, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v8, :cond_b

    sget v8, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_6

    .line 124
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v8

    :goto_6
    invoke-direct {v7, v2, v8, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    :cond_c
    move-object v11, v7

    .line 126
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v4, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v3, :cond_d

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v4, :cond_d

    move v12, v6

    goto :goto_7

    :cond_d
    move v12, v5

    :goto_7
    if-eqz v3, :cond_e

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v3, :cond_e

    move v13, v6

    goto :goto_8

    :cond_e
    move v13, v5

    :goto_8
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v15, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object v8, v2

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 132
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V

    goto :goto_c

    .line 134
    :cond_f
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v7

    invoke-direct {v10, v2, v7, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 136
    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 137
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v7, v7, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v7, :cond_10

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_9

    .line 138
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v7

    :goto_9
    invoke-direct {v11, v2, v7, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 139
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v4, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v3, :cond_11

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v4, :cond_11

    move v12, v6

    goto :goto_a

    :cond_11
    move v12, v5

    :goto_a
    if-eqz v3, :cond_12

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v3, :cond_12

    move v13, v6

    goto :goto_b

    :cond_12
    move v13, v5

    :goto_b
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v15, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object v8, v2

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 145
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V

    :goto_c
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/settingslib/SignalIcon$State;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 0

    .line 79
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 269
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public fetchInitialState()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->fetchInitialState()V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method isCarrierMergedWifi(I)Z
    .locals 1

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :goto_0
    return-void
.end method

.method notifyWifiLevelChangeIfNecessary(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    if-eq p1, v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyWifiLevelChange(I)V

    :cond_0
    return-void
.end method

.method refreshLocale()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 262
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
