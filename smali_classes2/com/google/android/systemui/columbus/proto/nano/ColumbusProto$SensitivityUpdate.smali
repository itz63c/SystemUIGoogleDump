.class public final Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ColumbusProto.java"


# instance fields
.field public sensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->clear()Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 166
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 167
    iget v1, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 168
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 169
    iget p0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    .line 170
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 185
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;

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

    .line 157
    iget v0, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 158
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 159
    iget v1, p0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method