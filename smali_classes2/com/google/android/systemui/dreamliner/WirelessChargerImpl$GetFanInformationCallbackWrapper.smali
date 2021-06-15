.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_3/IWirelessCharger$getFanInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GetFanInformationCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;

.field private final mFanId:B


# direct methods
.method public constructor <init>(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-byte p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;->mFanId:B

    .line 325
    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;

    return-void
.end method

.method private convertFanDetailedInfo(Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;)Landroid/os/Bundle;
    .locals 2

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    iget-byte p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;->mFanId:B

    const-string v1, "fan_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 347
    iget-byte p0, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    const-string v1, "fan_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 348
    iget-short p0, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    const-string v1, "fan_current_rpm"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    iget-short p0, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    const-string v1, "fan_min_rpm"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    iget-short p0, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    const-string v1, "fan_max_rpm"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget-byte p0, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    const-string v1, "fan_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 352
    iget-byte p0, p1, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    const-string p1, "fan_count"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object v0
.end method


# virtual methods
.method public onValues(BLvendor/google/wireless_charger/V1_3/FanDetailedInfo;)V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command=0, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;->mFanId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p2, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->fanMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p2, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->currentRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p2, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->minimumRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mxr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p2, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->maximumRpm:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p2, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p2, Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;->count:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dreamliner-WLC_HAL"

    .line 330
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    .line 341
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanInformationCallbackWrapper;->convertFanDetailedInfo(Lvendor/google/wireless_charger/V1_3/FanDetailedInfo;)Landroid/os/Bundle;

    move-result-object p0

    .line 340
    invoke-interface {v0, p1, p0}, Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;->onCallback(ILandroid/os/Bundle;)V

    return-void
.end method
