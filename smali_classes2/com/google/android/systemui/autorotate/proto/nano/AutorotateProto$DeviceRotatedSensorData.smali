.class public final Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "AutorotateProto.java"


# instance fields
.field public header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

.field public sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->clear()Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;
    .locals 1

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    .line 283
    invoke-static {}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->emptyArray()[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    const/4 v0, -0x1

    .line 284
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 307
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 310
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 313
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 314
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 317
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 334
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 348
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 350
    new-array v4, v0, [Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    if-eqz v3, :cond_3

    .line 353
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 356
    new-instance v1, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    invoke-direct {v1}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;-><init>()V

    aput-object v1, v4, v3

    .line 357
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 358
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 361
    :cond_4
    new-instance v0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    invoke-direct {v0}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;-><init>()V

    aput-object v0, v4, v3

    .line 362
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 363
    iput-object v4, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    goto :goto_0

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    if-nez v0, :cond_6

    .line 341
    new-instance v0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    invoke-direct {v0}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 292
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 296
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 298
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
