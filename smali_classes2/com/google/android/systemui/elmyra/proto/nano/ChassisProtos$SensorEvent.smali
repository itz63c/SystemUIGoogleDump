.class public final Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChassisProtos.java"


# instance fields
.field public timestamp:J

.field public values:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 340
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;
    .locals 2

    const-wide/16 v0, 0x0

    .line 344
    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->timestamp:J

    .line 345
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    const/4 v0, -0x1

    .line 346
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 366
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 367
    iget-wide v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 369
    invoke-static {v4, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    .line 372
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 374
    array-length p0, p0

    mul-int/2addr p0, v4

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 389
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 400
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 402
    new-array v4, v0, [F

    if-eqz v3, :cond_3

    .line 404
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 407
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 408
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 411
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 412
    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    goto :goto_0

    .line 416
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 417
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 418
    div-int/lit8 v0, v0, 0x4

    .line 419
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    if-nez v3, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 420
    new-array v5, v0, [F

    if-eqz v4, :cond_7

    .line 422
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v4, v0, :cond_8

    .line 425
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 427
    :cond_8
    iput-object v5, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    .line 428
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 395
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->timestamp:J

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 354
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;->values:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    .line 358
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
