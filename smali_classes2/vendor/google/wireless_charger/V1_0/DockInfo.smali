.class public final Lvendor/google/wireless_charger/V1_0/DockInfo;
.super Ljava/lang/Object;
.source "DockInfo.java"


# instance fields
.field public isGetInfoSupported:Z

.field public manufacturer:Ljava/lang/String;

.field public maxFwSize:I

.field public model:Ljava/lang/String;

.field public orientation:B

.field public serial:Ljava/lang/String;

.field public type:B

.field public version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->maxFwSize:I

    .line 47
    iput-boolean v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->isGetInfoSupported:Z

    .line 48
    new-instance v1, Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    invoke-direct {v1}, Lvendor/google/wireless_charger/V1_0/FirmwareVersion;-><init>()V

    iput-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    .line 49
    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->orientation:B

    .line 50
    iput-byte v0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

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

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/google/wireless_charger/V1_0/DockInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 63
    :cond_2
    check-cast p1, Lvendor/google/wireless_charger/V1_0/DockInfo;

    .line 64
    iget-object v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    iget-object v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 67
    :cond_3
    iget-object v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    iget-object v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 70
    :cond_4
    iget-object v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    iget-object v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 73
    :cond_5
    iget v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->maxFwSize:I

    iget v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->maxFwSize:I

    if-eq v2, v3, :cond_6

    return v1

    .line 76
    :cond_6
    iget-boolean v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->isGetInfoSupported:Z

    iget-boolean v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->isGetInfoSupported:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 79
    :cond_7
    iget-object v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    iget-object v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 82
    :cond_8
    iget-byte v2, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->orientation:B

    iget-byte v3, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->orientation:B

    if-eq v2, v3, :cond_9

    return v1

    .line 85
    :cond_9
    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    iget-byte p1, p1, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    if-eq p0, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    .line 94
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    .line 95
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->maxFwSize:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->isGetInfoSupported:Z

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    .line 99
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->orientation:B

    .line 100
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    .line 101
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 93
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 156
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    .line 159
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    .line 158
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    .line 163
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    .line 166
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 165
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    .line 170
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    .line 173
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 172
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->maxFwSize:I

    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->isGetInfoSupported:Z

    .line 179
    iget-object v2, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    const-wide/16 v3, 0x38

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Lvendor/google/wireless_charger/V1_0/FirmwareVersion;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->orientation:B

    const-wide/16 v2, 0x51

    add-long v2, p3, v2

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x58

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 130
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/google/wireless_charger/V1_0/DockInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".manufacturer = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .model = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .serial = "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .maxFwSize = "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->maxFwSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .isGetInfoSupported = "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-boolean v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->isGetInfoSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .version = "

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->version:Lvendor/google/wireless_charger/V1_0/FirmwareVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .orientation = "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->orientation:B

    invoke-static {v1}, Lvendor/google/wireless_charger/V1_0/Orientation;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_0/DockInfo;->type:B

    invoke-static {p0}, Lvendor/google/wireless_charger/V1_0/DockType;->toString(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
