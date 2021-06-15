.class public final Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;
.super Lcom/google/protobuf/nano/MessageNano;
.source "AutorotateProto.java"


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;


# instance fields
.field public sensorType:I

.field public timestampOffset:I

.field public xValue:F

.field public yValue:F

.field public zValue:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->clear()Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    return-void
.end method

.method public static emptyArray()[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;
    .locals 2

    .line 103
    sget-object v0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->_emptyArray:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->_emptyArray:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    .line 107
    sput-object v1, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->_emptyArray:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->_emptyArray:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

    .line 135
    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    .line 137
    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    .line 138
    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 169
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 170
    iget v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 172
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 176
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :cond_1
    iget v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 179
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_2

    const/4 v1, 0x3

    .line 180
    iget v3, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    .line 181
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_2
    iget v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 184
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    const/4 v1, 0x4

    .line 185
    iget v3, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    .line 186
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_3
    iget v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 189
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 190
    iget p0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    .line 191
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x25

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    .line 206
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 221
    :cond_5
    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    goto :goto_0

    .line 212
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

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

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

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

    .line 146
    iget v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 149
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 150
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 152
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 153
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x3

    .line 154
    iget v2, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 156
    :cond_2
    iget v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 157
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x4

    .line 158
    iget v2, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 160
    :cond_3
    iget v0, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 161
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 162
    iget v1, p0, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 164
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
