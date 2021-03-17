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

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 50
    sget-object p3, Lcom/android/systemui/statusbar/policy/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 51
    sget-object p4, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    new-instance p4, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/policy/WifiSignalController-$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    move-object v0, p4

    move-object v2, p5

    move-object v3, p7

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 p6, 0x1

    .line 64
    invoke-virtual {p4, p6}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    .line 65
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz p5, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$1;)V

    invoke-virtual {p5, p1, p2}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mLastState:Lcom/android/settingslib/SignalIcon$State;

    check-cast p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iput-object p3, p2, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object p3, p1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    const-string p2, "settings_provider_model"

    invoke-static {p1, p2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mProviderModel:Z

    return-void
.end method

.method private copyWifiStates()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isDefaultNetwork:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    .line 203
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v3, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 204
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 205
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v1, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v1, v0, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    .line 206
    iget v0, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyWifiLevelChangeIfNecessary(I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v3, v1, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 208
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 209
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCarrierMerged:Z

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    .line 210
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->subId:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    .line 212
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mUnmergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    :goto_0
    iput-object p0, v1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void
.end method

.method private getCurrentIconIdForCarrierWifi()I
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 164
    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v3, :cond_1

    .line 165
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p0

    return p0

    .line 166
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz p0, :cond_2

    .line 167
    invoke-static {v1}, Lcom/android/settingslib/graph/SignalDrawable;->getEmptyState(I)I

    move-result p0

    return p0

    :cond_2
    return v4
.end method

.method private getQsCurrentIconIdForCarrierWifi()I
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result p0

    return p0
.end method

.method private handleStatusUpdated()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method private notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 18

    move-object/from16 v0, p0

    .line 132
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCarrierMergedWifiIconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    iget v3, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 137
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 136
    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v5, v5, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v5, :cond_0

    .line 139
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v11, v3

    .line 141
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v5, :cond_1

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    .line 144
    :goto_0
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconIdForCarrierWifi()I

    move-result v3

    invoke-direct {v5, v6, v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 146
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v6, :cond_2

    iget v6, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    move v8, v6

    goto :goto_1

    :cond_2
    move v8, v4

    .line 147
    :goto_1
    move-object v6, v3

    check-cast v6, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v6, v6, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v6, :cond_3

    iget v4, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    :cond_3
    move v7, v4

    .line 148
    new-instance v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getQsCurrentIconIdForCarrierWifi()I

    move-result v4

    invoke-direct {v6, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 150
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    .line 151
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getNetworkNameForCarrierWiFi(I)Ljava/lang/String;

    move-result-object v13

    .line 152
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v2, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v10, v2, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    iget-boolean v14, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v15, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->subId:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v17}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method private notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 16

    move-object/from16 v0, p0

    .line 95
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->config_showWifiIndicatorWhenEnabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 97
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-eq v3, v5, :cond_1

    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v4

    .line 101
    :goto_0
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    move-object v13, v3

    goto :goto_1

    :cond_3
    move-object v13, v6

    :goto_1
    if-eqz v1, :cond_4

    .line 102
    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v4

    .line 103
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getContentDescription()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v7, v7, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-nez v7, :cond_5

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    :cond_5
    new-instance v9, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v7

    invoke-direct {v9, v1, v7, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 108
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mProviderModel:Z

    if-eqz v1, :cond_b

    .line 110
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isDefault:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isRadioOn()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 111
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEthernetDefault()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move-object v10, v6

    goto :goto_6

    .line 112
    :cond_7
    :goto_4
    new-instance v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 113
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v7, v7, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v7, :cond_8

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_5

    .line 114
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v7

    :goto_5
    invoke-direct {v6, v1, v7, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    goto :goto_3

    .line 116
    :goto_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v8, v1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v2, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v1, :cond_9

    move v11, v5

    goto :goto_7

    :cond_9
    move v11, v4

    :goto_7
    if-eqz v2, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v1, :cond_a

    move v12, v5

    goto :goto_8

    :cond_a
    move v12, v4

    :goto_8
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v14, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_c

    .line 121
    :cond_b
    new-instance v10, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 122
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v6, v6, Lcom/android/settingslib/wifi/WifiStatusTracker;->isCaptivePortal:Z

    if-eqz v6, :cond_c

    sget v6, Lcom/android/systemui/R$drawable;->ic_qs_wifi_disconnected:I

    goto :goto_9

    .line 123
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getQsCurrentIconId()I

    move-result v6

    :goto_9
    invoke-direct {v10, v1, v6, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 124
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v8, v1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v2, :cond_d

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-eqz v1, :cond_d

    move v11, v5

    goto :goto_a

    :cond_d
    move v11, v4

    :goto_a
    if-eqz v2, :cond_e

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-eqz v1, :cond_e

    move v12, v5

    goto :goto_b

    :cond_e
    move v12, v4

    :goto_b
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v14, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    :goto_c
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/settingslib/SignalIcon$State;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 0

    .line 77
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public fetchInitialState()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->fetchInitialState()V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->copyWifiStates()V

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method isCarrierMergedWifi(I)Z
    .locals 1

    .line 223
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

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isCarrierMerged:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersForCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersForNonCarrierWifi(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :goto_0
    return-void
.end method

.method notifyWifiLevelChangeIfNecessary(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mCurrentState:Lcom/android/settingslib/SignalIcon$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/settingslib/SignalIcon$State;->level:I

    if-eq p1, v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyWifiLevelChange(I)V

    :cond_0
    return-void
.end method

.method refreshLocale()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method setActivity(I)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 229
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

    .line 231
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    iput-boolean v2, v0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
