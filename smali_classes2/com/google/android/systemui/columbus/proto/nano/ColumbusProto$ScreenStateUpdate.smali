.class public final Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ColumbusProto.java"


# instance fields
.field public screenState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->clear()Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;
    .locals 1

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->screenState:I

    const/4 v0, -0x1

    .line 327
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 343
    iget p0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->screenState:I

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 345
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 360
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 366
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    iput v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->screenState:I

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

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;

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

    .line 334
    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->screenState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 335
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 337
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
