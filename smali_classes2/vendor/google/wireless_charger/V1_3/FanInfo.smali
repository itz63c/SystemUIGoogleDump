.class public final Lvendor/google/wireless_charger/V1_3/FanInfo;
.super Ljava/lang/Object;
.source "FanInfo.java"


# instance fields
.field public currentRpm:S

.field public fanMode:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    .line 12
    iput-short v0, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/google/wireless_charger/V1_3/FanInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 25
    :cond_2
    check-cast p1, Lvendor/google/wireless_charger/V1_3/FanInfo;

    .line 26
    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    if-eq v2, v3, :cond_3

    return v1

    .line 29
    :cond_3
    iget-short p0, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    iget-short p1, p1, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    .line 38
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short p0, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    .line 39
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    const-wide/16 v0, 0x2

    add-long/2addr p3, v0

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x4

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 56
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/google/wireless_charger/V1_3/FanInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fanMode = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    invoke-static {v1}, Lvendor/google/wireless_charger/V1_3/FanMode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .currentRpm = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-short p0, p0, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
