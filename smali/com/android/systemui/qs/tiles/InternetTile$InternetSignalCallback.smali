.class public final Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;
.super Ljava/lang/Object;
.source "InternetTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/InternetTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "InternetSignalCallback"
.end annotation


# instance fields
.field final mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

.field final mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

.field final mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/InternetTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/InternetTile;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/InternetTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 232
    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/InternetTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 233
    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/InternetTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    return-void
.end method


# virtual methods
.method public setConnectivityStatus(ZZZ)V
    .locals 3

    .line 352
    invoke-static {}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1800(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectivityStatus: noDefaultNetwork = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",noValidatedNetwork = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",noNetworksAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoDefaultNetwork:Z

    .line 359
    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoValidatedNetwork:Z

    .line 360
    iput-boolean p3, v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoNetworksAvailable:Z

    .line 361
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    .line 362
    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoValidatedNetwork:Z

    .line 363
    iput-boolean p3, v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    .line 364
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1900(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 3

    .line 309
    invoke-static {}, Lcom/android/systemui/qs/tiles/InternetTile;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1000(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEthernetIndicators: icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    .line 314
    iget v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v2, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    .line 315
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1100(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 3

    .line 338
    invoke-static {}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1500(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsAirplaneMode: icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mAirplaneModeEnabled:Z

    .line 343
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iput-boolean p1, v1, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    .line 344
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    if-nez p1, :cond_2

    .line 345
    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1600(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 11

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p9

    move/from16 v6, p12

    .line 274
    invoke-static {}, Lcom/android/systemui/qs/tiles/InternetTile;->access$600()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 275
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/InternetTile;->access$700(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileDataIndicators: statusIcon = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    if-nez p1, :cond_0

    move-object v10, v9

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",qsIcon = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    goto :goto_1

    .line 277
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",statusType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",qsType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",activityIn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",activityOut = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",typeContentDescription = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ",typeContentDescriptionHtml = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",description = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",isWide = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",subId = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",roaming = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",showTriangle = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p13

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object/from16 v9, p8

    :goto_2
    if-nez v1, :cond_3

    return-void

    .line 294
    :cond_3
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    if-nez v5, :cond_4

    .line 295
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    move-object v8, v5

    :goto_3
    iput-object v8, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataSubscriptionName:Ljava/lang/CharSequence;

    .line 296
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    if-eqz v5, :cond_5

    move-object v5, v9

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 297
    :goto_4
    iput-object v5, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    .line 298
    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    .line 299
    iput v2, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    .line 300
    iput-boolean v3, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mActivityIn:Z

    .line 301
    iput-boolean v4, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mActivityOut:Z

    .line 302
    iput-boolean v6, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    .line 303
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getNumberSubscriptions()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, v7, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMultipleSubs:Z

    .line 304
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$800(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 3

    .line 323
    invoke-static {}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$1300(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoSims: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",simDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoSim:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 331
    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    .line 332
    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    :cond_1
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 240
    invoke-static {}, Lcom/android/systemui/qs/tiles/InternetTile;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/InternetTile;->access$400(Lcom/android/systemui/qs/tiles/InternetTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIndicators: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",statusIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object p2, v2

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",qsIcon = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",activityIn = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",activityOut = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",description = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",isTransient = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",statusLabel = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p3, :cond_3

    return-void

    .line 256
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    iget-boolean v0, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mConnected:Z

    .line 257
    iget v0, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    .line 258
    iget-object p3, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p3, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    .line 259
    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    .line 260
    iput-object p6, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    .line 261
    iput-boolean p4, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mActivityIn:Z

    .line 262
    iput-boolean p5, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mActivityOut:Z

    .line 263
    iput-boolean p7, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    .line 264
    iput-object p8, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mStatusLabel:Ljava/lang/String;

    .line 265
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/InternetTile;

    invoke-static {p0, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->access$500(Lcom/android/systemui/qs/tiles/InternetTile;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InternetSignalCallback["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mWifiInfo="

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCellularInfo="

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mEthernetInfo="

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 373
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
