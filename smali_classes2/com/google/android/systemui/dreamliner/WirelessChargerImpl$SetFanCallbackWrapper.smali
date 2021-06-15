.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_3/IWirelessCharger$setFanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetFanCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;

.field private final mFanId:B


# direct methods
.method public constructor <init>(BLcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-byte p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;->mFanId:B

    .line 363
    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;

    return-void
.end method

.method private convertFanIo(Lvendor/google/wireless_charger/V1_3/FanInfo;)Landroid/os/Bundle;
    .locals 2

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    iget-byte p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;->mFanId:B

    const-string v1, "fan_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 379
    iget-byte p0, p1, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    const-string v1, "fan_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 380
    iget-short p0, p1, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    const-string p1, "fan_current_rpm"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public onValues(BLvendor/google/wireless_charger/V1_3/FanInfo;)V
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command=1, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;->mFanId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p2, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p2, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dreamliner-WLC_HAL"

    .line 368
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$SetFanCallbackWrapper;->convertFanIo(Lvendor/google/wireless_charger/V1_3/FanInfo;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;->onCallback(ILandroid/os/Bundle;)V

    return-void
.end method
