.class public final Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SmartspaceProto.java"


# instance fields
.field public card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

.field public gsaUpdateTime:J

.field public gsaVersionCode:I

.field public icon:[B

.field public isIconGrayscale:Z

.field public publishTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1231
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1232
    invoke-virtual {p0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 2

    const/4 v0, 0x0

    .line 1236
    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    const-wide/16 v0, 0x0

    .line 1237
    iput-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    .line 1238
    iput-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    const/4 v0, 0x0

    .line 1239
    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    .line 1240
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1241
    iput-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    const/4 v0, -0x1

    .line 1242
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 1272
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1273
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1275
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1277
    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .line 1279
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1281
    :cond_1
    iget-wide v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    .line 1283
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1285
    :cond_2
    iget v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 1287
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1289
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 1290
    iget-object v2, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    .line 1291
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1293
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    .line 1295
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 1310
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1339
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    goto :goto_0

    .line 1335
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    goto :goto_0

    .line 1331
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    goto :goto_0

    .line 1327
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    goto :goto_0

    .line 1323
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    goto :goto_0

    .line 1316
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-nez v0, :cond_7

    .line 1317
    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    .line 1319
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

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

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->card:Lcom/android/systemui/smartspace/nano/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1250
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1252
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->publishTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 1253
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1255
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaUpdateTime:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 1256
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1258
    :cond_2
    iget v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->gsaVersionCode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1259
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1261
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 1262
    iget-object v1, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1264
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;->isIconGrayscale:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 1265
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1267
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
