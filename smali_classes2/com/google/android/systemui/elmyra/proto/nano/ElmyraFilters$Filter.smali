.class public final Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ElmyraFilters.java"


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;


# instance fields
.field private parametersCase_:I

.field private parameters_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    .line 514
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    return-void
.end method

.method public static emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;
    .locals 2

    .line 434
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-nez v0, :cond_1

    .line 435
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    sget-object v1, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    .line 438
    sput-object v1, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    .line 440
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 442
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->_emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->clearParameters()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    const/4 v0, -0x1

    .line 519
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public clearParameters()Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;
    .locals 1

    const/4 v0, 0x0

    .line 426
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 547
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 548
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 549
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    .line 550
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 554
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    .line 555
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 558
    :cond_1
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 559
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    .line 560
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_2
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 564
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast p0, Lcom/google/protobuf/nano/MessageNano;

    .line 565
    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 581
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 614
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 615
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$MedianFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$MedianFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 619
    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    .line 605
    :cond_3
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 606
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    .line 608
    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 610
    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    .line 596
    :cond_5
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 597
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$HighpassFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$HighpassFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    .line 599
    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 601
    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    .line 587
    :cond_7
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 588
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    .line 590
    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 592
    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

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

    .line 526
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 530
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 534
    :cond_1
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 535
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 538
    :cond_2
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 539
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 542
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
