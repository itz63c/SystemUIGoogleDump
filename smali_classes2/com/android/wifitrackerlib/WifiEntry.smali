.class public Lcom/android/wifitrackerlib/WifiEntry;
.super Ljava/lang/Object;
.source "WifiEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;,
        Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;,
        Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/wifitrackerlib/WifiEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mCalledConnect:Z

.field protected mCalledDisconnect:Z

.field protected mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

.field protected mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

.field protected mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

.field final mForSavedNetworksPage:Z

.field private mIsDefaultNetwork:Z

.field protected mIsLowQuality:Z

.field private mIsValidated:Z

.field protected mLevel:I

.field private mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

.field private mManageSubscriptionAction:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "*>;"
        }
    .end annotation
.end field

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected mSpeed:I

.field protected mWifiInfo:Landroid/net/wifi/WifiInfo;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$YZzJvcD9N68jVndE-VlQDrkIhB0(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$eqfWnISjXdKbW3zp4Le352nvlVY(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$updateConnectionInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kmbO9H7mcWhXu3mRNT2ZQpalNUE(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$notifyOnUpdated$0()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 229
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    .line 241
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 248
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    const-string v0, "Cannot construct with null handler!"

    .line 253
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct with null WifiManager!"

    .line 254
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 256
    iput-boolean p4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForSavedNetworksPage:Z

    .line 257
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 258
    iput-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    return-void
.end method

.method private synthetic lambda$notifyOnUpdated$0()V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    if-eqz p0, :cond_0

    .line 650
    invoke-interface {p0}, Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;->onUpdated()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$1()V
    .locals 1

    .line 781
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 782
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$2()V
    .locals 1

    .line 805
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 806
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public compareTo(Lcom/android/wifitrackerlib/WifiEntry;)I
    .locals 4

    .line 952
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v2

    .line 959
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 960
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 962
    :cond_3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 963
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 965
    :cond_5
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 966
    :cond_6
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 968
    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v3

    if-le v0, v3, :cond_8

    return v1

    .line 969
    :cond_8
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_9

    return v2

    .line 971
    :cond_9
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 67
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->compareTo(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p0

    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 976
    instance-of v0, p1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    return-object p0
.end method

.method public getConnectedState()I
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 276
    :cond_0
    sget-object v1, Lcom/android/wifitrackerlib/WifiEntry$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpUriString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    .line 324
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    return p0
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNetworkCapabilityDescription()Ljava/lang/String;
    .locals 3

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "isValidated:"

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultNetwork:"

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLowQuality:"

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    .line 608
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 610
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSpeed()I
    .locals 0

    .line 346
    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method getWifiInfoDescription()Ljava/lang/String;
    .locals 7

    .line 886
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 887
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 889
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 893
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "score = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 896
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " tx=%.1f,"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v2, v1, [Ljava/lang/Object;

    .line 897
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%.1f,"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v2, v1, [Ljava/lang/Object;

    .line 898
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%.1f "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-array v1, v1, [Ljava/lang/Object;

    .line 899
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "rx=%.1f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 901
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected notifyOnUpdated()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setIsDefaultNetwork(Z)V
    .locals 0

    .line 864
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 865
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method setIsLowQuality(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    return-void
.end method

.method public setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    return-void
.end method

.method public shouldShowXLevelIcon()Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    if-nez v0, :cond_1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",title:"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",summary:"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSaved:"

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSubscription:"

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSuggestion:"

    .line 992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",level:"

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "X"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",security:"

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connected:"

    .line 999
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",connectedInfo:"

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isValidated:"

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDefaultNetwork:"

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 1006
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 767
    invoke-virtual {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 771
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 772
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p2

    const/16 v1, -0x7f

    if-eq p2, v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p2

    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 775
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {p2, p1}, Lcom/android/wifitrackerlib/Utils;->getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I

    move-result p2

    iput p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 778
    iget-boolean p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    if-eqz p2, :cond_1

    .line 779
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    .line 780
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    :cond_1
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez p2, :cond_2

    .line 789
    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {p2}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 791
    :cond_2
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    .line 792
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    .line 793
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p1

    iput p1, p2, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->wifiStandard:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 796
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 797
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 798
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 799
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 800
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 801
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsLowQuality:Z

    .line 802
    iget-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    if-eqz p1, :cond_4

    .line 803
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 804
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 812
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 818
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_1

    .line 825
    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 828
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 830
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 831
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;

    const/4 v4, 0x4

    :try_start_0
    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    aput-byte v6, v4, v1

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    .line 833
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 835
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 836
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    .line 835
    invoke-static {v4, v3}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 836
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    :cond_3
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 841
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 844
    :cond_4
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iput-object v0, v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 847
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 848
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    .line 849
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 850
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 856
    :cond_6
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda3;

    .line 857
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 859
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 819
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    .line 820
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 876
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 877
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x10

    .line 881
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsValidated:Z

    .line 882
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method
