.class public final Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SnapshotProtos.java"


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;


# instance fields
.field public events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

.field public header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

.field public sensitivitySetting:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->clear()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    return-void
.end method

.method public static emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;
    .locals 2

    .line 156
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-nez v0, :cond_1

    .line 157
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    .line 160
    sput-object v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    .line 162
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    .line 182
    invoke-static {}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    const/4 v0, -0x1

    .line 184
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 211
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 214
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 218
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 221
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 226
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 227
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    .line 228
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    .line 243
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    goto :goto_0

    .line 257
    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 259
    new-array v4, v0, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    if-eqz v3, :cond_4

    .line 262
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5

    .line 265
    new-instance v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    invoke-direct {v1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;-><init>()V

    aput-object v1, v4, v3

    .line 266
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 267
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 270
    :cond_5
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;-><init>()V

    aput-object v0, v4, v3

    .line 271
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 272
    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    goto :goto_0

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    if-nez v0, :cond_7

    .line 250
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

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

    .line 191
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 192
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->events:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 196
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 198
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_2
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 203
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x3

    .line 204
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 206
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
