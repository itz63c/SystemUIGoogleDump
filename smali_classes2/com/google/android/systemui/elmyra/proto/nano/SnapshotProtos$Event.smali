.class public final Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SnapshotProtos.java"


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;


# instance fields
.field private typesCase_:I

.field private types_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 474
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    .line 475
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->clear()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    return-void
.end method

.method public static emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;
    .locals 2

    .line 430
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    if-nez v0, :cond_1

    .line 431
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    sget-object v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    .line 434
    sput-object v1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    .line 436
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 438
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->clearTypes()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    const/4 v0, -0x1

    .line 480
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clearTypes()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 500
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 501
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 502
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    .line 503
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 507
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 509
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 508
    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getGestureStage()I
    .locals 2

    .line 463
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 464
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSensorEvent()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;
    .locals 2

    .line 446
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasGestureStage()Z
    .locals 1

    .line 460
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSensorEvent()Z
    .locals 1

    .line 443
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 524
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 540
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    goto :goto_0

    .line 530
    :cond_2
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 531
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$SensorEvent;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 535
    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 491
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->typesCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Event;->types_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 492
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnum(II)V

    .line 495
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
