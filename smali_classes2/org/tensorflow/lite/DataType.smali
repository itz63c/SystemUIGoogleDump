.class public final enum Lorg/tensorflow/lite/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/tensorflow/lite/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/tensorflow/lite/DataType;

.field public static final enum FLOAT32:Lorg/tensorflow/lite/DataType;

.field public static final enum INT32:Lorg/tensorflow/lite/DataType;

.field public static final enum INT64:Lorg/tensorflow/lite/DataType;

.field public static final enum STRING:Lorg/tensorflow/lite/DataType;

.field public static final enum UINT8:Lorg/tensorflow/lite/DataType;

.field private static final values:[Lorg/tensorflow/lite/DataType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 21
    new-instance v0, Lorg/tensorflow/lite/DataType;

    const-string v1, "FLOAT32"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    .line 24
    new-instance v1, Lorg/tensorflow/lite/DataType;

    const-string v4, "INT32"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    .line 27
    new-instance v4, Lorg/tensorflow/lite/DataType;

    const-string v6, "UINT8"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    .line 30
    new-instance v6, Lorg/tensorflow/lite/DataType;

    const-string v8, "INT64"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    .line 33
    new-instance v8, Lorg/tensorflow/lite/DataType;

    const-string v10, "STRING"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    new-array v10, v11, [Lorg/tensorflow/lite/DataType;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 19
    sput-object v10, Lorg/tensorflow/lite/DataType;->$VALUES:[Lorg/tensorflow/lite/DataType;

    .line 98
    invoke-static {}, Lorg/tensorflow/lite/DataType;->values()[Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/DataType;->values:[Lorg/tensorflow/lite/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lorg/tensorflow/lite/DataType;->value:I

    return-void
.end method

.method static fromC(I)Lorg/tensorflow/lite/DataType;
    .locals 5

    .line 66
    sget-object v0, Lorg/tensorflow/lite/DataType;->values:[Lorg/tensorflow/lite/DataType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    iget v4, v3, Lorg/tensorflow/lite/DataType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataType error: DataType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not recognized in Java (version "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->runtimeVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/lite/DataType;
    .locals 1

    .line 19
    const-class v0, Lorg/tensorflow/lite/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/tensorflow/lite/DataType;

    return-object p0
.end method

.method public static values()[Lorg/tensorflow/lite/DataType;
    .locals 1

    .line 19
    sget-object v0, Lorg/tensorflow/lite/DataType;->$VALUES:[Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, [Lorg/tensorflow/lite/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/lite/DataType;

    return-object v0
.end method


# virtual methods
.method public byteSize()I
    .locals 4

    .line 43
    sget-object v0, Lorg/tensorflow/lite/DataType$1;->$SwitchMap$org$tensorflow$lite$DataType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataType error: DataType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported yet"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    return v1

    :cond_3
    return v2
.end method
