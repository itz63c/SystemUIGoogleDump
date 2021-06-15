.class public final Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;
.super Ljava/lang/Object;
.source "IWirelessCharger.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_3/IWirelessCharger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/google/wireless_charger/V1_3/IWirelessCharger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 270
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public challenge(BLjava/util/ArrayList;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.0::IWirelessCharger"

    .line 364
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 366
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 368
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 370
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 371
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 372
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 374
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0

    .line 375
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 376
    invoke-interface {p3, p0, p2}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger$challengeCallback;->onValues(BLjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 379
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 285
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFanInformation(BLvendor/google/wireless_charger/V1_3/IWirelessCharger$getFanInformationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.3::IWirelessCharger"

    .line 719
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 722
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 724
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 725
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 726
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 728
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0

    .line 729
    new-instance v0, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;

    invoke-direct {v0}, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;-><init>()V

    .line 730
    invoke-virtual {v0, p1}, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 731
    invoke-interface {p2, p0, v0}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$getFanInformationCallback;->onValues(BLvendor/google/wireless_charger/V1_3/FanDetailedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 734
    throw p0
.end method

.method public getInformation(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$getInformationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.0::IWirelessCharger"

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 325
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 326
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 327
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 329
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0

    .line 330
    new-instance v0, Lvendor/google/wireless_charger/V1_0/DockInfo;

    invoke-direct {v0}, Lvendor/google/wireless_charger/V1_0/DockInfo;-><init>()V

    .line 331
    invoke-virtual {v0, v1}, Lvendor/google/wireless_charger/V1_0/DockInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 332
    invoke-interface {p1, p0, v0}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger$getInformationCallback;->onValues(BLvendor/google/wireless_charger/V1_0/DockInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 335
    throw p0
.end method

.method public getRtxInformation(Lvendor/google/wireless_charger/V1_2/IWirelessCharger$getRtxInformationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.2::IWirelessCharger"

    .line 677
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 681
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 682
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 683
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 685
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0

    .line 686
    new-instance v0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;

    invoke-direct {v0}, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;-><init>()V

    .line 687
    invoke-virtual {v0, v1}, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 688
    invoke-interface {p1, p0, v0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger$getRtxInformationCallback;->onValues(BLvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 691
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 290
    invoke-virtual {p0}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 807
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 811
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 812
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 813
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 815
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 819
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 844
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 848
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 849
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 850
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 852
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 856
    throw p0
.end method

.method public isDockPresent(Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.0::IWirelessCharger"

    .line 298
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 302
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 303
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 306
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 307
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8()B

    move-result v6

    .line 308
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8()B

    move-result v7

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    .line 310
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object v4, p1

    .line 311
    invoke-interface/range {v4 .. v9}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger$isDockPresentCallback;->onValues(ZBBZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 314
    throw p0
.end method

.method public isRtxSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.2::IWirelessCharger"

    .line 639
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 643
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 644
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 645
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 647
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 651
    throw p0
.end method

.method public keyExchange(Ljava/util/ArrayList;Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.0::IWirelessCharger"

    .line 342
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 345
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 347
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 348
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 349
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 351
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0

    .line 352
    new-instance v0, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;

    invoke-direct {v0}, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;-><init>()V

    .line 353
    invoke-virtual {v0, p1}, Lvendor/google/wireless_charger/V1_0/KeyExchangeResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 354
    invoke-interface {p2, p0, v0}, Lvendor/google/wireless_charger/V1_0/IWirelessCharger$keyExchangeCallback;->onValues(BLvendor/google/wireless_charger/V1_0/KeyExchangeResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 357
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public registerCallback(Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.1::IWirelessCharger"

    .line 537
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 538
    :cond_0
    invoke-interface {p1}, Lvendor/google/wireless_charger/V1_1/IWirelessChargerInfoCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 540
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 542
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 543
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 544
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 546
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 550
    throw p0
.end method

.method public registerRtxCallback(Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.2::IWirelessCharger"

    .line 599
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 600
    :cond_0
    invoke-interface {p1}, Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 602
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 604
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 605
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 606
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 608
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 612
    throw p0
.end method

.method public setFan(BBSLvendor/google/wireless_charger/V1_3/IWirelessCharger$setFanCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.3::IWirelessCharger"

    .line 763
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 765
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 766
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 768
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 770
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 771
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 774
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0

    .line 775
    new-instance p2, Lvendor/google/wireless_charger/V1_3/FanInfo;

    invoke-direct {p2}, Lvendor/google/wireless_charger/V1_3/FanInfo;-><init>()V

    .line 776
    invoke-virtual {p2, p1}, Lvendor/google/wireless_charger/V1_3/FanInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 777
    invoke-interface {p4, p0, p2}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$setFanCallback;->onValues(BLvendor/google/wireless_charger/V1_3/FanInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 780
    throw p0
.end method

.method public setRtxMode(Z)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "vendor.google.wireless_charger@1.2::IWirelessCharger"

    .line 698
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 701
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 703
    :try_start_0
    iget-object p0, p0, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 704
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 705
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 707
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt8()B

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 711
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 276
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/google/wireless_charger/V1_3/IWirelessCharger$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "[class or subclass of vendor.google.wireless_charger@1.3::IWirelessCharger]@Proxy"

    return-object p0
.end method
