.class public final Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ContextHubMessages.java"


# instance fields
.field public progressReportThreshold:F

.field public sensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    .line 175
    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 196
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 197
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    .line 198
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    .line 199
    iget v3, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    .line 200
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 203
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    .line 204
    iget p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    .line 205
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 220
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

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

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;

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

    .line 183
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 184
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 185
    iget v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 187
    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 188
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 189
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 191
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
