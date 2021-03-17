.class public final Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SnapshotProtos.java"


# instance fields
.field public feedback:I

.field public gestureType:I

.field public identifier:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->clear()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;
    .locals 2

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    .line 53
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 75
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 76
    iget-wide v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 78
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 82
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_1
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    .line 86
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 101
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 118
    :cond_4
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

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

    .line 61
    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 64
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 70
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
