.class public final Lvendor/google/wireless_charger/V1_1/AlignInfo;
.super Ljava/lang/Object;
.source "AlignInfo.java"


# instance fields
.field public alignPct:B

.field public alignState:B

.field public alignX:I

.field public alignY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    .line 13
    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    .line 18
    iput v0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignX:I

    .line 23
    iput v0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignY:I

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

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/google/wireless_charger/V1_1/AlignInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;

    .line 37
    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    if-eq v2, v3, :cond_3

    return v1

    .line 40
    :cond_3
    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    if-eq v2, v3, :cond_4

    return v1

    .line 43
    :cond_4
    iget v2, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignX:I

    iget v3, p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignX:I

    if-eq v2, v3, :cond_5

    return v1

    .line 46
    :cond_5
    iget p0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignY:I

    iget p1, p1, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignY:I

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    .line 56
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignX:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignY:I

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 105
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignX:I

    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    .line 108
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignY:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xc

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 79
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/google/wireless_charger/V1_1/AlignInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".alignState = "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignState:B

    invoke-static {v1}, Lvendor/google/wireless_charger/V1_1/AlignState;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .alignPct = "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignPct:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .alignX = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .alignY = "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget p0, p0, Lvendor/google/wireless_charger/V1_1/AlignInfo;->alignY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
