.class public final Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChassisProtos.java"


# instance fields
.field public defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

.field public sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->clear()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 306
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;
    .locals 1

    .line 193
    invoke-static {}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    .line 194
    invoke-static {}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->emptyArray()[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    const/4 v0, -0x1

    .line 195
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 223
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 226
    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 229
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 235
    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    .line 238
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 255
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 282
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 284
    new-array v4, v0, [Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-eqz v3, :cond_3

    .line 287
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 290
    new-instance v1, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    invoke-direct {v1}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;-><init>()V

    aput-object v1, v4, v3

    .line 291
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 292
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 295
    :cond_4
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;-><init>()V

    aput-object v0, v4, v3

    .line 296
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 297
    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    goto :goto_0

    .line 262
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    if-nez v1, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    array-length v3, v1

    :goto_3
    add-int/2addr v0, v3

    .line 264
    new-array v4, v0, [Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    if-eqz v3, :cond_7

    .line 267
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    .line 270
    new-instance v1, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    invoke-direct {v1}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;-><init>()V

    aput-object v1, v4, v3

    .line 271
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 272
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 275
    :cond_8
    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;-><init>()V

    aput-object v0, v4, v3

    .line 276
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 277
    iput-object v4, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    goto/16 :goto_0

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

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

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

    .line 202
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 204
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 206
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->defaultFilters:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 212
    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 214
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
