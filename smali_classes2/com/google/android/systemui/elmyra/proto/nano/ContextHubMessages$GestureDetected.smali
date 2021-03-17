.class public final Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ContextHubMessages.java"


# instance fields
.field public hapticConsumed:Z

.field public hostSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 510
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;
    .locals 1

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    .line 450
    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    const/4 v0, -0x1

    .line 451
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 469
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 470
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 472
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    .line 476
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 491
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 501
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;

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

    .line 458
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 459
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 461
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 462
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 464
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
